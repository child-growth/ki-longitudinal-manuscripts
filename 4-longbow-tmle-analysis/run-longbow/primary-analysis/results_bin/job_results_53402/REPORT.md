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

agecat      studyid                    country                        mhtcm           stunted   n_cell       n
----------  -------------------------  -----------------------------  -------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       19     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        3     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      115     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       30     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       48     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        7     222
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0       31      64
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        1      64
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       14      64
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        6      64
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       10      64
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        2      64
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              0       10      43
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              1        2      43
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               0       15      43
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               1        5      43
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          0        9      43
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        2      43
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              0        6      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               0       12      27
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               1        1      27
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0        7      27
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        1      27
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              0       45     226
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              1        3     226
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               0      112     226
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               1       19     226
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          0       43     226
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          1        4     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0       74     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1        6     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0        8     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        2     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       10     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        1     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       62     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       10     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       16     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        5     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       22     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7     122
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      374    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1       93    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      240    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1      145    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      201    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       82    1135
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0      100     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       11     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      289     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1       67     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      122     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       19     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      102     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        8     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      254     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1       32     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      114     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1        7     517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      119     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1       15     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      355     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       63     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      154     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       23     729
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              0     1130    1431
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              1       57    1431
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               0       46    1431
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               1        5    1431
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          0      182    1431
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          1       11    1431
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              0    13174   13729
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              1       32   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               0      125   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               1        0   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          0      397   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          1        1   13729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     7005    9705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      727    9705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      482    9705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       78    9705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1259    9705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1      154    9705
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      104     840
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm              1        6     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm               0      513     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm               1       32     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      174     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       11     840
Birth       ki1135781-COHORTS          INDIA                          >=155 cm              0      497    1774
Birth       ki1135781-COHORTS          INDIA                          >=155 cm              1       33    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm               0      657    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm               1      106    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm          0      436    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm          1       45    1774
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      614    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       16    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1413    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      132    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      836    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1       39    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     2670   22356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      647   22356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     8258   22356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     5178   22356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     4076   22356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1     1527   22356
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        3     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      119     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       37     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       57     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        4     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      118     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        3     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       49     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       36     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              0       49     235
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              1        6     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               0       82     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               1       30     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       60     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        8     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       41     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               0      122     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               1       10     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       61     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        2     236
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              0       51     272
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              1        7     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm               0      116     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm               1       41     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          0       45     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          1       12     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      156     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       31     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       21     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1       10     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       22     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        9     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      122     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       25     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1       21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       39     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       13     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      408    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1      102    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      251    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1      170    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      215    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       82    1228
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              0       54     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              1       20     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               0       96     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               1      106     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          0       67     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          1       36     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       80     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       16     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      208     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1      103     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      105     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       25     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      117     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1       11     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      265     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1       65     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      126     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1       19     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      116     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1       18     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      310     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1      101     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      139     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       31     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1160    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       86    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      263    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1       46    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      383    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       58    1996
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              0     1375    1877
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              1      193    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm               0       47    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm               1       20    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          0      187    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          1       55    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              0       28     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              1        8     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               0       94     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               1       47     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          0       39     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          1       15     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              0    11811   13033
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              1      722   13033
6 months    ki1119695-PROBIT           BELARUS                        <151 cm               0      102   13033
6 months    ki1119695-PROBIT           BELARUS                        <151 cm               1       19   13033
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          0      340   13033
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          1       39   13033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     5037    7394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      851    7394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      296    7394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1      149    7394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0      854    7394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1      207    7394
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              0       93     943
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       24     943
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               0      331     943
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               1      298     943
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      133     943
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       64     943
6 months    ki1135781-COHORTS          INDIA                          >=155 cm              0      491    1819
6 months    ki1135781-COHORTS          INDIA                          >=155 cm              1       50    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm               0      614    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm               1      176    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          0      411    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          1       77    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      493    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       68    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               0      992    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      376    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      651    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1      128    2708
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              0      358     836
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              1      155     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               0       58     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               1       73     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          0      113     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          1       79     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     2389   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      271   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     6637   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     3160   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     3519   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      785   16761
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0       54     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       83     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       39     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1       14     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0       91     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        4     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       42     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              0       39     226
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              1       14     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               0       50     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               1       60     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       41     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          1       22     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               0       90     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               1       39     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       50     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1       11     228
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              0       37     201
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              1        9     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               0       62     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               1       53     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          0       28     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          1       12     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      122     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       58     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       16     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1       11     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       14     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1       13     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       45     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       81     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1       37     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       37     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       49     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       28     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0       86     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1      166     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0       50     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       50     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      102     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1       20     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      194     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1      121     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0       92     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1       48     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0       91     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        9     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      194     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       93     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0       97     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       30     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              0      920    1602
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              1      418    1602
24 months   ki1101329-Keneba           GAMBIA                         <151 cm               0       21    1602
24 months   ki1101329-Keneba           GAMBIA                         <151 cm               1       39    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          0      113    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          1       91    1602
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              0     3544    4005
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              1      315    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               0       22    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               1       13    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          0       97    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          1       14    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0      749    1374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      335    1374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0       44    1374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       54    1374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0      105    1374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       87    1374
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              0       54     994
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       72     994
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               0       89     994
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               1      570     994
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0       43     994
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1      166     994
24 months   ki1135781-COHORTS          INDIA                          >=155 cm              0      373    1819
24 months   ki1135781-COHORTS          INDIA                          >=155 cm              1      179    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm               0      277    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm               1      508    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          0      224    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          1      258    1819
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      279    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1      231    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               0      336    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      898    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      307    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1      394    2445
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              0      227     577
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              1      128     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               0       36     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               1       59     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          0       58     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          1       69     577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0      968    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      346    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     2060    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     3007    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     1345    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      873    8599


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/e8791f24-e788-44e5-8004-3c85fa55bdca/f2e77793-ed96-462f-ae61-d56f25ae951a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e8791f24-e788-44e5-8004-3c85fa55bdca/f2e77793-ed96-462f-ae61-d56f25ae951a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e8791f24-e788-44e5-8004-3c85fa55bdca/f2e77793-ed96-462f-ae61-d56f25ae951a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e8791f24-e788-44e5-8004-3c85fa55bdca/f2e77793-ed96-462f-ae61-d56f25ae951a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1388889   0.0586782   0.2190996
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2380952   0.0551794   0.4210111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2413793   0.0849930   0.3977656
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1943834   0.1485391   0.2402276
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3845668   0.3301427   0.4389908
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2915577   0.2341995   0.3489158
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0993552   0.0438575   0.1548528
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1888723   0.1481116   0.2296331
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1357133   0.0790820   0.1923446
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0727273   0.0241510   0.1213036
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1118881   0.0753193   0.1484570
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0578512   0.0162130   0.0994894
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1123734   0.0581183   0.1666285
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1505886   0.1161775   0.1849997
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1274786   0.0778574   0.1770998
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0480202   0.0358527   0.0601877
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0980392   0.0163982   0.1796803
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0569948   0.0242761   0.0897135
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0940065   0.0874998   0.1005133
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1376943   0.1089052   0.1664834
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1091568   0.0929449   0.1253687
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0545455   0.0120825   0.0970084
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0587156   0.0389666   0.0784646
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0594595   0.0253621   0.0935568
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0614690   0.0408794   0.0820586
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1408301   0.1162419   0.1654183
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0929382   0.0667096   0.1191669
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0244694   0.0124519   0.0364869
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0851054   0.0711762   0.0990345
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0451431   0.0310750   0.0592112
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1985579   0.1830193   0.2140964
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.3836694   0.3743471   0.3929918
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2743504   0.2611529   0.2875478
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1090909   0.0265244   0.1916574
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2678571   0.1856680   0.3500463
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1176471   0.0409054   0.1943887
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1206897   0.0366973   0.2046821
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.2611465   0.1923099   0.3299831
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.2105263   0.1044954   0.3165572
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1657754   0.1123679   0.2191830
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.3225806   0.1576927   0.4874686
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.2903226   0.1302150   0.4504302
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1731398   0.1121366   0.2341431
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4493034   0.3075220   0.5910848
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2921437   0.1667117   0.4175757
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2021492   0.1807605   0.2235379
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.4064662   0.3428371   0.4700953
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2818209   0.2371970   0.3264449
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2809189   0.1782485   0.3835893
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.5264573   0.4572417   0.5956730
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3450551   0.2509686   0.4391416
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1755593   0.0982447   0.2528738
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3327165   0.2802486   0.3851845
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1874331   0.1191123   0.2557538
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0838845   0.0359257   0.1318433
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1962120   0.1531057   0.2393182
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1332591   0.0786469   0.1878714
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1387159   0.0810663   0.1963654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.2481176   0.2062934   0.2899418
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1860441   0.1273966   0.2446917
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0689487   0.0548548   0.0830425
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1498062   0.1098383   0.1897741
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1318926   0.1004271   0.1633581
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1236999   0.1074342   0.1399657
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2847814   0.1746488   0.3949140
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.2222962   0.1693003   0.2752921
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2222222   0.0861215   0.3583229
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.3333333   0.2553549   0.4113117
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2777778   0.1580548   0.3975007
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0576024   0.0452549   0.0699498
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.1547743   0.1282322   0.1813164
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1027288   0.0668278   0.1386298
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1444476   0.1354652   0.1534300
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3380364   0.2940378   0.3820350
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1949144   0.1710172   0.2188117
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2039261   0.1304873   0.2773650
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4727939   0.4337302   0.5118576
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.3265229   0.2607453   0.3923005
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0924097   0.0680683   0.1167511
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2216401   0.1926038   0.2506764
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1586092   0.1260069   0.1912116
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1189050   0.0922311   0.1455790
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2755747   0.2518209   0.2993286
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1643934   0.1382146   0.1905722
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3035635   0.2637851   0.3433419
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.5556235   0.4693005   0.6419464
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.4145968   0.3441349   0.4850588
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1033752   0.0906753   0.1160751
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.3215934   0.3104258   0.3327609
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1831053   0.1710683   0.1951423
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2501278   0.1333131   0.3669424
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5333551   0.4391028   0.6276074
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3432912   0.2227262   0.4638561
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1956522   0.0807267   0.3105777
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4608696   0.3695386   0.5522006
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.3000000   0.1576325   0.4423675
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3243793   0.2559724   0.3927862
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.4155672   0.2241168   0.6070176
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.4807515   0.2859341   0.6755689
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3716013   0.2599051   0.4832976
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6553212   0.5965016   0.7141408
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5116036   0.4110287   0.6121785
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1615809   0.0952764   0.2278855
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3836727   0.3296623   0.4376830
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.3426786   0.2624572   0.4229000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0900000   0.0338548   0.1461452
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3240418   0.2698429   0.3782407
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2362205   0.1622750   0.3101660
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3127116   0.2878517   0.3375716
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.6534282   0.5294532   0.7774032
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4449433   0.3762638   0.5136227
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0816165   0.0502474   0.1129856
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.3735263   0.3177468   0.4293059
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1245503   0.0669381   0.1821626
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.3088999   0.2813861   0.3364137
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.5527500   0.4527870   0.6527130
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.4529032   0.3819442   0.5238623
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.5599660   0.4736456   0.6462864
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8648763   0.8387688   0.8909839
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7796591   0.7247066   0.8346117
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3294660   0.2908598   0.3680722
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.6444011   0.6109640   0.6778383
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.5347835   0.4903960   0.5791711
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4523017   0.4089349   0.4956686
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7270108   0.7020670   0.7519546
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5619055   0.5249983   0.5988126
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3615115   0.3112905   0.4117324
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.6273371   0.5265650   0.7281092
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.5457756   0.4579360   0.6336151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2649390   0.2371272   0.2927508
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.5927505   0.5777274   0.6077737
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.3949075   0.3711266   0.4186884


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1803279   0.1118253   0.2488304
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2819383   0.2495848   0.3142918
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0909091   0.0661046   0.1157136
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1385460   0.1134505   0.1636414
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0510133   0.0396094   0.0624171
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0988150   0.0928777   0.1047524
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0583333   0.0424744   0.0741923
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1037204   0.0895283   0.1179125
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3288603   0.3214821   0.3362385
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1872340   0.1372518   0.2372162
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2008032   0.1509453   0.2506612
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2882736   0.2624662   0.3140810
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4274406   0.3775694   0.4773119
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1575456   0.1284434   0.1866478
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0951904   0.0823123   0.1080685
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1427810   0.1269499   0.1586122
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3030303   0.2436375   0.3624232
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0598481   0.0470397   0.0726565
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1632405   0.1548158   0.1716651
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4093319   0.3779317   0.4407321
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1665750   0.1494477   0.1837024
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3672249   0.3345288   0.3999210
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2515363   0.2434210   0.2596516
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4247788   0.3601902   0.4893673
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3504274   0.2891665   0.4116882
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3275563   0.2892291   0.3658836
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3420724   0.3188343   0.3653105
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0853933   0.0554084   0.1153781
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3464338   0.3212647   0.3716029
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8128773   0.7886196   0.8371349
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5195162   0.4965500   0.5424825
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4436742   0.4031015   0.4842468
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4914525   0.4783104   0.5045946


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.7142857   0.6556608   4.482158
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.7379310   0.7296261   4.139661
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.9783934   1.5224398   2.570900
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.4999107   1.0723820   2.097883
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.9009817   1.0442138   3.460720
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.3659412   0.6800208   2.743733
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.5384615   0.7313825   3.236151
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.7954545   0.2979717   2.123517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.3400733   0.7848944   2.287946
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.1344195   0.6103592   2.108443
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.0416236   0.8549698   4.875292
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.1868921   0.6337132   2.222950
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4647316   1.1751776   1.825629
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.1611617   0.9856705   1.367898
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.0764526   0.4609940   2.513591
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0900901   0.4145183   2.866692
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.2910736   1.5701393   3.343027
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.5119517   0.9759206   2.342402
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.4780288   2.0729336   5.835539
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.8448773   1.0310581   3.301048
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.9322803   1.7815076   2.095813
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3817149   1.2614597   1.513434
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.4553571   1.0849998   5.556479
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.0784314   0.3970629   2.929043
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          2.1637853   1.0280615   4.554170
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.7443609   0.7388397   4.118343
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.9458897   1.0634406   3.560600
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.7513007   0.9246585   3.316959
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.5950320   1.6129112   4.175178
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.6873280   0.9671574   2.943756
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.0107237   1.6562507   2.441061
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.3941233   1.1043636   1.759909
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.8740544   1.2706049   2.764101
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2283086   0.7789133   1.936983
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.8951809   1.1878195   3.023785
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0676342   0.6028281   1.890826
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.3390735   1.2677726   4.315651
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.5886028   0.7856109   3.212352
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.7886747   1.1423162   2.800763
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.3411884   0.7964222   2.258584
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.1727206   1.5520942   3.041513
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.9129096   1.3969262   2.619482
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.3021951   1.5304143   3.463181
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.7970596   1.3690407   2.358895
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.5000000   0.7786878   2.889476
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.2500000   0.5911037   2.643360
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.6869434   2.1676037   3.330713
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.7834132   1.3344112   2.383495
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.3402007   2.0257881   2.703412
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3493782   1.1759689   1.548358
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          2.3184565   1.6026994   3.353867
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.6011819   1.0603418   2.417884
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.3984514   1.7875337   3.218160
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.7163704   1.2287338   2.397531
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.3176032   1.8222783   2.947565
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.3825603   1.0499792   1.820486
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.8303369   1.4939014   2.242539
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.3657664   1.1019999   1.692666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          3.1109343   2.7457702   3.524662
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.7712696   1.5431626   2.033095
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.1323306   1.2938362   3.514227
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.3724633   0.7633327   2.467673
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          2.3555556   1.2672529   4.378480
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.5333333   0.7205799   3.262804
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.2811151   0.7718403   2.126419
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.4820659   0.9378843   2.341994
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.7635060   1.2885905   2.413454
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.3767539   0.9604914   1.973418
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.3744925   1.5386423   3.664409
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.1207866   1.3215848   3.403290
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          3.6004642   1.8873878   6.868404
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          2.6246716   1.3060213   5.274724
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.0895553   1.7010035   2.566862
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.4228550   1.1961204   1.692569
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          4.5766032   2.9522755   7.094628
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.5260436   0.8086150   2.879997
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.7894147   1.4629157   2.188783
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.4661812   1.2244919   1.755575
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.5445158   1.3201398   1.807028
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.3923330   1.1754696   1.649206
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.9558957   1.7211658   2.222638
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.6231827   1.4063357   1.873466
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.6073581   1.4517779   1.779611
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2423244   1.1060060   1.395444
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.7353173   1.4023017   2.147417
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.5097047   1.2201881   1.867916
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.2373097   2.0138585   2.485554
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4905602   1.3225169   1.679956


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0414390   -0.0179952   0.1008731
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0875550    0.0592205   0.1158894
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0601843    0.0072103   0.1131583
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0181818   -0.0262120   0.0625756
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0261725   -0.0239600   0.0763051
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0029931   -0.0027067   0.0086929
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0048085    0.0016256   0.0079914
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0037879   -0.0359911   0.0435668
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0422514    0.0229592   0.0615435
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0368420    0.0243497   0.0493344
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1303024    0.1155097   0.1450951
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.0781431   -0.0001154   0.1564017
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0998986    0.0193802   0.1804169
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0350278    0.0025639   0.0674917
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0657266    0.0192756   0.1121775
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0861244    0.0589634   0.1132854
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1465217    0.0516905   0.2413529
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0925972    0.0196103   0.1655841
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0736611    0.0271396   0.1201827
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0710743    0.0166207   0.1255279
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0262417    0.0154175   0.0370659
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0190811    0.0105707   0.0275915
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0808081   -0.0467748   0.2083909
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0022457    0.0012104   0.0032810
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0187929    0.0139719   0.0236138
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2054058    0.1343740   0.2764376
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0741654    0.0511034   0.0972273
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0923209    0.0668102   0.1178317
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0636614    0.0369693   0.0903535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1481611    0.1355333   0.1607889
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1746510    0.0676075   0.2816944
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1725070    0.0646625   0.2803516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0260481   -0.0091830   0.0612791
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1971632    0.0948981   0.2994284
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1659754    0.1024756   0.2294752
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1668093    0.1088878   0.2247309
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0293608    0.0181299   0.0405917
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0037768    0.0005008   0.0070527
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0375339    0.0235499   0.0515179
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2529113    0.1744006   0.3314220
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1900502    0.1568712   0.2232292
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1706022    0.1322524   0.2089519
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0821627    0.0491788   0.1151466
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2265135    0.2012908   0.2517363


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2297980   -0.1697411   0.4928697
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3105465    0.1899325   0.4132019
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3772377   -0.0516707   0.6312222
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2000000   -0.4682360   0.5641028
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1889086   -0.2654134   0.4801151
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0586721   -0.0591796   0.1634109
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0486617    0.0160063   0.0802334
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0649351   -0.9385216   0.5489623
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4073583    0.1984051   0.5618434
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.6008996    0.3621098   0.7503001
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.3962242    0.3499759   0.4391820
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4173554   -0.1715170   0.7102263
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.4528736   -0.0471592   0.7141339
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1744385    0.0000171   0.3184365
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2751603    0.0602207   0.4409405
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2987592    0.2154938   0.3731870
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3427885    0.0794005   0.5308199
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3453103    0.0114476   0.5664179
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4675543    0.0905324   0.6882809
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.3387876    0.0260069   0.5511243
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2756759    0.1587242   0.3763694
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1336388    0.0734239   0.1899406
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2666667   -0.2999982   0.5863242
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0375234    0.0222024   0.0526043
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1151238    0.0855009   0.1437872
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.5018074    0.2959747   0.6474617
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4452369    0.2957025   0.5630226
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4370719    0.3060370   0.5433646
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1733580    0.0975146   0.2428277
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5890248    0.5383283   0.6341544
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4111575    0.0985158   0.6153727
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.4685664    0.0859712   0.6910145
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0743323   -0.0317484   0.1695061
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3466517    0.1374073   0.5051385
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.5067080    0.2757870   0.6639981
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.6495454    0.3626160   0.8073086
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0858321    0.0524240   0.1180623
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0442279   -0.0034297   0.0896220
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1083436    0.0670900   0.1477728
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3111310    0.2049984   0.4030948
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3658215    0.2979859   0.4271022
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2738820    0.2087504   0.3336523
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1851871    0.1067057   0.2567733
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4609062    0.4061636   0.5106025

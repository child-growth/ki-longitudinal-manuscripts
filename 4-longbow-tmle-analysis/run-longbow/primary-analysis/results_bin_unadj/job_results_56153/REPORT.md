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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mhtcm           stunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       19     222  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        3     222  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      115     222  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       30     222  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       48     222  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        7     222  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0       31      64  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        1      64  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       14      64  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        6      64  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       10      64  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        2      64  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              0       10      43  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              1        2      43  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               0       15      43  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               1        5      43  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          0        9      43  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        2      43  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              0        6      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               0       12      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               1        1      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0        7      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        1      27  stunted          
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              0       45     226  stunted          
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              1        3     226  stunted          
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               0      112     226  stunted          
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               1       19     226  stunted          
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          0       43     226  stunted          
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          1        4     226  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0       74     101  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1        6     101  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0        8     101  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        2     101  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       10     101  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        1     101  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       62     122  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       10     122  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       16     122  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        5     122  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       22     122  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7     122  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      374    1135  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1       93    1135  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      240    1135  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1      145    1135  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      201    1135  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       82    1135  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0      100     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       11     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      289     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1       67     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      122     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       19     608  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      102     517  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        8     517  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      254     517  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1       32     517  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      114     517  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1        7     517  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      119     729  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1       15     729  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      355     729  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       63     729  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      154     729  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       23     729  stunted          
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              0     1130    1431  stunted          
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              1       57    1431  stunted          
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               0       46    1431  stunted          
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               1        5    1431  stunted          
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          0      182    1431  stunted          
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          1       11    1431  stunted          
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              0    13174   13729  stunted          
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              1       32   13729  stunted          
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               0      125   13729  stunted          
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               1        0   13729  stunted          
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          0      397   13729  stunted          
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          1        1   13729  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     7005    9705  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      727    9705  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      482    9705  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       78    9705  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1259    9705  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1      154    9705  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      104     840  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm              1        6     840  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm               0      513     840  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm               1       32     840  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      174     840  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       11     840  stunted          
Birth       ki1135781-COHORTS          INDIA                          >=155 cm              0      497    1774  stunted          
Birth       ki1135781-COHORTS          INDIA                          >=155 cm              1       33    1774  stunted          
Birth       ki1135781-COHORTS          INDIA                          <151 cm               0      657    1774  stunted          
Birth       ki1135781-COHORTS          INDIA                          <151 cm               1      106    1774  stunted          
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm          0      436    1774  stunted          
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm          1       45    1774  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      614    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       16    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1413    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      132    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      836    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1       39    3050  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     2670   22356  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      647   22356  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     8258   22356  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     5178   22356  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     4076   22356  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1     1527   22356  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       21     241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        3     241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      119     241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       37     241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       57     241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        4     241  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      118     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        3     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       49     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        2     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       36     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        1     209  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              0       49     235  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              1        6     235  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               0       82     235  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               1       30     235  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       60     235  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        8     235  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       41     236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               0      122     236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               1       10     236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       61     236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        2     236  stunted          
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              0       51     272  stunted          
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              1        7     272  stunted          
6 months    ki0047075b-MAL-ED          PERU                           <151 cm               0      116     272  stunted          
6 months    ki0047075b-MAL-ED          PERU                           <151 cm               1       41     272  stunted          
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          0       45     272  stunted          
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          1       12     272  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      156     249  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       31     249  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       21     249  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1       10     249  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       22     249  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        9     249  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      122     247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       25     247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       27     247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1       21     247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       39     247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       13     247  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      408    1228  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1      102    1228  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      251    1228  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1      170    1228  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      215    1228  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       82    1228  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              0       54     379  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              1       20     379  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               0       96     379  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               1      106     379  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          0       67     379  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          1       36     379  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       80     537  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       16     537  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      208     537  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1      103     537  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      105     537  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       25     537  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      117     603  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1       11     603  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      265     603  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1       65     603  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      126     603  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1       19     603  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      116     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1       18     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      310     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1      101     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      139     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       31     715  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1160    1996  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       86    1996  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      263    1996  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1       46    1996  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      383    1996  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       58    1996  stunted          
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              0     1375    1877  stunted          
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              1      193    1877  stunted          
6 months    ki1101329-Keneba           GAMBIA                         <151 cm               0       47    1877  stunted          
6 months    ki1101329-Keneba           GAMBIA                         <151 cm               1       20    1877  stunted          
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          0      187    1877  stunted          
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          1       55    1877  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              0       28     231  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              1        8     231  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               0       94     231  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               1       47     231  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          0       39     231  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          1       15     231  stunted          
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              0    11811   13033  stunted          
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              1      722   13033  stunted          
6 months    ki1119695-PROBIT           BELARUS                        <151 cm               0      102   13033  stunted          
6 months    ki1119695-PROBIT           BELARUS                        <151 cm               1       19   13033  stunted          
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          0      340   13033  stunted          
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          1       39   13033  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     5037    7394  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      851    7394  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      296    7394  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1      149    7394  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0      854    7394  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1      207    7394  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              0       93     943  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       24     943  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               0      331     943  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               1      298     943  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      133     943  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       64     943  stunted          
6 months    ki1135781-COHORTS          INDIA                          >=155 cm              0      491    1819  stunted          
6 months    ki1135781-COHORTS          INDIA                          >=155 cm              1       50    1819  stunted          
6 months    ki1135781-COHORTS          INDIA                          <151 cm               0      614    1819  stunted          
6 months    ki1135781-COHORTS          INDIA                          <151 cm               1      176    1819  stunted          
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          0      411    1819  stunted          
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          1       77    1819  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      493    2708  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       68    2708  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               0      992    2708  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      376    2708  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      651    2708  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1      128    2708  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              0      358     836  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              1      155     836  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               0       58     836  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               1       73     836  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          0      113     836  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          1       79     836  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     2389   16761  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      271   16761  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     6637   16761  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     3160   16761  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     3519   16761  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      785   16761  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       18     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        4     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0       54     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       83     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       39     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1       14     212  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0       91     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        4     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       42     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        1     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       29     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        2     169  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              0       39     226  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              1       14     226  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               0       50     226  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               1       60     226  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       41     226  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          1       22     226  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       38     228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               0       90     228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               1       39     228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       50     228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1       11     228  stunted          
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              0       37     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              1        9     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               0       62     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               1       53     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          0       28     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          1       12     201  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      122     234  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       58     234  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       16     234  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1       11     234  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       14     234  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1       13     234  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       45     214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       81     214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0        3     214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1       37     214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       11     214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       37     214  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       49     429  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       28     429  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0       86     429  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1      166     429  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0       50     429  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       50     429  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      102     577  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1       20     577  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      194     577  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1      121     577  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0       92     577  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1       48     577  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0       91     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        9     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      194     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       93     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0       97     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       30     514  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0        3       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0        0       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        1       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0        2       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0       6  stunted          
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              0      920    1602  stunted          
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              1      418    1602  stunted          
24 months   ki1101329-Keneba           GAMBIA                         <151 cm               0       21    1602  stunted          
24 months   ki1101329-Keneba           GAMBIA                         <151 cm               1       39    1602  stunted          
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          0      113    1602  stunted          
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          1       91    1602  stunted          
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              0     3544    4005  stunted          
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              1      315    4005  stunted          
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               0       22    4005  stunted          
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               1       13    4005  stunted          
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          0       97    4005  stunted          
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          1       14    4005  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0      749    1374  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      335    1374  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0       44    1374  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       54    1374  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0      105    1374  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       87    1374  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              0       54     994  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       72     994  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               0       89     994  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               1      570     994  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0       43     994  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1      166     994  stunted          
24 months   ki1135781-COHORTS          INDIA                          >=155 cm              0      373    1819  stunted          
24 months   ki1135781-COHORTS          INDIA                          >=155 cm              1      179    1819  stunted          
24 months   ki1135781-COHORTS          INDIA                          <151 cm               0      277    1819  stunted          
24 months   ki1135781-COHORTS          INDIA                          <151 cm               1      508    1819  stunted          
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          0      224    1819  stunted          
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          1      258    1819  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      279    2445  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1      231    2445  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               0      336    2445  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      898    2445  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      307    2445  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1      394    2445  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              0      227     577  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              1      128     577  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               0       36     577  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               1       59     577  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          0       58     577  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          1       69     577  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0      968    8599  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      346    8599  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     2060    8599  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     3007    8599  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     1345    8599  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      873    8599  stunted          


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
![](/tmp/3eed43d3-4f6a-425a-a806-fa8c9e45b83e/114c25d1-72e7-4a45-b1c0-9a48020c048a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3eed43d3-4f6a-425a-a806-fa8c9e45b83e/114c25d1-72e7-4a45-b1c0-9a48020c048a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3eed43d3-4f6a-425a-a806-fa8c9e45b83e/114c25d1-72e7-4a45-b1c0-9a48020c048a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3eed43d3-4f6a-425a-a806-fa8c9e45b83e/114c25d1-72e7-4a45-b1c0-9a48020c048a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1388889   0.0586782   0.2190996
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2380952   0.0551794   0.4210111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2413793   0.0849930   0.3977656
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1991435   0.1562605   0.2420265
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3766234   0.3234789   0.4297679
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2897527   0.2363607   0.3431446
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0990991   0.0434680   0.1547302
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1882022   0.1475657   0.2288388
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1347518   0.0783447   0.1911588
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0727273   0.0241510   0.1213036
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1118881   0.0753193   0.1484570
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0578512   0.0162130   0.0994894
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1119403   0.0585198   0.1653608
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1507177   0.1163962   0.1850392
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1299435   0.0803745   0.1795125
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0480202   0.0358527   0.0601877
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0980392   0.0163982   0.1796803
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0569948   0.0242761   0.0897135
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0940248   0.0875190   0.1005307
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1392857   0.1106070   0.1679644
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1089880   0.0927388   0.1252371
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0545455   0.0120825   0.0970084
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0587156   0.0389666   0.0784646
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0594595   0.0253621   0.0935568
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0622642   0.0416867   0.0828416
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1389253   0.1143771   0.1634735
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0935551   0.0675234   0.1195868
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0253968   0.0131096   0.0376840
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0854369   0.0714962   0.0993776
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0445714   0.0308959   0.0582469
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1950558   0.1795483   0.2105632
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.3853826   0.3760758   0.3946893
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2725326   0.2594357   0.2856295
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1090909   0.0265244   0.1916574
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2678571   0.1856680   0.3500463
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1176471   0.0409054   0.1943887
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1206897   0.0366973   0.2046821
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.2611465   0.1923099   0.3299831
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.2105263   0.1044954   0.3165572
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1657754   0.1123679   0.2191830
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.3225806   0.1576927   0.4874686
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.2903226   0.1302150   0.4504302
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1700680   0.1092121   0.2309240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4375000   0.2968762   0.5781238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2500000   0.1320690   0.3679310
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2000000   0.1794916   0.2205084
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.4038005   0.3400134   0.4675876
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2760943   0.2313908   0.3207977
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2702703   0.1689524   0.3715882
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.5247525   0.4557947   0.5937103
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3495146   0.2573095   0.4417196
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1666667   0.0920474   0.2412859
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3311897   0.2788342   0.3835452
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1923077   0.1244963   0.2601191
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0859375   0.0373435   0.1345315
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1969697   0.1540242   0.2399152
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1310345   0.0760654   0.1860036
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1343284   0.0765507   0.1921060
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.2457421   0.2040906   0.2873936
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1823529   0.1242676   0.2404383
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0690209   0.0549423   0.0830994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1488673   0.1091686   0.1885660
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1315193   0.0999683   0.1630702
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1230867   0.1068210   0.1393525
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2985075   0.1889062   0.4081087
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.2272727   0.1744595   0.2800860
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2222222   0.0861215   0.3583229
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.3333333   0.2553549   0.4113117
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2777778   0.1580548   0.3975007
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0576079   0.0452683   0.0699475
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.1570248   0.1311744   0.1828752
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1029024   0.0685785   0.1372263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1445313   0.1355492   0.1535133
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3348315   0.2909808   0.3786822
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1950990   0.1712528   0.2189451
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2051282   0.1319222   0.2783342
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4737679   0.4347266   0.5128092
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.3248731   0.2594404   0.3903058
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0924214   0.0680098   0.1168331
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2227848   0.1937601   0.2518095
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1577869   0.1254347   0.1901391
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1212121   0.0941998   0.1482244
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2748538   0.2511919   0.2985157
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1643132   0.1382866   0.1903398
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3021442   0.2623849   0.3419036
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.5572519   0.4721427   0.6423611
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.4114583   0.3418103   0.4811064
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1018797   0.0891187   0.1146407
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.3225477   0.3113998   0.3336956
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1823885   0.1704248   0.1943521
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2641509   0.1451930   0.3831089
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5454545   0.4521973   0.6387118
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3492063   0.2312277   0.4671850
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1956522   0.0807267   0.3105777
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4608696   0.3695386   0.5522006
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.3000000   0.1576325   0.4423675
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3222222   0.2538054   0.3906391
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.4074074   0.2216745   0.5931403
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.4814815   0.2926093   0.6703537
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3636364   0.2560652   0.4712075
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6587302   0.6001221   0.7173382
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5000000   0.4018874   0.5981126
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1639344   0.0981838   0.2296851
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3841270   0.3303678   0.4378861
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.3428571   0.2641621   0.4215522
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0900000   0.0338548   0.1461452
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3240418   0.2698429   0.3782407
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2362205   0.1622750   0.3101660
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3124066   0.2875649   0.3372483
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.6500000   0.5292746   0.7707254
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4460784   0.3778448   0.5143120
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0816274   0.0502515   0.1130032
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.3714286   0.3158757   0.4269815
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1261261   0.0684823   0.1837700
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.3090406   0.2815220   0.3365591
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.5510204   0.4525081   0.6495327
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.4531250   0.3826867   0.5235633
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.5714286   0.4849768   0.6578804
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8649469   0.8388390   0.8910547
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7942584   0.7394262   0.8490906
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3242754   0.2852147   0.3633360
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.6471338   0.6136962   0.6805713
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.5352697   0.4907317   0.5798077
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4529412   0.4097306   0.4961517
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7277147   0.7028736   0.7525559
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5620542   0.5253194   0.5987890
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3605634   0.3105714   0.4105553
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.6210526   0.5234151   0.7186901
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.5433071   0.4565994   0.6300148
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2633181   0.2355595   0.2910767
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.5934478   0.5783818   0.6085138
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.3935978   0.3698414   0.4173543


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
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.8912163   1.4943928   2.393413
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.4549945   1.0671418   1.983812
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.8991317   1.0407439   3.465503
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.3597679   0.6750672   2.738940
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.5384615   0.7313825   3.236151
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.7954545   0.2979717   2.123517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.3464115   0.7934792   2.284652
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.1608286   0.6301391   2.138453
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.0416236   0.8549698   4.875292
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.1868921   0.6337132   2.222950
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4813716   1.1921457   1.840766
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.1591403   0.9834521   1.366214
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.0764526   0.4609940   2.513591
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0900901   0.4145183   2.866692
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.2312244   1.5338659   3.245631
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.5025515   0.9754475   2.314487
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.3640777   2.0189370   5.605434
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.7550000   0.9896269   3.112309
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.9757557   1.8193271   2.145634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3972033   1.2737476   1.532625
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.5725000   1.5902328   4.161502
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4700000   0.8131617   2.657405
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.0190024   1.6856314   2.418305
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.3804714   1.0965540   1.737900
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.9415842   1.3050780   2.888524
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2932039   0.8176887   2.045248
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.9871383   1.2360129   3.194723
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1538462   0.6525926   2.040110
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.2920110   1.2503124   4.201601
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.5247649   0.7540956   3.083041
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.8294134   1.1522106   2.904637
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.3575163   0.7948747   2.318417
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.1568450   1.5417360   3.017365
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.9055002   1.3907651   2.610743
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.4251798   1.6416209   3.582738
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.8464437   1.4133119   2.412316
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.5000000   0.7786878   2.889476
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.2500000   0.5911037   2.643360
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.7257503   2.2017198   3.374505
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.7862541   1.3555978   2.353725
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.3166717   2.0040516   2.678059
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3498739   1.1769110   1.548256
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          2.3096184   1.6012947   3.331265
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.5837563   1.0512797   2.385934
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.4105315   1.7955845   3.236084
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.7072540   1.2220263   2.385150
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.2675439   1.7856728   2.879450
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.3555841   1.0313038   1.781830
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.8443241   1.5075906   2.256270
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.3617944   1.0989990   1.687430
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          3.1659665   2.7875102   3.595805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.7902337   1.5559397   2.059808
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.0649351   1.2755728   3.342778
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.3219955   0.7528877   2.321292
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          2.3555556   1.2672529   4.378480
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.5333333   0.7205799   3.262804
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.2643678   0.7646493   2.090666
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.4942529   0.9565477   2.334219
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.8115079   1.3300932   2.467166
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.3750000   0.9641281   1.960969
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.3431746   1.5322108   3.583363
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.0914286   1.3174998   3.319980
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          3.6004642   1.8873878   6.868404
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          2.6246716   1.3060213   5.274724
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.0806220   1.7000019   2.546461
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.4278778   1.2017661   1.696532
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          4.5502948   2.9541153   7.008928
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.5451451   0.8162635   2.924881
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.7830034   1.4601947   2.177176
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.4662313   1.2257442   1.753901
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.5136571   1.2972625   1.766148
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.3899522   1.1770038   1.641428
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.9956304   1.7504802   2.275113
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.6506641   1.4258643   1.910906
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.6066430   1.4518283   1.777966
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2408989   1.1053866   1.393024
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.7224507   1.3967252   2.124137
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.5068282   1.2196924   1.861561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.2537295   2.0277523   2.504890
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4947617   1.3253099   1.685879


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0414390   -0.0179952   0.1008731
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0827949    0.0567801   0.1088096
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0604404    0.0073991   0.1134817
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0181818   -0.0262120   0.0625756
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0266057   -0.0227342   0.0759455
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0029931   -0.0027067   0.0086929
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0047902    0.0016066   0.0079738
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0037879   -0.0359911   0.0435668
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0414563    0.0221731   0.0607394
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0359147    0.0232215   0.0486078
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1338045    0.1189980   0.1486110
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.0781431   -0.0001154   0.1564017
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0998986    0.0193802   0.1804169
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0350278    0.0025639   0.0674917
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0687984    0.0225991   0.1149976
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0882736    0.0642729   0.1122743
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1571704    0.0636619   0.2506789
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1014898    0.0308943   0.1720852
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0716081    0.0246421   0.1185741
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0754619    0.0208824   0.1300413
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0261695    0.0153717   0.0369673
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0196943    0.0111409   0.0282477
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0808081   -0.0467748   0.2083909
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0022402    0.0012062   0.0032741
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0187092    0.0138965   0.0235219
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2042037    0.1333852   0.2750222
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0741536    0.0510279   0.0972793
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0900139    0.0642500   0.1157778
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0650806    0.0384393   0.0917219
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1496566    0.1369318   0.1623814
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1606278    0.0525284   0.2687273
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1725070    0.0646625   0.2803516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0282051   -0.0069008   0.0633110
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2051282    0.1070514   0.3032050
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1636219    0.1006618   0.2265819
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1668093    0.1088878   0.2247309
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0296658    0.0184279   0.0409037
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0037659    0.0004786   0.0070532
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0373932    0.0233976   0.0513888
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2414487    0.1629149   0.3199825
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1952409    0.1616674   0.2288143
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1699627    0.1317865   0.2081389
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0831108    0.0503989   0.1158227
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2281344    0.2029338   0.2533350


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2297980   -0.1697411   0.4928697
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2936630    0.1858008   0.3872360
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3788428   -0.0514147   0.6330313
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2000000   -0.4682360   0.5641028
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1920349   -0.2535429   0.4792299
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0586721   -0.0591796   0.1634109
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0484765    0.0158150   0.0800542
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0649351   -0.9385216   0.5489623
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3996924    0.1913390   0.5543630
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5857737    0.3426202   0.7389889
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4068734    0.3605968   0.4498007
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4173554   -0.1715170   0.7102263
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.4528736   -0.0471592   0.7141339
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1744385    0.0000171   0.3184365
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2880203    0.0736236   0.4527979
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3062147    0.2345096   0.3712030
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3677010    0.1066562   0.5524657
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3784722    0.0551128   0.5911716
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4545230    0.0742169   0.6786017
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.3597015    0.0437494   0.5712607
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2749176    0.1582939   0.3753824
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1379336    0.0774052   0.1944909
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2666667   -0.2999982   0.5863242
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0374308    0.0222026   0.0524219
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1146114    0.0850371   0.1432298
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.4988707    0.2940709   0.6442553
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4451663    0.2950895   0.5632915
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4261496    0.2936545   0.5337915
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1772228    0.1014651   0.2465933
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5949702    0.5438577   0.6403553
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3781447    0.0644934   0.5866367
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.4685664    0.0859712   0.6910145
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0804878   -0.0253447   0.1753967
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3606557    0.1604246   0.5131335
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4995229    0.2719216   0.6559748
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.6495454    0.3626160   0.8073086
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0867238    0.0533010   0.1189667
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0441006   -0.0036655   0.0895935
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1079375    0.0666530   0.1473958
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2970297    0.1911027   0.3890853
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3758128    0.3069003   0.4378736
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2728554    0.2080346   0.3323708
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1873239    0.1095032   0.2583439
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4642043    0.4095134   0.5138298

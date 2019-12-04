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

agecat      studyid                    country                        mage       sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)           0      154     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)           1        6     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20               0       29     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20               1        1     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30              0       39     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30              1        2     231
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)           0       39      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)           1        2      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <20               0        8      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <20               1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30              0       15      65
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30              1        1      65
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)           0       36      47
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)           1        1      47
Birth       ki0047075b-MAL-ED          INDIA                          <20               0        7      47
Birth       ki0047075b-MAL-ED          INDIA                          <20               1        1      47
Birth       ki0047075b-MAL-ED          INDIA                          >=30              0        2      47
Birth       ki0047075b-MAL-ED          INDIA                          >=30              1        0      47
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)           0       21      27
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)           1        1      27
Birth       ki0047075b-MAL-ED          NEPAL                          <20               0        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          <20               1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=30              0        5      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=30              1        0      27
Birth       ki0047075b-MAL-ED          PERU                           [20-30)           0      114     233
Birth       ki0047075b-MAL-ED          PERU                           [20-30)           1        0     233
Birth       ki0047075b-MAL-ED          PERU                           <20               0       63     233
Birth       ki0047075b-MAL-ED          PERU                           <20               1        3     233
Birth       ki0047075b-MAL-ED          PERU                           >=30              0       52     233
Birth       ki0047075b-MAL-ED          PERU                           >=30              1        1     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           0       66     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           1        1     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20               0       22     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20               1        1     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              0       33     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           0       66     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           1        6     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               0        7     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               1        0     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              0       42     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              1        4     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           0       77      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           1        2      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20               0        7      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20               1        2      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30              0        4      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30              1        0      92
Birth       ki1000108-IRC              INDIA                          [20-30)           0      313     388
Birth       ki1000108-IRC              INDIA                          [20-30)           1       12     388
Birth       ki1000108-IRC              INDIA                          <20               0       31     388
Birth       ki1000108-IRC              INDIA                          <20               1        4     388
Birth       ki1000108-IRC              INDIA                          >=30              0       28     388
Birth       ki1000108-IRC              INDIA                          >=30              1        0     388
Birth       ki1000109-EE               PAKISTAN                       [20-30)           0       76     239
Birth       ki1000109-EE               PAKISTAN                       [20-30)           1       18     239
Birth       ki1000109-EE               PAKISTAN                       <20               0        1     239
Birth       ki1000109-EE               PAKISTAN                       <20               1        0     239
Birth       ki1000109-EE               PAKISTAN                       >=30              0      115     239
Birth       ki1000109-EE               PAKISTAN                       >=30              1       29     239
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)           0      882    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)           1       71    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20               0      150    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20               1       11    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30              0      129    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30              1        9    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)           0      398     606
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)           1       12     606
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20               0       67     606
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20               1        3     606
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30              0      122     606
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30              1        4     606
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)           0      370     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)           1        1     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20               0       67     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20               1        0     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30              0       98     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30              1        3     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           0      478     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           1        5     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20               0      127     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20               1        3     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30              0      117     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30              1        2     732
Birth       ki1101329-Keneba           GAMBIA                         [20-30)           0      694    1543
Birth       ki1101329-Keneba           GAMBIA                         [20-30)           1       11    1543
Birth       ki1101329-Keneba           GAMBIA                         <20               0      231    1543
Birth       ki1101329-Keneba           GAMBIA                         <20               1        7    1543
Birth       ki1101329-Keneba           GAMBIA                         >=30              0      589    1543
Birth       ki1101329-Keneba           GAMBIA                         >=30              1       11    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)           0      432     696
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)           1       14     696
Birth       ki1113344-GMS-Nepal        NEPAL                          <20               0      136     696
Birth       ki1113344-GMS-Nepal        NEPAL                          <20               1       13     696
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30              0       97     696
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30              1        4     696
Birth       ki1119695-PROBIT           BELARUS                        [20-30)           0     9937   13890
Birth       ki1119695-PROBIT           BELARUS                        [20-30)           1        3   13890
Birth       ki1119695-PROBIT           BELARUS                        <20               0     1407   13890
Birth       ki1119695-PROBIT           BELARUS                        <20               1        1   13890
Birth       ki1119695-PROBIT           BELARUS                        >=30              0     2541   13890
Birth       ki1119695-PROBIT           BELARUS                        >=30              1        1   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           0     9021   13835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           1      278   13835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20               0     2122   13835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20               1       83   13835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30              0     2252   13835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30              1       79   13835
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)           0      400     852
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)           1        5     852
Birth       ki1135781-COHORTS          GUATEMALA                      <20               0      120     852
Birth       ki1135781-COHORTS          GUATEMALA                      <20               1        1     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30              0      321     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30              1        5     852
Birth       ki1135781-COHORTS          INDIA                          [20-30)           0     3087    4715
Birth       ki1135781-COHORTS          INDIA                          [20-30)           1       93    4715
Birth       ki1135781-COHORTS          INDIA                          <20               0      352    4715
Birth       ki1135781-COHORTS          INDIA                          <20               1       16    4715
Birth       ki1135781-COHORTS          INDIA                          >=30              0     1138    4715
Birth       ki1135781-COHORTS          INDIA                          >=30              1       29    4715
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)           0     1802    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)           1       19    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <20               0      368    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <20               1       10    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30              0      834    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30              1       17    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           0     9880   22444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           1      973   22444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20               0     8221   22444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20               1     1251   22444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30              0     1896   22444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30              1      223   22444
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)           0      160     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)           1        5     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20               0       32     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20               1        3     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30              0       41     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30              1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)           0      125     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)           1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20               0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30              0       47     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30              1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)           0      170     234
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)           1        9     234
6 months    ki0047075b-MAL-ED          INDIA                          <20               0       34     234
6 months    ki0047075b-MAL-ED          INDIA                          <20               1        0     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30              0       21     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30              1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)           0      185     236
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)           1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <20               0        4     236
6 months    ki0047075b-MAL-ED          NEPAL                          <20               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30              0       46     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30              1        0     236
6 months    ki0047075b-MAL-ED          PERU                           [20-30)           0      133     273
6 months    ki0047075b-MAL-ED          PERU                           [20-30)           1        3     273
6 months    ki0047075b-MAL-ED          PERU                           <20               0       72     273
6 months    ki0047075b-MAL-ED          PERU                           <20               1        4     273
6 months    ki0047075b-MAL-ED          PERU                           >=30              0       58     273
6 months    ki0047075b-MAL-ED          PERU                           >=30              1        3     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           0      116     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20               0       40     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20               1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              0       92     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              1        2     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           0      118     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           1       10     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               0       15     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              0      100     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              1        4     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           0      261     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           1       32     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20               0       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20               1        3     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30              0       36     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30              1        7     369
6 months    ki1000108-IRC              INDIA                          [20-30)           0      317     407
6 months    ki1000108-IRC              INDIA                          [20-30)           1       25     407
6 months    ki1000108-IRC              INDIA                          <20               0       34     407
6 months    ki1000108-IRC              INDIA                          <20               1        2     407
6 months    ki1000108-IRC              INDIA                          >=30              0       27     407
6 months    ki1000108-IRC              INDIA                          >=30              1        2     407
6 months    ki1000109-EE               PAKISTAN                       [20-30)           0      125     371
6 months    ki1000109-EE               PAKISTAN                       [20-30)           1       34     371
6 months    ki1000109-EE               PAKISTAN                       <20               0        1     371
6 months    ki1000109-EE               PAKISTAN                       <20               1        0     371
6 months    ki1000109-EE               PAKISTAN                       >=30              0      165     371
6 months    ki1000109-EE               PAKISTAN                       >=30              1       46     371
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)           0      924    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)           1       93    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20               0      156    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20               1       15    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30              0      128    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30              1       20    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)           0      228     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)           1       33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20               0       31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20               1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30              0       67     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30              1       16     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)           0      334     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)           1       23     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20               0       59     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20               1        2     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30              0      107     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30              1       10     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)           0      414     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)           1       10     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20               0       65     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20               1        1     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30              0      111     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30              1        3     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           0      452     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           1       10     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20               0      124     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20               1        7     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30              0      116     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30              1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           0     1307    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           1       11    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               0      145    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               1        1    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              0      542    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              1        6    2012
6 months    ki1101329-Keneba           GAMBIA                         [20-30)           0      960    2080
6 months    ki1101329-Keneba           GAMBIA                         [20-30)           1       27    2080
6 months    ki1101329-Keneba           GAMBIA                         <20               0      284    2080
6 months    ki1101329-Keneba           GAMBIA                         <20               1        4    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30              0      766    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30              1       39    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)           0      157     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)           1       14     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20               0       42     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20               1        4     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30              0       52     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30              1        7     276
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)           0      365     564
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)           1        6     564
6 months    ki1113344-GMS-Nepal        NEPAL                          <20               0      100     564
6 months    ki1113344-GMS-Nepal        NEPAL                          <20               1        8     564
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30              0       78     564
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30              1        7     564
6 months    ki1119695-PROBIT           BELARUS                        [20-30)           0    11160   15761
6 months    ki1119695-PROBIT           BELARUS                        [20-30)           1      156   15761
6 months    ki1119695-PROBIT           BELARUS                        <20               0     1582   15761
6 months    ki1119695-PROBIT           BELARUS                        <20               1       38   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30              0     2776   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30              1       49   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           0     5516    8653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           1      222    8653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20               0     1251    8653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20               1       64    8653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30              0     1536    8653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30              1       64    8653
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)           0      412     961
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)           1       58     961
6 months    ki1135781-COHORTS          GUATEMALA                      <20               0      109     961
6 months    ki1135781-COHORTS          GUATEMALA                      <20               1        9     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30              0      316     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30              1       57     961
6 months    ki1135781-COHORTS          INDIA                          [20-30)           0     3174    4904
6 months    ki1135781-COHORTS          INDIA                          [20-30)           1      157    4904
6 months    ki1135781-COHORTS          INDIA                          <20               0      352    4904
6 months    ki1135781-COHORTS          INDIA                          <20               1       19    4904
6 months    ki1135781-COHORTS          INDIA                          >=30              0     1139    4904
6 months    ki1135781-COHORTS          INDIA                          >=30              1       63    4904
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)           0     1545    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)           1       56    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <20               0      310    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <20               1       21    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30              0      721    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30              1       55    2708
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)           0      333     669
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)           1       31     669
6 months    ki1148112-LCNI-5           MALAWI                         <20               0      103     669
6 months    ki1148112-LCNI-5           MALAWI                         <20               1        4     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30              0      180     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30              1       18     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           0     7286   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           1      393   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20               0     7348   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20               1      557   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30              0     1151   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30              1       70   16805
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)           0      132     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)           1       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20               0       24     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20               1        5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30              0       28     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30              1        9     212
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)           0      101     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)           1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20               0       27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30              0       40     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30              1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)           0      145     225
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)           1       27     225
24 months   ki0047075b-MAL-ED          INDIA                          <20               0       31     225
24 months   ki0047075b-MAL-ED          INDIA                          <20               1        2     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30              0       19     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30              1        1     225
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)           0      172     228
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)           1        7     228
24 months   ki0047075b-MAL-ED          NEPAL                          <20               0        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          <20               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30              0       45     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30              1        0     228
24 months   ki0047075b-MAL-ED          PERU                           [20-30)           0       88     201
24 months   ki0047075b-MAL-ED          PERU                           [20-30)           1       10     201
24 months   ki0047075b-MAL-ED          PERU                           <20               0       50     201
24 months   ki0047075b-MAL-ED          PERU                           <20               1        5     201
24 months   ki0047075b-MAL-ED          PERU                           >=30              0       48     201
24 months   ki0047075b-MAL-ED          PERU                           >=30              1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           0       92     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           1       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20               0       38     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20               1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              0       81     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              1       12     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           0       71     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           1       42     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              0       67     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              1       25     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           0      193     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           1      102     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20               0       25     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20               1        9     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30              0       28     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30              1       14     371
24 months   ki1000108-IRC              INDIA                          [20-30)           0      309     409
24 months   ki1000108-IRC              INDIA                          [20-30)           1       34     409
24 months   ki1000108-IRC              INDIA                          <20               0       33     409
24 months   ki1000108-IRC              INDIA                          <20               1        4     409
24 months   ki1000108-IRC              INDIA                          >=30              0       26     409
24 months   ki1000108-IRC              INDIA                          >=30              1        3     409
24 months   ki1000109-EE               PAKISTAN                       [20-30)           0       42     167
24 months   ki1000109-EE               PAKISTAN                       [20-30)           1       23     167
24 months   ki1000109-EE               PAKISTAN                       <20               0        1     167
24 months   ki1000109-EE               PAKISTAN                       <20               1        0     167
24 months   ki1000109-EE               PAKISTAN                       >=30              0       65     167
24 months   ki1000109-EE               PAKISTAN                       >=30              1       36     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)           0      218     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)           1       71     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20               0       41     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20               1        3     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30              0       73     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30              1       21     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)           0      372     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)           1       37     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20               0       59     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20               1        5     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30              0       95     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30              1       10     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           0      311     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           1       23     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20               0       91     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20               1       10     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30              0       76     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30              1        3     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              1        0       6
24 months   ki1101329-Keneba           GAMBIA                         [20-30)           0      734    1714
24 months   ki1101329-Keneba           GAMBIA                         [20-30)           1       56    1714
24 months   ki1101329-Keneba           GAMBIA                         <20               0      201    1714
24 months   ki1101329-Keneba           GAMBIA                         <20               1       16    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30              0      639    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30              1       68    1714
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)           0      286     488
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)           1       32     488
24 months   ki1113344-GMS-Nepal        NEPAL                          <20               0       81     488
24 months   ki1113344-GMS-Nepal        NEPAL                          <20               1       13     488
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30              0       68     488
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30              1        8     488
24 months   ki1119695-PROBIT           BELARUS                        [20-30)           0     2845    4035
24 months   ki1119695-PROBIT           BELARUS                        [20-30)           1       48    4035
24 months   ki1119695-PROBIT           BELARUS                        <20               0      360    4035
24 months   ki1119695-PROBIT           BELARUS                        <20               1        9    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30              0      765    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30              1        8    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           0      989    1638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           1      112    1638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20               0      185    1638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20               1       34    1638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30              0      286    1638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30              1       32    1638
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)           0      269    1064
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)           1      258    1064
24 months   ki1135781-COHORTS          GUATEMALA                      <20               0       70    1064
24 months   ki1135781-COHORTS          GUATEMALA                      <20               1       82    1064
24 months   ki1135781-COHORTS          GUATEMALA                      >=30              0      204    1064
24 months   ki1135781-COHORTS          GUATEMALA                      >=30              1      181    1064
24 months   ki1135781-COHORTS          INDIA                          [20-30)           0     1882    3692
24 months   ki1135781-COHORTS          INDIA                          [20-30)           1      581    3692
24 months   ki1135781-COHORTS          INDIA                          <20               0      163    3692
24 months   ki1135781-COHORTS          INDIA                          <20               1       84    3692
24 months   ki1135781-COHORTS          INDIA                          >=30              0      697    3692
24 months   ki1135781-COHORTS          INDIA                          >=30              1      285    3692
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)           0     1060    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)           1      400    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <20               0      205    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <20               1       87    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30              0      473    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30              1      220    2445
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)           0      217     475
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)           1       33     475
24 months   ki1148112-LCNI-5           MALAWI                         <20               0       73     475
24 months   ki1148112-LCNI-5           MALAWI                         <20               1        7     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30              0      125     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30              1       20     475
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           0     3452    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           1      606    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20               0     3229    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20               1      626    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30              0      600    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30              1      114    8627


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/ee01e1ba-7d1c-4b3d-8d35-1985b2107a68/2d586d7f-d0fa-48a3-a310-148dbb5039be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee01e1ba-7d1c-4b3d-8d35-1985b2107a68/2d586d7f-d0fa-48a3-a310-148dbb5039be/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee01e1ba-7d1c-4b3d-8d35-1985b2107a68/2d586d7f-d0fa-48a3-a310-148dbb5039be/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee01e1ba-7d1c-4b3d-8d35-1985b2107a68/2d586d7f-d0fa-48a3-a310-148dbb5039be/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                0.0745016    0.0544113   0.0945918
Birth       ki1000304b-SAS-CompFeed    INDIA         <20                  NA                0.0683230    0.0354638   0.1011821
Birth       ki1000304b-SAS-CompFeed    INDIA         >=30                 NA                0.0652174    0.0097255   0.1207093
Birth       ki1101329-Keneba           GAMBIA        [20-30)              NA                0.0156028    0.0064516   0.0247541
Birth       ki1101329-Keneba           GAMBIA        <20                  NA                0.0294118    0.0079395   0.0508841
Birth       ki1101329-Keneba           GAMBIA        >=30                 NA                0.0183333    0.0075955   0.0290711
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                0.0294884    0.0260358   0.0329410
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.0374291    0.0290549   0.0458033
Birth       ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0389754    0.0305530   0.0473977
Birth       ki1135781-COHORTS          INDIA         [20-30)              NA                0.0294285    0.0234869   0.0353701
Birth       ki1135781-COHORTS          INDIA         <20                  NA                0.0442915    0.0229092   0.0656739
Birth       ki1135781-COHORTS          INDIA         >=30                 NA                0.0252081    0.0160403   0.0343759
Birth       ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                0.0106244    0.0059341   0.0153147
Birth       ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.0232529    0.0079799   0.0385259
Birth       ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0195021    0.0102963   0.0287079
Birth       kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                0.0908464    0.0849592   0.0967337
Birth       kiGH5241-JiVitA-3          BANGLADESH    <20                  NA                0.1288542    0.1214311   0.1362772
Birth       kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.1111818    0.0966639   0.1256997
6 months    ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                0.0914844    0.0734120   0.1095568
6 months    ki1000304b-SAS-CompFeed    INDIA         <20                  NA                0.0872646    0.0532341   0.1212951
6 months    ki1000304b-SAS-CompFeed    INDIA         >=30                 NA                0.1340974    0.0845372   0.1836576
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [20-30)              NA                0.1264368    0.0860644   0.1668091
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <20                  NA                0.1388889    0.0257707   0.2520071
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=30                 NA                0.1927711    0.1077943   0.2777479
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-30)              NA                0.0216450    0.0083662   0.0349238
6 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  NA                0.0534351    0.0148957   0.0919745
6 months    ki1017093c-NIH-Crypto      BANGLADESH    >=30                 NA                0.0491803    0.0107816   0.0875791
6 months    ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                0.0161725    0.0033257   0.0290193
6 months    ki1113344-GMS-Nepal        NEPAL         <20                  NA                0.0740741    0.0246381   0.1235100
6 months    ki1113344-GMS-Nepal        NEPAL         >=30                 NA                0.0823529    0.0238603   0.1408456
6 months    ki1119695-PROBIT           BELARUS       [20-30)              NA                0.0138829    0.0092599   0.0185059
6 months    ki1119695-PROBIT           BELARUS       <20                  NA                0.0244795    0.0135116   0.0354473
6 months    ki1119695-PROBIT           BELARUS       >=30                 NA                0.0177137    0.0087647   0.0266626
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                0.0381577    0.0331812   0.0431341
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.0447108    0.0332309   0.0561908
6 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0445890    0.0340269   0.0551511
6 months    ki1135781-COHORTS          GUATEMALA     [20-30)              NA                0.1234043    0.0936540   0.1531545
6 months    ki1135781-COHORTS          GUATEMALA     <20                  NA                0.0762712    0.0283546   0.1241877
6 months    ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.1528150    0.1162815   0.1893486
6 months    ki1135781-COHORTS          INDIA         [20-30)              NA                0.0473364    0.0400892   0.0545835
6 months    ki1135781-COHORTS          INDIA         <20                  NA                0.0497436    0.0279964   0.0714909
6 months    ki1135781-COHORTS          INDIA         >=30                 NA                0.0523587    0.0395538   0.0651635
6 months    ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                0.0349119    0.0259978   0.0438259
6 months    ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.0553319    0.0304126   0.0802512
6 months    ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0718823    0.0536785   0.0900862
6 months    kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                0.0531812    0.0477963   0.0585661
6 months    kiGH5241-JiVitA-3          BANGLADESH    <20                  NA                0.0674593    0.0616404   0.0732782
6 months    kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.0618521    0.0478336   0.0758707
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-30)              NA                0.0958904    0.0480168   0.1437641
24 months   ki0047075b-MAL-ED          BANGLADESH    <20                  NA                0.1724138    0.0346077   0.3102199
24 months   ki0047075b-MAL-ED          BANGLADESH    >=30                 NA                0.2432432    0.1046722   0.3818143
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-30)              NA                0.3457627    0.2914152   0.4001103
24 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  NA                0.2647059    0.1162125   0.4131993
24 months   ki1000108-CMC-V-BCS-2002   INDIA         >=30                 NA                0.3333333    0.1905744   0.4760923
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-30)              NA                0.0904645    0.0626411   0.1182880
24 months   ki1017093b-PROVIDE         BANGLADESH    <20                  NA                0.0781250    0.0123191   0.1439309
24 months   ki1017093b-PROVIDE         BANGLADESH    >=30                 NA                0.0952381    0.0390425   0.1514336
24 months   ki1101329-Keneba           GAMBIA        [20-30)              NA                0.0720330    0.0537106   0.0903554
24 months   ki1101329-Keneba           GAMBIA        <20                  NA                0.0796510    0.0402713   0.1190307
24 months   ki1101329-Keneba           GAMBIA        >=30                 NA                0.0966198    0.0747832   0.1184565
24 months   ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                0.1006289    0.0675302   0.1337276
24 months   ki1113344-GMS-Nepal        NEPAL         <20                  NA                0.1382979    0.0684399   0.2081558
24 months   ki1113344-GMS-Nepal        NEPAL         >=30                 NA                0.1052632    0.0361958   0.1743305
24 months   ki1119695-PROBIT           BELARUS       [20-30)              NA                0.0165918    0.0054891   0.0276944
24 months   ki1119695-PROBIT           BELARUS       <20                  NA                0.0243902   -0.0363550   0.0851355
24 months   ki1119695-PROBIT           BELARUS       >=30                 NA                0.0103493    0.0006900   0.0200086
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                0.0993678    0.0815679   0.1171677
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.1509053    0.1009970   0.2008137
24 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.1161378    0.0822558   0.1500197
24 months   ki1135781-COHORTS          GUATEMALA     [20-30)              NA                0.4947704    0.4515123   0.5380285
24 months   ki1135781-COHORTS          GUATEMALA     <20                  NA                0.5598113    0.4777237   0.6418988
24 months   ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.4677193    0.4185979   0.5168406
24 months   ki1135781-COHORTS          INDIA         [20-30)              NA                0.2376571    0.2208284   0.2544859
24 months   ki1135781-COHORTS          INDIA         <20                  NA                0.3410956    0.2819150   0.4002762
24 months   ki1135781-COHORTS          INDIA         >=30                 NA                0.2816708    0.2531617   0.3101800
24 months   ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                0.2759289    0.2532069   0.2986508
24 months   ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.2790175    0.2289728   0.3290622
24 months   ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.3202328    0.2863774   0.3540883
24 months   ki1148112-LCNI-5           MALAWI        [20-30)              NA                0.1320000    0.0899968   0.1740032
24 months   ki1148112-LCNI-5           MALAWI        <20                  NA                0.0875000    0.0255158   0.1494842
24 months   ki1148112-LCNI-5           MALAWI        >=30                 NA                0.1379310    0.0817456   0.1941165
24 months   kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                0.1536538    0.1422177   0.1650899
24 months   kiGH5241-JiVitA-3          BANGLADESH    <20                  NA                0.1565220    0.1437606   0.1692834
24 months   kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.1665314    0.1392717   0.1937910


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0726837   0.0523147   0.0930527
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.0187946   0.0120166   0.0255726
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0318034   0.0288793   0.0347275
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0292683   0.0244566   0.0340800
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1090269   0.1044770   0.1135768
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0372340   0.0215945   0.0528736
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0404484   0.0362972   0.0445996
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0487357   0.0427089   0.0547626
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606962   0.0568440   0.0645485
24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1320755   0.0863920   0.1777589
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3369272   0.2887662   0.3850883
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0816803   0.0687107   0.0946498
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1086066   0.0809724   0.1362407
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0161090   0.0034156   0.0288025
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1086691   0.0935928   0.1237455
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4896617   0.4596107   0.5197126
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.2573131   0.2432102   0.2714161
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2891616   0.2711872   0.3071359
24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.1263158   0.0964093   0.1562223
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1560218   0.1472599   0.1647837


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA         <20                  [20-30)           0.9170676   0.5472881    1.536692
Birth       ki1000304b-SAS-CompFeed    INDIA         >=30                 [20-30)           0.8753827   0.4108343    1.865216
Birth       ki1101329-Keneba           GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA        <20                  [20-30)           1.8850267   0.7389454    4.808645
Birth       ki1101329-Keneba           GAMBIA        >=30                 [20-30)           1.1750000   0.5129324    2.691632
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <20                  [20-30)           1.2692816   0.9861555    1.633693
Birth       ki1126311-ZVITAMBO         ZIMBABWE      >=30                 [20-30)           1.3217177   1.0337306    1.689935
Birth       ki1135781-COHORTS          INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA         <20                  [20-30)           1.5050543   0.8917565    2.540142
Birth       ki1135781-COHORTS          INDIA         >=30                 [20-30)           0.8565874   0.5650475    1.298549
Birth       ki1135781-COHORTS          PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   <20                  [20-30)           2.1886331   0.9921656    4.827939
Birth       ki1135781-COHORTS          PHILIPPINES   >=30                 [20-30)           1.8355951   0.9620459    3.502337
Birth       kiGH5241-JiVitA-3          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    <20                  [20-30)           1.4183734   1.3053980    1.541126
Birth       kiGH5241-JiVitA-3          BANGLADESH    >=30                 [20-30)           1.2238437   1.0553228    1.419275
6 months    ki1000304b-SAS-CompFeed    INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         <20                  [20-30)           0.9538746   0.6003987    1.515454
6 months    ki1000304b-SAS-CompFeed    INDIA         >=30                 [20-30)           1.4657958   1.1454899    1.875667
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <20                  [20-30)           1.0984848   0.4580048    2.634621
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=30                 [20-30)           1.5246440   0.8846589    2.627611
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  [20-30)           2.4687023   0.9577527    6.363324
6 months    ki1017093c-NIH-Crypto      BANGLADESH    >=30                 [20-30)           2.2721311   0.8417772    6.132953
6 months    ki1113344-GMS-Nepal        NEPAL         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL         <20                  [20-30)           4.5802463   1.6229586   12.926181
6 months    ki1113344-GMS-Nepal        NEPAL         >=30                 [20-30)           5.0921562   1.7543677   14.780285
6 months    ki1119695-PROBIT           BELARUS       [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS       <20                  [20-30)           1.7632766   1.2689416    2.450187
6 months    ki1119695-PROBIT           BELARUS       >=30                 [20-30)           1.2759303   0.8943208    1.820374
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  [20-30)           1.1717390   0.8786875    1.562526
6 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 [20-30)           1.1685456   0.8919729    1.530875
6 months    ki1135781-COHORTS          GUATEMALA     [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA     <20                  [20-30)           0.6180596   0.3153483    1.211351
6 months    ki1135781-COHORTS          GUATEMALA     >=30                 [20-30)           1.2383286   0.8818286    1.738952
6 months    ki1135781-COHORTS          INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA         <20                  [20-30)           1.0508543   0.6611649    1.670226
6 months    ki1135781-COHORTS          INDIA         >=30                 [20-30)           1.1060975   0.8289330    1.475935
6 months    ki1135781-COHORTS          PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   <20                  [20-30)           1.5849015   0.9464807    2.653951
6 months    ki1135781-COHORTS          PHILIPPINES   >=30                 [20-30)           2.0589653   1.4392063    2.945608
6 months    kiGH5241-JiVitA-3          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    <20                  [20-30)           1.2684800   1.1120099    1.446967
6 months    kiGH5241-JiVitA-3          BANGLADESH    >=30                 [20-30)           1.1630444   0.9080051    1.489719
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH    <20                  [20-30)           1.7980295   0.7006851    4.613927
24 months   ki0047075b-MAL-ED          BANGLADESH    >=30                 [20-30)           2.5366794   1.1893016    5.410522
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  [20-30)           0.7655709   0.4275376    1.370871
24 months   ki1000108-CMC-V-BCS-2002   INDIA         >=30                 [20-30)           0.9640523   0.6109017    1.521353
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    <20                  [20-30)           0.8635980   0.3522694    2.117134
24 months   ki1017093b-PROVIDE         BANGLADESH    >=30                 [20-30)           1.0527671   0.5411936    2.047915
24 months   ki1101329-Keneba           GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA        <20                  [20-30)           1.1057571   0.6343835    1.927381
24 months   ki1101329-Keneba           GAMBIA        >=30                 [20-30)           1.3413272   0.9553705    1.883205
24 months   ki1113344-GMS-Nepal        NEPAL         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL         <20                  [20-30)           1.3743351   0.7521593    2.511166
24 months   ki1113344-GMS-Nepal        NEPAL         >=30                 [20-30)           1.0460526   0.5021068    2.179270
24 months   ki1119695-PROBIT           BELARUS       [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS       <20                  [20-30)           1.4700203   0.1869392   11.559692
24 months   ki1119695-PROBIT           BELARUS       >=30                 [20-30)           0.6237602   0.1955718    1.989433
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  [20-30)           1.5186543   1.0431998    2.210805
24 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 [20-30)           1.1687666   0.8309886    1.643844
24 months   ki1135781-COHORTS          GUATEMALA     [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA     <20                  [20-30)           1.1314567   0.9548799    1.340686
24 months   ki1135781-COHORTS          GUATEMALA     >=30                 [20-30)           0.9453259   0.8259559    1.081948
24 months   ki1135781-COHORTS          INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA         <20                  [20-30)           1.4352424   1.1901417    1.730820
24 months   ki1135781-COHORTS          INDIA         >=30                 [20-30)           1.1851983   1.0478074    1.340604
24 months   ki1135781-COHORTS          PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   <20                  [20-30)           1.0111936   0.8314364    1.229815
24 months   ki1135781-COHORTS          PHILIPPINES   >=30                 [20-30)           1.1605629   1.0169972    1.324395
24 months   ki1148112-LCNI-5           MALAWI        [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI        <20                  [20-30)           0.6628789   0.3049094    1.441112
24 months   ki1148112-LCNI-5           MALAWI        >=30                 [20-30)           1.0449321   0.6231630    1.752163
24 months   kiGH5241-JiVitA-3          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    <20                  [20-30)           1.0186666   0.9188319    1.129349
24 months   kiGH5241-JiVitA-3          BANGLADESH    >=30                 [20-30)           1.0838089   0.9096373    1.291330


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                -0.0018179   -0.0093166   0.0056808
Birth       ki1101329-Keneba           GAMBIA        [20-30)              NA                 0.0031917   -0.0040994   0.0104828
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0023150    0.0002057   0.0044242
Birth       ki1135781-COHORTS          INDIA         [20-30)              NA                -0.0001602   -0.0035785   0.0032580
Birth       ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.0044576    0.0006385   0.0082767
Birth       kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.0181805    0.0137465   0.0226145
6 months    ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                 0.0043240   -0.0012965   0.0099445
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [20-30)              NA                 0.0156685   -0.0093633   0.0407002
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-30)              NA                 0.0105228   -0.0002457   0.0212913
6 months    ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                 0.0210615    0.0071868   0.0349363
6 months    ki1119695-PROBIT           BELARUS       [20-30)              NA                 0.0015349   -0.0001521   0.0032219
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0022907   -0.0007291   0.0053106
6 months    ki1135781-COHORTS          GUATEMALA     [20-30)              NA                 0.0056280   -0.0160294   0.0272854
6 months    ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0013993   -0.0028569   0.0056556
6 months    ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.0138326    0.0067938   0.0208714
6 months    kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.0075150    0.0033377   0.0116924
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-30)              NA                 0.0361851    0.0012263   0.0711438
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-30)              NA                -0.0088355   -0.0328345   0.0151635
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-30)              NA                -0.0004991   -0.0154533   0.0144550
24 months   ki1101329-Keneba           GAMBIA        [20-30)              NA                 0.0096473   -0.0045577   0.0238522
24 months   ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                 0.0079776   -0.0127925   0.0287478
24 months   ki1119695-PROBIT           BELARUS       [20-30)              NA                -0.0004827   -0.0048602   0.0038948
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0093013   -0.0014901   0.0200927
24 months   ki1135781-COHORTS          GUATEMALA     [20-30)              NA                -0.0051087   -0.0356566   0.0254391
24 months   ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0196560    0.0093844   0.0299275
24 months   ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.0132327   -0.0011432   0.0276086
24 months   ki1148112-LCNI-5           MALAWI        [20-30)              NA                -0.0056842   -0.0339957   0.0226273
24 months   kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.0023680   -0.0056704   0.0104064


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                -0.0250107   -0.1355116   0.0747370
Birth       ki1101329-Keneba           GAMBIA        [20-30)              NA                 0.1698215   -0.3171959   0.4767700
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0727906    0.0043062   0.1365645
Birth       ki1135781-COHORTS          INDIA         [20-30)              NA                -0.0054741   -0.1293076   0.1047805
Birth       ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.2955564    0.0124747   0.4974906
Birth       kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.1667523    0.1254840   0.2060731
6 months    ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                 0.0451319   -0.0142363   0.1010249
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [20-30)              NA                 0.1102597   -0.0827152   0.2688402
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-30)              NA                 0.3271222   -0.0651509   0.5749291
6 months    ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                 0.5656526    0.1524749   0.7774017
6 months    ki1119695-PROBIT           BELARUS       [20-30)              NA                 0.0995518    0.0007205   0.1886084
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0566333   -0.0209067   0.1282840
6 months    ki1135781-COHORTS          GUATEMALA     [20-30)              NA                 0.0436170   -0.1397263   0.1974666
6 months    ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0287129   -0.0626016   0.1121803
6 months    ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.2837775    0.1326772   0.4085539
6 months    kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.1238136    0.0525996   0.1896746
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-30)              NA                 0.2739726   -0.0260551   0.4862695
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-30)              NA                -0.0262237   -0.0999876   0.0425936
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-30)              NA                -0.0055482   -0.1862916   0.1476570
24 months   ki1101329-Keneba           GAMBIA        [20-30)              NA                 0.1181101   -0.0732362   0.2753415
24 months   ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                 0.0734544   -0.1380845   0.2456739
24 months   ki1119695-PROBIT           BELARUS       [20-30)              NA                -0.0299662   -0.3577463   0.2186829
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0855930   -0.0190011   0.1794512
24 months   ki1135781-COHORTS          GUATEMALA     [20-30)              NA                -0.0104332   -0.0747755   0.0500572
24 months   ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0763893    0.0356861   0.1153744
24 months   ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.0457622   -0.0052791   0.0942121
24 months   ki1148112-LCNI-5           MALAWI        [20-30)              NA                -0.0450000   -0.2947642   0.1565839
24 months   kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.0151772   -0.0376552   0.0653196

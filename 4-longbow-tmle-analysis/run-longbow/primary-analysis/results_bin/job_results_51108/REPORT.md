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
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mage       sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)           0      170     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)           1        6     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20               0       35     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20               1        1     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30              0       43     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30              1        2     257
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)           0      111     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)           1        6     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <20               0       33     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <20               1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30              0       39     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30              1        1     191
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)           0      159     205
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)           1        6     205
Birth       ki0047075b-MAL-ED          INDIA                          <20               0       24     205
Birth       ki0047075b-MAL-ED          INDIA                          <20               1        1     205
Birth       ki0047075b-MAL-ED          INDIA                          >=30              0       15     205
Birth       ki0047075b-MAL-ED          INDIA                          >=30              1        0     205
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)           0      128     173
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)           1        4     173
Birth       ki0047075b-MAL-ED          NEPAL                          <20               0        4     173
Birth       ki0047075b-MAL-ED          NEPAL                          <20               1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=30              0       35     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=30              1        1     173
Birth       ki0047075b-MAL-ED          PERU                           [20-30)           0      142     287
Birth       ki0047075b-MAL-ED          PERU                           [20-30)           1        3     287
Birth       ki0047075b-MAL-ED          PERU                           <20               0       73     287
Birth       ki0047075b-MAL-ED          PERU                           <20               1        4     287
Birth       ki0047075b-MAL-ED          PERU                           >=30              0       64     287
Birth       ki0047075b-MAL-ED          PERU                           >=30              1        1     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           0      134     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20               0       40     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20               1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              0       86     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              1        0     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           0       69     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           1        5     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               0        9     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              0       39     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              1        1     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           0       76      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20               0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20               1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30              0        4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30              1        0      90
Birth       ki1000108-IRC              INDIA                          [20-30)           0      313     388
Birth       ki1000108-IRC              INDIA                          [20-30)           1       12     388
Birth       ki1000108-IRC              INDIA                          <20               0       31     388
Birth       ki1000108-IRC              INDIA                          <20               1        4     388
Birth       ki1000108-IRC              INDIA                          >=30              0       28     388
Birth       ki1000108-IRC              INDIA                          >=30              1        0     388
Birth       ki1000109-EE               PAKISTAN                       [20-30)           0        1       2
Birth       ki1000109-EE               PAKISTAN                       [20-30)           1        0       2
Birth       ki1000109-EE               PAKISTAN                       <20               0        0       2
Birth       ki1000109-EE               PAKISTAN                       <20               1        0       2
Birth       ki1000109-EE               PAKISTAN                       >=30              0        1       2
Birth       ki1000109-EE               PAKISTAN                       >=30              1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)           0      127     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)           1        8     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20               0       26     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20               1        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30              0       23     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30              1        2     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)           0       15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)           1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20               0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30              0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30              1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           0       21      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20               0        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20               1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30              0        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30              1        0      27
Birth       ki1101329-Keneba           GAMBIA                         [20-30)           0      694    1541
Birth       ki1101329-Keneba           GAMBIA                         [20-30)           1       11    1541
Birth       ki1101329-Keneba           GAMBIA                         <20               0      231    1541
Birth       ki1101329-Keneba           GAMBIA                         <20               1        7    1541
Birth       ki1101329-Keneba           GAMBIA                         >=30              0      587    1541
Birth       ki1101329-Keneba           GAMBIA                         >=30              1       11    1541
Birth       ki1119695-PROBIT           BELARUS                        [20-30)           0     9934   13884
Birth       ki1119695-PROBIT           BELARUS                        [20-30)           1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        <20               0     1405   13884
Birth       ki1119695-PROBIT           BELARUS                        <20               1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        >=30              0     2540   13884
Birth       ki1119695-PROBIT           BELARUS                        >=30              1        1   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           0     8989   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           1      277   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20               0     2117   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20               1       83   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30              0     2245   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30              1       79   13790
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           0     8746   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           1      812   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20               0     7149   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20               1     1038   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30              0     1668   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30              1      190   19603
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
6 months    ki0047075b-MAL-ED          PERU                           [20-30)           0      132     273
6 months    ki0047075b-MAL-ED          PERU                           [20-30)           1        4     273
6 months    ki0047075b-MAL-ED          PERU                           <20               0       71     273
6 months    ki0047075b-MAL-ED          PERU                           <20               1        5     273
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
6 months    ki1000109-EE               PAKISTAN                       [20-30)           0      126     370
6 months    ki1000109-EE               PAKISTAN                       [20-30)           1       33     370
6 months    ki1000109-EE               PAKISTAN                       <20               0        0     370
6 months    ki1000109-EE               PAKISTAN                       <20               1        1     370
6 months    ki1000109-EE               PAKISTAN                       >=30              0      151     370
6 months    ki1000109-EE               PAKISTAN                       >=30              1       59     370
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)           0      399     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)           1       10     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20               0       64     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20               1        1     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30              0      106     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30              1        3     583
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
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)           0      364     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)           1        6     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20               0      100     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20               1        8     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30              0       79     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30              1        6     563
6 months    ki1119695-PROBIT           BELARUS                        [20-30)           0    11160   15761
6 months    ki1119695-PROBIT           BELARUS                        [20-30)           1      156   15761
6 months    ki1119695-PROBIT           BELARUS                        <20               0     1582   15761
6 months    ki1119695-PROBIT           BELARUS                        <20               1       38   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30              0     2776   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30              1       49   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           0     5262    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           1      219    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20               0     1198    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20               1       63    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30              0     1475    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30              1       63    8280
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
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)           0      134     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)           1       12     212
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
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)           0      146     225
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)           1       26     225
24 months   ki0047075b-MAL-ED          INDIA                          <20               0       31     225
24 months   ki0047075b-MAL-ED          INDIA                          <20               1        2     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30              0       20     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30              1        0     225
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
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              0       82     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              1       11     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           0       72     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           1       41     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              0       67     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              1       25     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           0      195     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           1      101     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20               0       25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20               1        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30              0       29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30              1       13     372
24 months   ki1000108-IRC              INDIA                          [20-30)           0      309     409
24 months   ki1000108-IRC              INDIA                          [20-30)           1       34     409
24 months   ki1000108-IRC              INDIA                          <20               0       33     409
24 months   ki1000108-IRC              INDIA                          <20               1        4     409
24 months   ki1000108-IRC              INDIA                          >=30              0       26     409
24 months   ki1000108-IRC              INDIA                          >=30              1        3     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)           0      220     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)           1       69     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20               0       41     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20               1        3     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30              0       73     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30              1       21     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)           0      373     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)           1       35     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20               0       59     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20               1        5     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30              0       96     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30              1        9     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           0      312     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           1       22     514
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
24 months   ki1101329-Keneba           GAMBIA                         [20-30)           0      736    1714
24 months   ki1101329-Keneba           GAMBIA                         [20-30)           1       54    1714
24 months   ki1101329-Keneba           GAMBIA                         <20               0      201    1714
24 months   ki1101329-Keneba           GAMBIA                         <20               1       16    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30              0      640    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30              1       67    1714
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)           0      291     499
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)           1       32     499
24 months   ki1113344-GMS-Nepal        NEPAL                          <20               0       85     499
24 months   ki1113344-GMS-Nepal        NEPAL                          <20               1       13     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30              0       69     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30              1        9     499
24 months   ki1119695-PROBIT           BELARUS                        [20-30)           0     2845    4035
24 months   ki1119695-PROBIT           BELARUS                        [20-30)           1       48    4035
24 months   ki1119695-PROBIT           BELARUS                        <20               0      360    4035
24 months   ki1119695-PROBIT           BELARUS                        <20               1        9    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30              0      765    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30              1        8    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           0      218     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           1       81     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20               0       43     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20               1       28     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30              0       64     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30              1       22     456
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)           0      301    1067
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)           1      227    1067
24 months   ki1135781-COHORTS          GUATEMALA                      <20               0       86    1067
24 months   ki1135781-COHORTS          GUATEMALA                      <20               1       67    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30              0      222    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30              1      164    1067
24 months   ki1135781-COHORTS          INDIA                          [20-30)           0     1994    3695
24 months   ki1135781-COHORTS          INDIA                          [20-30)           1      472    3695
24 months   ki1135781-COHORTS          INDIA                          <20               0      180    3695
24 months   ki1135781-COHORTS          INDIA                          <20               1       67    3695
24 months   ki1135781-COHORTS          INDIA                          >=30              0      752    3695
24 months   ki1135781-COHORTS          INDIA                          >=30              1      230    3695
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)           0     1070    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)           1      390    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <20               0      206    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <20               1       86    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30              0      480    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30              1      213    2445
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)           0      219     475
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)           1       31     475
24 months   ki1148112-LCNI-5           MALAWI                         <20               0       73     475
24 months   ki1148112-LCNI-5           MALAWI                         <20               1        7     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30              0      126     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30              1       19     475
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           0     3452    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           1      606    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20               0     3229    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20               1      626    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30              0      601    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30              1      113    8627


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/7032c34f-5d44-4d67-b849-f89c3dba2896/b2f5d2a2-d04f-4c24-947b-9ce4926e389d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7032c34f-5d44-4d67-b849-f89c3dba2896/b2f5d2a2-d04f-4c24-947b-9ce4926e389d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7032c34f-5d44-4d67-b849-f89c3dba2896/b2f5d2a2-d04f-4c24-947b-9ce4926e389d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7032c34f-5d44-4d67-b849-f89c3dba2896/b2f5d2a2-d04f-4c24-947b-9ce4926e389d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        [20-30)              NA                0.0156028    0.0064516   0.0247541
Birth       ki1101329-Keneba           GAMBIA        <20                  NA                0.0294118    0.0079395   0.0508841
Birth       ki1101329-Keneba           GAMBIA        >=30                 NA                0.0183946    0.0076213   0.0291680
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                0.0297673    0.0263079   0.0332266
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.0378110    0.0296966   0.0459254
Birth       ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0336778    0.0262759   0.0410798
Birth       ki1135781-COHORTS          INDIA         [20-30)              NA                0.0294147    0.0234935   0.0353359
Birth       ki1135781-COHORTS          INDIA         <20                  NA                0.0443211    0.0235345   0.0651077
Birth       ki1135781-COHORTS          INDIA         >=30                 NA                0.0252652    0.0160864   0.0344439
Birth       ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                0.0106479    0.0059227   0.0153732
Birth       ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.0237099    0.0085749   0.0388449
Birth       ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0196655    0.0104445   0.0288865
Birth       kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                0.0858691    0.0797085   0.0920298
Birth       kiGH5241-JiVitA-3          BANGLADESH    <20                  NA                0.1237808    0.1161693   0.1313922
Birth       kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.1068395    0.0919980   0.1216809
6 months    ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                0.0914746    0.0734132   0.1095360
6 months    ki1000304b-SAS-CompFeed    INDIA         <20                  NA                0.0873281    0.0533784   0.1212778
6 months    ki1000304b-SAS-CompFeed    INDIA         >=30                 NA                0.1343611    0.0847621   0.1839602
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [20-30)              NA                0.1264368    0.0860644   0.1668091
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <20                  NA                0.1388889    0.0257707   0.2520071
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=30                 NA                0.1927711    0.1077943   0.2777479
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-30)              NA                0.0216450    0.0083662   0.0349238
6 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  NA                0.0534351    0.0148957   0.0919745
6 months    ki1017093c-NIH-Crypto      BANGLADESH    >=30                 NA                0.0491803    0.0107816   0.0875791
6 months    ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                0.0162162    0.0033350   0.0290975
6 months    ki1113344-GMS-Nepal        NEPAL         <20                  NA                0.0740741    0.0246381   0.1235101
6 months    ki1113344-GMS-Nepal        NEPAL         >=30                 NA                0.0705882    0.0160884   0.1250880
6 months    ki1119695-PROBIT           BELARUS       [20-30)              NA                0.0137811    0.0092185   0.0183437
6 months    ki1119695-PROBIT           BELARUS       <20                  NA                0.0233409    0.0127219   0.0339599
6 months    ki1119695-PROBIT           BELARUS       >=30                 NA                0.0174674    0.0088219   0.0261129
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                0.0398779    0.0346977   0.0450581
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.0497957    0.0377373   0.0618541
6 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0415991    0.0316510   0.0515471
6 months    ki1135781-COHORTS          GUATEMALA     [20-30)              NA                0.1234043    0.0936540   0.1531545
6 months    ki1135781-COHORTS          GUATEMALA     <20                  NA                0.0762712    0.0283546   0.1241877
6 months    ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.1528150    0.1162815   0.1893486
6 months    ki1135781-COHORTS          INDIA         [20-30)              NA                0.0474764    0.0402146   0.0547383
6 months    ki1135781-COHORTS          INDIA         <20                  NA                0.0499000    0.0279242   0.0718758
6 months    ki1135781-COHORTS          INDIA         >=30                 NA                0.0525635    0.0396208   0.0655062
6 months    ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                0.0350796    0.0261489   0.0440103
6 months    ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.0560050    0.0304581   0.0815520
6 months    ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0726075    0.0543211   0.0908938
6 months    kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                0.0528462    0.0474816   0.0582107
6 months    kiGH5241-JiVitA-3          BANGLADESH    <20                  NA                0.0677416    0.0619077   0.0735754
6 months    kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.0618518    0.0477399   0.0759638
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-30)              NA                0.0821918    0.0375349   0.1268487
24 months   ki0047075b-MAL-ED          BANGLADESH    <20                  NA                0.1724138    0.0346077   0.3102199
24 months   ki0047075b-MAL-ED          BANGLADESH    >=30                 NA                0.2432432    0.1046722   0.3818143
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-30)              NA                0.3412162    0.2871317   0.3953007
24 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  NA                0.2647059    0.1162131   0.4131987
24 months   ki1000108-CMC-V-BCS-2002   INDIA         >=30                 NA                0.3095238    0.1695234   0.4495242
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-30)              NA                0.0857843    0.0585872   0.1129814
24 months   ki1017093b-PROVIDE         BANGLADESH    <20                  NA                0.0781250    0.0123190   0.1439310
24 months   ki1017093b-PROVIDE         BANGLADESH    >=30                 NA                0.0857143    0.0321226   0.1393060
24 months   ki1101329-Keneba           GAMBIA        [20-30)              NA                0.0683355    0.0504830   0.0861881
24 months   ki1101329-Keneba           GAMBIA        <20                  NA                0.0799688    0.0414020   0.1185356
24 months   ki1101329-Keneba           GAMBIA        >=30                 NA                0.0946382    0.0730141   0.1162623
24 months   ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                0.0990712    0.0664574   0.1316850
24 months   ki1113344-GMS-Nepal        NEPAL         <20                  NA                0.1326531    0.0654288   0.1998773
24 months   ki1113344-GMS-Nepal        NEPAL         >=30                 NA                0.1153846    0.0444125   0.1863567
24 months   ki1119695-PROBIT           BELARUS       [20-30)              NA                0.0165918    0.0054891   0.0276944
24 months   ki1119695-PROBIT           BELARUS       <20                  NA                0.0243902   -0.0363550   0.0851355
24 months   ki1119695-PROBIT           BELARUS       >=30                 NA                0.0103493    0.0006900   0.0200086
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                0.2715091    0.2211213   0.3218970
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.3980896    0.2808292   0.5153499
24 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.2573491    0.1655809   0.3491173
24 months   ki1135781-COHORTS          GUATEMALA     [20-30)              NA                0.4361132    0.3931941   0.4790323
24 months   ki1135781-COHORTS          GUATEMALA     <20                  NA                0.4521376    0.3663172   0.5379580
24 months   ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.4234904    0.3746296   0.4723511
24 months   ki1135781-COHORTS          INDIA         [20-30)              NA                0.1931112    0.1774605   0.2087619
24 months   ki1135781-COHORTS          INDIA         <20                  NA                0.2693532    0.2137645   0.3249418
24 months   ki1135781-COHORTS          INDIA         >=30                 NA                0.2297250    0.2029869   0.2564631
24 months   ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                0.2690659    0.2465004   0.2916315
24 months   ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.2745529    0.2249830   0.3241228
24 months   ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.3103424    0.2766516   0.3440333
24 months   ki1148112-LCNI-5           MALAWI        [20-30)              NA                0.1240000    0.0831023   0.1648977
24 months   ki1148112-LCNI-5           MALAWI        <20                  NA                0.0875000    0.0255158   0.1494842
24 months   ki1148112-LCNI-5           MALAWI        >=30                 NA                0.1310345    0.0760531   0.1860159
24 months   kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                0.1536824    0.1422818   0.1650831
24 months   kiGH5241-JiVitA-3          BANGLADESH    <20                  NA                0.1566822    0.1439301   0.1694344
24 months   kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.1641584    0.1370481   0.1912688


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.0188189   0.0120322   0.0256057
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0318347   0.0289044   0.0347649
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0292683   0.0244566   0.0340800
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1040657   0.0994001   0.1087313
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0355240   0.0202206   0.0508273
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0416667   0.0373623   0.0459711
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0487357   0.0427089   0.0547626
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606962   0.0568440   0.0645485
24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1226415   0.0783812   0.1669018
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0799300   0.0670879   0.0927720
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0161090   0.0034156   0.0288025
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.2872807   0.2457035   0.3288579
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4292409   0.3995279   0.4589539
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.2081191   0.1950277   0.2212105
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.1200000   0.0907456   0.1492544
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1559059   0.1471444   0.1646673


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA        <20                  [20-30)           1.8850267   0.7389451    4.808647
Birth       ki1101329-Keneba           GAMBIA        >=30                 [20-30)           1.1789298   0.5146544    2.700600
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <20                  [20-30)           1.2702208   0.9952322    1.621190
Birth       ki1126311-ZVITAMBO         ZIMBABWE      >=30                 [20-30)           1.1313717   0.8822849    1.450781
Birth       ki1135781-COHORTS          INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA         <20                  [20-30)           1.5067666   0.9044306    2.510249
Birth       ki1135781-COHORTS          INDIA         >=30                 [20-30)           0.8589303   0.5669587    1.301261
Birth       ki1135781-COHORTS          PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   <20                  [20-30)           2.2267102   1.0234635    4.844568
Birth       ki1135781-COHORTS          PHILIPPINES   >=30                 [20-30)           1.8468799   0.9685807    3.521612
Birth       kiGH5241-JiVitA-3          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    <20                  [20-30)           1.4415049   1.3155751    1.579489
Birth       kiGH5241-JiVitA-3          BANGLADESH    >=30                 [20-30)           1.2442127   1.0622199    1.457387
6 months    ki1000304b-SAS-CompFeed    INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         <20                  [20-30)           0.9546708   0.6016596    1.514804
6 months    ki1000304b-SAS-CompFeed    INDIA         >=30                 [20-30)           1.4688359   1.1479334    1.879446
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <20                  [20-30)           1.0984848   0.4580048    2.634621
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=30                 [20-30)           1.5246440   0.8846589    2.627611
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  [20-30)           2.4687023   0.9577527    6.363324
6 months    ki1017093c-NIH-Crypto      BANGLADESH    >=30                 [20-30)           2.2721311   0.8417772    6.132953
6 months    ki1113344-GMS-Nepal        NEPAL         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL         <20                  [20-30)           4.5679007   1.6186032   12.891187
6 months    ki1113344-GMS-Nepal        NEPAL         >=30                 [20-30)           4.3529406   1.4377952   13.178576
6 months    ki1119695-PROBIT           BELARUS       [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS       <20                  [20-30)           1.6936860   1.2146530    2.361639
6 months    ki1119695-PROBIT           BELARUS       >=30                 [20-30)           1.2674870   0.9129015    1.759799
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  [20-30)           1.2487039   0.9487717    1.643453
6 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 [20-30)           1.0431607   0.7947258    1.369258
6 months    ki1135781-COHORTS          GUATEMALA     [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA     <20                  [20-30)           0.6180596   0.3153483    1.211351
6 months    ki1135781-COHORTS          GUATEMALA     >=30                 [20-30)           1.2383286   0.8818286    1.738952
6 months    ki1135781-COHORTS          INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA         <20                  [20-30)           1.0510470   0.6593399    1.675463
6 months    ki1135781-COHORTS          INDIA         >=30                 [20-30)           1.1071495   0.8285544    1.479420
6 months    ki1135781-COHORTS          PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   <20                  [20-30)           1.5965138   0.9490712    2.685632
6 months    ki1135781-COHORTS          PHILIPPINES   >=30                 [20-30)           2.0697932   1.4491115    2.956325
6 months    kiGH5241-JiVitA-3          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    <20                  [20-30)           1.2818636   1.1232590    1.462863
6 months    kiGH5241-JiVitA-3          BANGLADESH    >=30                 [20-30)           1.1704131   0.9126713    1.500942
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH    <20                  [20-30)           2.0977011   0.7980234    5.514061
24 months   ki0047075b-MAL-ED          BANGLADESH    >=30                 [20-30)           2.9594595   1.3468541    6.502858
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  [20-30)           0.7757717   0.4330799    1.389632
24 months   ki1000108-CMC-V-BCS-2002   INDIA         >=30                 [20-30)           0.9071193   0.5617158    1.464914
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    <20                  [20-30)           0.9107143   0.3702660    2.240012
24 months   ki1017093b-PROVIDE         BANGLADESH    >=30                 [20-30)           0.9991837   0.4956717    2.014172
24 months   ki1101329-Keneba           GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA        <20                  [20-30)           1.1702369   0.6763537    2.024761
24 months   ki1101329-Keneba           GAMBIA        >=30                 [20-30)           1.3849051   0.9792812    1.958541
24 months   ki1113344-GMS-Nepal        NEPAL         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL         <20                  [20-30)           1.3389668   0.7316850    2.450279
24 months   ki1113344-GMS-Nepal        NEPAL         >=30                 [20-30)           1.1646634   0.5797189    2.339825
24 months   ki1119695-PROBIT           BELARUS       [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS       <20                  [20-30)           1.4700203   0.1869392   11.559692
24 months   ki1119695-PROBIT           BELARUS       >=30                 [20-30)           0.6237602   0.1955718    1.989433
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  [20-30)           1.4662105   1.0356878    2.075696
24 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 [20-30)           0.9478469   0.6352399    1.414290
24 months   ki1135781-COHORTS          GUATEMALA     [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA     <20                  [20-30)           1.0367438   0.8373197    1.283664
24 months   ki1135781-COHORTS          GUATEMALA     >=30                 [20-30)           0.9710561   0.8363121    1.127510
24 months   ki1135781-COHORTS          INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA         <20                  [20-30)           1.3948086   1.1176454    1.740705
24 months   ki1135781-COHORTS          INDIA         >=30                 [20-30)           1.1895995   1.0325614    1.370521
24 months   ki1135781-COHORTS          PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   <20                  [20-30)           1.0203926   0.8375376    1.243169
24 months   ki1135781-COHORTS          PHILIPPINES   >=30                 [20-30)           1.1534066   1.0074642    1.320490
24 months   ki1148112-LCNI-5           MALAWI        [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI        <20                  [20-30)           0.7056453   0.3230168    1.541515
24 months   ki1148112-LCNI-5           MALAWI        >=30                 [20-30)           1.0567297   0.6196961    1.801976
24 months   kiGH5241-JiVitA-3          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    <20                  [20-30)           1.0195197   0.9198223    1.130023
24 months   kiGH5241-JiVitA-3          BANGLADESH    >=30                 [20-30)           1.0681668   0.8956404    1.273927


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        [20-30)              NA                 0.0032161   -0.0040763   0.0105085
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0020674   -0.0000398   0.0041746
Birth       ki1135781-COHORTS          INDIA         [20-30)              NA                -0.0001464   -0.0035484   0.0032556
Birth       ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.0044340    0.0005970   0.0082711
Birth       kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.0181966    0.0135827   0.0228104
6 months    ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                 0.0043338   -0.0012877   0.0099554
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [20-30)              NA                 0.0156685   -0.0093633   0.0407002
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-30)              NA                 0.0105228   -0.0002457   0.0212913
6 months    ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                 0.0193078    0.0058160   0.0327995
6 months    ki1119695-PROBIT           BELARUS       [20-30)              NA                 0.0016367   -0.0000975   0.0033709
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0017888   -0.0013396   0.0049171
6 months    ki1135781-COHORTS          GUATEMALA     [20-30)              NA                 0.0056280   -0.0160294   0.0272854
6 months    ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0012593   -0.0030084   0.0055269
6 months    ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.0136649    0.0066131   0.0207167
6 months    kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.0078501    0.0036847   0.0120154
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-30)              NA                 0.0404497    0.0057160   0.0751834
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-30)              NA                -0.0105711   -0.0342711   0.0131290
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-30)              NA                -0.0008623   -0.0154184   0.0136938
24 months   ki1101329-Keneba           GAMBIA        [20-30)              NA                 0.0115945   -0.0023464   0.0255353
24 months   ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                 0.0091452   -0.0116172   0.0299077
24 months   ki1119695-PROBIT           BELARUS       [20-30)              NA                -0.0004827   -0.0048602   0.0038948
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0157716   -0.0145050   0.0460482
24 months   ki1135781-COHORTS          GUATEMALA     [20-30)              NA                -0.0068723   -0.0372612   0.0235166
24 months   ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0150079    0.0054054   0.0246104
24 months   ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.0127336   -0.0015638   0.0270311
24 months   ki1148112-LCNI-5           MALAWI        [20-30)              NA                -0.0040000   -0.0317089   0.0237090
24 months   kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.0022235   -0.0057973   0.0102442


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        [20-30)              NA                 0.1708975   -0.3154842   0.4774465
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0649419   -0.0033893   0.1286198
Birth       ki1135781-COHORTS          INDIA         [20-30)              NA                -0.0050023   -0.1282191   0.1047576
Birth       ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.2939951    0.0085169   0.4972755
Birth       kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.1748566    0.1295575   0.2177983
6 months    ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                 0.0452343   -0.0141263   0.1011203
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [20-30)              NA                 0.1102597   -0.0827152   0.2688402
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-30)              NA                 0.3271222   -0.0651509   0.5749291
6 months    ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                 0.5435135    0.1152071   0.7644873
6 months    ki1119695-PROBIT           BELARUS       [20-30)              NA                 0.1061552    0.0059062   0.1962946
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0429302   -0.0350519   0.1150370
6 months    ki1135781-COHORTS          GUATEMALA     [20-30)              NA                 0.0436170   -0.1397263   0.1974666
6 months    ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0258390   -0.0657260   0.1095369
6 months    ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.2803371    0.1289175   0.4054355
6 months    kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.1293334    0.0583437   0.1949713
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-30)              NA                 0.3298209    0.0090798   0.5467445
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-30)              NA                -0.0319710   -0.1062002   0.0372772
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-30)              NA                -0.0101541   -0.1969396   0.1474831
24 months   ki1101329-Keneba           GAMBIA        [20-30)              NA                 0.1450576   -0.0470901   0.3019451
24 months   ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                 0.0845087   -0.1278004   0.2568504
24 months   ki1119695-PROBIT           BELARUS       [20-30)              NA                -0.0299662   -0.3577463   0.2186829
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0548995   -0.0565510   0.1545936
24 months   ki1135781-COHORTS          GUATEMALA     [20-30)              NA                -0.0160104   -0.0893179   0.0523637
24 months   ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0721120    0.0249256   0.1170149
24 months   ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.0451869   -0.0069276   0.0946042
24 months   ki1148112-LCNI-5           MALAWI        [20-30)              NA                -0.0333333   -0.2919461   0.1735122
24 months   kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.0142616   -0.0384905   0.0643341

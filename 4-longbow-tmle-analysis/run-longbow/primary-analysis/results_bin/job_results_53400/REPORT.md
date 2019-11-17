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

agecat      studyid                    country                        mage       stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      133     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1       27     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20              0       22     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20              1        8     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             0       32     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             1        9     231
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)          0       34      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        7      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <20              0        8      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <20              1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             0       14      65
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             1        2      65
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)          0       30      47
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)          1        7      47
Birth       ki0047075b-MAL-ED          INDIA                          <20              0        5      47
Birth       ki0047075b-MAL-ED          INDIA                          <20              1        3      47
Birth       ki0047075b-MAL-ED          INDIA                          >=30             0        2      47
Birth       ki0047075b-MAL-ED          INDIA                          >=30             1        0      47
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)          0       21      27
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)          1        1      27
Birth       ki0047075b-MAL-ED          NEPAL                          <20              0        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          <20              1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             0        4      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             1        1      27
Birth       ki0047075b-MAL-ED          PERU                           [20-30)          0      108     233
Birth       ki0047075b-MAL-ED          PERU                           [20-30)          1        6     233
Birth       ki0047075b-MAL-ED          PERU                           <20              0       53     233
Birth       ki0047075b-MAL-ED          PERU                           <20              1       13     233
Birth       ki0047075b-MAL-ED          PERU                           >=30             0       46     233
Birth       ki0047075b-MAL-ED          PERU                           >=30             1        7     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0       62     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1        5     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       20     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        3     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       31     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        2     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0       57     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1       15     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0        7     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        0     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       38     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        8     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0       65      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1       14      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20              0        7      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        2      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0        3      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        1      92
Birth       ki1000108-IRC              INDIA                          [20-30)          0      288     388
Birth       ki1000108-IRC              INDIA                          [20-30)          1       37     388
Birth       ki1000108-IRC              INDIA                          <20              0       28     388
Birth       ki1000108-IRC              INDIA                          <20              1        7     388
Birth       ki1000108-IRC              INDIA                          >=30             0       27     388
Birth       ki1000108-IRC              INDIA                          >=30             1        1     388
Birth       ki1000109-EE               PAKISTAN                       [20-30)          0       61     239
Birth       ki1000109-EE               PAKISTAN                       [20-30)          1       33     239
Birth       ki1000109-EE               PAKISTAN                       <20              0        0     239
Birth       ki1000109-EE               PAKISTAN                       <20              1        1     239
Birth       ki1000109-EE               PAKISTAN                       >=30             0       79     239
Birth       ki1000109-EE               PAKISTAN                       >=30             1       65     239
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)          0      694    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)          1      259    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20              0      108    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20              1       53    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             0      101    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             1       37    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      336     606
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1       74     606
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20              0       62     606
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20              1        8     606
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             0      111     606
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             1       15     606
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      341     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1       30     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20              0       61     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20              1        6     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30             0       89     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30             1       12     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0      422     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1       61     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20              0      105     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20              1       25     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0      104     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1       15     732
Birth       ki1101329-Keneba           GAMBIA                         [20-30)          0      673    1543
Birth       ki1101329-Keneba           GAMBIA                         [20-30)          1       32    1543
Birth       ki1101329-Keneba           GAMBIA                         <20              0      217    1543
Birth       ki1101329-Keneba           GAMBIA                         <20              1       21    1543
Birth       ki1101329-Keneba           GAMBIA                         >=30             0      570    1543
Birth       ki1101329-Keneba           GAMBIA                         >=30             1       30    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      385     696
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)          1       61     696
Birth       ki1113344-GMS-Nepal        NEPAL                          <20              0      104     696
Birth       ki1113344-GMS-Nepal        NEPAL                          <20              1       45     696
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30             0       85     696
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30             1       16     696
Birth       ki1119695-PROBIT           BELARUS                        [20-30)          0     9917   13890
Birth       ki1119695-PROBIT           BELARUS                        [20-30)          1       23   13890
Birth       ki1119695-PROBIT           BELARUS                        <20              0     1402   13890
Birth       ki1119695-PROBIT           BELARUS                        <20              1        6   13890
Birth       ki1119695-PROBIT           BELARUS                        >=30             0     2538   13890
Birth       ki1119695-PROBIT           BELARUS                        >=30             1        4   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     8345   13835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      954   13835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1952   13835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20              1      253   13835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2110   13835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      221   13835
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)          0      386     852
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)          1       19     852
Birth       ki1135781-COHORTS          GUATEMALA                      <20              0      112     852
Birth       ki1135781-COHORTS          GUATEMALA                      <20              1        9     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30             0      304     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30             1       22     852
Birth       ki1135781-COHORTS          INDIA                          [20-30)          0     2795    4715
Birth       ki1135781-COHORTS          INDIA                          [20-30)          1      385    4715
Birth       ki1135781-COHORTS          INDIA                          <20              0      309    4715
Birth       ki1135781-COHORTS          INDIA                          <20              1       59    4715
Birth       ki1135781-COHORTS          INDIA                          >=30             0     1053    4715
Birth       ki1135781-COHORTS          INDIA                          >=30             1      114    4715
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)          0     1725    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)          1       96    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <20              0      342    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <20              1       36    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30             0      796    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30             1       55    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0     7657   22444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1     3196   22444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20              0     5927   22444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20              1     3545   22444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     1477   22444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      642   22444
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      136     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1       29     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20              0       29     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20              1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             0       32     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             1        9     241
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)          0      120     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        5     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20              0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             0       46     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          0      146     234
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          1       33     234
6 months    ki0047075b-MAL-ED          INDIA                          <20              0       26     234
6 months    ki0047075b-MAL-ED          INDIA                          <20              1        8     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30             0       19     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30             1        2     234
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)          0      176     236
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)          1        9     236
6 months    ki0047075b-MAL-ED          NEPAL                          <20              0        4     236
6 months    ki0047075b-MAL-ED          NEPAL                          <20              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30             0       44     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30             1        2     236
6 months    ki0047075b-MAL-ED          PERU                           [20-30)          0      106     273
6 months    ki0047075b-MAL-ED          PERU                           [20-30)          1       30     273
6 months    ki0047075b-MAL-ED          PERU                           <20              0       60     273
6 months    ki0047075b-MAL-ED          PERU                           <20              1       16     273
6 months    ki0047075b-MAL-ED          PERU                           >=30             0       47     273
6 months    ki0047075b-MAL-ED          PERU                           >=30             1       14     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0       94     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1       24     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       32     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1       10     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       78     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1       16     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0       95     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1       33     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0       11     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       82     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1       22     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0      205     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1       88     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       23     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20              1       10     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1       13     369
6 months    ki1000108-IRC              INDIA                          [20-30)          0      255     407
6 months    ki1000108-IRC              INDIA                          [20-30)          1       87     407
6 months    ki1000108-IRC              INDIA                          <20              0       29     407
6 months    ki1000108-IRC              INDIA                          <20              1        7     407
6 months    ki1000108-IRC              INDIA                          >=30             0       23     407
6 months    ki1000108-IRC              INDIA                          >=30             1        6     407
6 months    ki1000109-EE               PAKISTAN                       [20-30)          0       83     371
6 months    ki1000109-EE               PAKISTAN                       [20-30)          1       76     371
6 months    ki1000109-EE               PAKISTAN                       <20              0        0     371
6 months    ki1000109-EE               PAKISTAN                       <20              1        1     371
6 months    ki1000109-EE               PAKISTAN                       >=30             0      107     371
6 months    ki1000109-EE               PAKISTAN                       >=30             1      104     371
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)          0      731    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)          1      286    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20              0      127    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20              1       44    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             0       98    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             1       50    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          0      149     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          1      112     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20              0       20     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20              1       16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             0       48     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             1       35     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      260     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1       97     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20              0       51     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20              1       10     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             0       81     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             1       36     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      362     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1       62     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              0       51     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              1       15     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             0       95     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             1       19     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0      369     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1       93     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20              0      100     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20              1       31     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0       96     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1       26     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1183    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1      135    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      132    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1       14    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      503    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1       45    2012
6 months    ki1101329-Keneba           GAMBIA                         [20-30)          0      869    2080
6 months    ki1101329-Keneba           GAMBIA                         [20-30)          1      118    2080
6 months    ki1101329-Keneba           GAMBIA                         <20              0      254    2080
6 months    ki1101329-Keneba           GAMBIA                         <20              1       34    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30             0      664    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30             1      141    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          0      124     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          1       47     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20              0       25     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20              1       21     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       41     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             1       18     276
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      296     564
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          1       75     564
6 months    ki1113344-GMS-Nepal        NEPAL                          <20              0       80     564
6 months    ki1113344-GMS-Nepal        NEPAL                          <20              1       28     564
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             0       66     564
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             1       19     564
6 months    ki1119695-PROBIT           BELARUS                        [20-30)          0    10632   15761
6 months    ki1119695-PROBIT           BELARUS                        [20-30)          1      684   15761
6 months    ki1119695-PROBIT           BELARUS                        <20              0     1482   15761
6 months    ki1119695-PROBIT           BELARUS                        <20              1      138   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30             0     2659   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30             1      166   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     4837    8653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      901    8653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1073    8653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              1      242    8653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     1335    8653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      265    8653
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)          0      286     961
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)          1      184     961
6 months    ki1135781-COHORTS          GUATEMALA                      <20              0       70     961
6 months    ki1135781-COHORTS          GUATEMALA                      <20              1       48     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30             0      211     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30             1      162     961
6 months    ki1135781-COHORTS          INDIA                          [20-30)          0     2712    4904
6 months    ki1135781-COHORTS          INDIA                          [20-30)          1      619    4904
6 months    ki1135781-COHORTS          INDIA                          <20              0      288    4904
6 months    ki1135781-COHORTS          INDIA                          <20              1       83    4904
6 months    ki1135781-COHORTS          INDIA                          >=30             0      943    4904
6 months    ki1135781-COHORTS          INDIA                          >=30             1      259    4904
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)          0     1288    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)          1      313    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <20              0      249    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <20              1       82    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             0      599    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             1      177    2708
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)          0      228     669
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)          1      136     669
6 months    ki1148112-LCNI-5           MALAWI                         <20              0       74     669
6 months    ki1148112-LCNI-5           MALAWI                         <20              1       33     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30             0      117     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30             1       81     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0     5929   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1     1750   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20              0     5729   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20              1     2176   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             0      922   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      299   16805
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0       82     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1       64     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              0       12     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              1       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             1       20     212
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          0       98     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        4     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20              0       25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20              1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             0       39     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          0       92     225
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          1       80     225
24 months   ki0047075b-MAL-ED          INDIA                          <20              0       21     225
24 months   ki0047075b-MAL-ED          INDIA                          <20              1       12     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30             0       16     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30             1        4     225
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          0      142     228
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          1       37     228
24 months   ki0047075b-MAL-ED          NEPAL                          <20              0        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          <20              1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30             0       33     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30             1       12     228
24 months   ki0047075b-MAL-ED          PERU                           [20-30)          0       64     201
24 months   ki0047075b-MAL-ED          PERU                           [20-30)          1       34     201
24 months   ki0047075b-MAL-ED          PERU                           <20              0       33     201
24 months   ki0047075b-MAL-ED          PERU                           <20              1       22     201
24 months   ki0047075b-MAL-ED          PERU                           >=30             0       30     201
24 months   ki0047075b-MAL-ED          PERU                           >=30             1       18     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0       68     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1       38     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       61     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1       32     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0       28     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1       85     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       29     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1       63     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0       81     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1      214     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       13     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              1       21     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       11     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1       31     371
24 months   ki1000108-IRC              INDIA                          [20-30)          0      199     409
24 months   ki1000108-IRC              INDIA                          [20-30)          1      144     409
24 months   ki1000108-IRC              INDIA                          <20              0       20     409
24 months   ki1000108-IRC              INDIA                          <20              1       17     409
24 months   ki1000108-IRC              INDIA                          >=30             0       18     409
24 months   ki1000108-IRC              INDIA                          >=30             1       11     409
24 months   ki1000109-EE               PAKISTAN                       [20-30)          0       25     167
24 months   ki1000109-EE               PAKISTAN                       [20-30)          1       40     167
24 months   ki1000109-EE               PAKISTAN                       <20              0        0     167
24 months   ki1000109-EE               PAKISTAN                       <20              1        1     167
24 months   ki1000109-EE               PAKISTAN                       >=30             0       24     167
24 months   ki1000109-EE               PAKISTAN                       >=30             1       77     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      123     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1      166     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              0       21     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              1       23     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             0       40     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             1       54     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      277     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1      132     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              0       44     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              1       20     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             0       67     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             1       38     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0      244     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1       90     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              0       80     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              1       21     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0       58     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1       21     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        0       6
24 months   ki1101329-Keneba           GAMBIA                         [20-30)          0      534    1714
24 months   ki1101329-Keneba           GAMBIA                         [20-30)          1      256    1714
24 months   ki1101329-Keneba           GAMBIA                         <20              0      145    1714
24 months   ki1101329-Keneba           GAMBIA                         <20              1       72    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30             0      457    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30             1      250    1714
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      177     488
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          1      141     488
24 months   ki1113344-GMS-Nepal        NEPAL                          <20              0       50     488
24 months   ki1113344-GMS-Nepal        NEPAL                          <20              1       44     488
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0       42     488
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1       34     488
24 months   ki1119695-PROBIT           BELARUS                        [20-30)          0     2651    4035
24 months   ki1119695-PROBIT           BELARUS                        [20-30)          1      242    4035
24 months   ki1119695-PROBIT           BELARUS                        <20              0      319    4035
24 months   ki1119695-PROBIT           BELARUS                        <20              1       50    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30             0      721    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30             1       52    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0      720    1638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      381    1638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              0      134    1638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       85    1638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0      215    1638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      103    1638
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          0       89    1064
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          1      438    1064
24 months   ki1135781-COHORTS          GUATEMALA                      <20              0       27    1064
24 months   ki1135781-COHORTS          GUATEMALA                      <20              1      125    1064
24 months   ki1135781-COHORTS          GUATEMALA                      >=30             0       84    1064
24 months   ki1135781-COHORTS          GUATEMALA                      >=30             1      301    1064
24 months   ki1135781-COHORTS          INDIA                          [20-30)          0     1136    3692
24 months   ki1135781-COHORTS          INDIA                          [20-30)          1     1327    3692
24 months   ki1135781-COHORTS          INDIA                          <20              0       74    3692
24 months   ki1135781-COHORTS          INDIA                          <20              1      173    3692
24 months   ki1135781-COHORTS          INDIA                          >=30             0      387    3692
24 months   ki1135781-COHORTS          INDIA                          >=30             1      595    3692
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          0      567    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          1      893    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <20              0       98    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <20              1      194    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             0      257    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             1      436    2445
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          0      134     475
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          1      116     475
24 months   ki1148112-LCNI-5           MALAWI                         <20              0       48     475
24 months   ki1148112-LCNI-5           MALAWI                         <20              1       32     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30             0       78     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30             1       67     475
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0     2165    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1     1893    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              0     1872    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              1     1983    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             0      352    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      362    8627


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/1b51d8b8-2c04-4505-985f-c58cb0669b06/e3b63a3c-c052-4fc5-8269-48cd7034c0b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1b51d8b8-2c04-4505-985f-c58cb0669b06/e3b63a3c-c052-4fc5-8269-48cd7034c0b1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1b51d8b8-2c04-4505-985f-c58cb0669b06/e3b63a3c-c052-4fc5-8269-48cd7034c0b1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1b51d8b8-2c04-4505-985f-c58cb0669b06/e3b63a3c-c052-4fc5-8269-48cd7034c0b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1687500   0.1105909   0.2269091
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2666667   0.1080808   0.4252526
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2195122   0.0925394   0.3464850
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.0526316   0.0115533   0.0937099
Birth       ki0047075b-MAL-ED          PERU                           <20                  NA                0.1969697   0.1008138   0.2931256
Birth       ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1320755   0.0407281   0.2234229
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2714729   0.2377571   0.3051888
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.3142274   0.2352932   0.3931616
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2611493   0.1746306   0.3476679
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.1804878   0.1432301   0.2177455
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1142857   0.0396923   0.1888791
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1190476   0.0624552   0.1756400
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.0808625   0.0530956   0.1086295
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.0895522   0.0211170   0.1579875
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1188119   0.0556500   0.1819737
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.1266731   0.0970352   0.1563110
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1915854   0.1238785   0.2592924
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1309015   0.0705831   0.1912199
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0442190   0.0291388   0.0592992
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                0.0773021   0.0415447   0.1130595
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0508714   0.0322086   0.0695342
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1356914   0.1037033   0.1676795
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2940777   0.2194852   0.3686702
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1529152   0.0809711   0.2248593
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1021342   0.0959330   0.1083354
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1103079   0.0967399   0.1238759
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1010610   0.0881326   0.1139894
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0469136   0.0263077   0.0675195
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0743802   0.0276007   0.1211596
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0674847   0.0402373   0.0947320
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1212744   0.1098787   0.1326700
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                0.1572127   0.1197802   0.1946452
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.0989206   0.0815566   0.1162847
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0536685   0.0432373   0.0640997
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0826062   0.0548373   0.1103751
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0654538   0.0489217   0.0819859
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.2977687   0.2879266   0.3076108
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.3677814   0.3573701   0.3781928
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.3127126   0.2912694   0.3341557
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1757576   0.1175615   0.2339536
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.1714286   0.0463095   0.2965477
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2195122   0.0925509   0.3464735
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.2220218   0.1523464   0.2916972
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.2250697   0.1355820   0.3145575
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.2591992   0.1491680   0.3692303
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.1992654   0.1259107   0.2726202
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.2311152   0.0997473   0.3624832
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1744565   0.0972425   0.2516706
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.3003413   0.2477814   0.3529012
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.3030303   0.1460192   0.4600414
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3023256   0.1648685   0.4397826
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.2543860   0.2081720   0.3005999
6 months    ki1000108-IRC              INDIA                          <20                  NA                0.1944444   0.0650020   0.3238868
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592835   0.3545096
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2811286   0.2559007   0.3063565
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2610851   0.2206109   0.3015593
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3290279   0.2439559   0.4141000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.4268797   0.3671890   0.4865704
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.3365439   0.1611205   0.5119674
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4149178   0.3094277   0.5204080
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2732337   0.2272847   0.3191826
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1673426   0.0762782   0.2584070
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3082680   0.2268562   0.3896798
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1470080   0.1134382   0.1805777
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2213603   0.1188745   0.3238462
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1710331   0.1030834   0.2389827
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.2045939   0.1677484   0.2414395
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2200985   0.1443694   0.2958276
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2241896   0.1495029   0.2988763
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1024448   0.0860657   0.1188239
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0890344   0.0415688   0.1364999
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0857021   0.0624206   0.1089836
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1208898   0.1000204   0.1417592
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1226163   0.0806832   0.1645495
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1692386   0.1434393   0.1950379
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.2787307   0.2112967   0.3461647
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.4590592   0.3089121   0.6092063
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.3087716   0.1896084   0.4279348
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.2019974   0.1610611   0.2429337
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2614514   0.1778258   0.3450770
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2238310   0.1339763   0.3136857
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0606261   0.0480008   0.0732514
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0823278   0.0555720   0.1090835
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0603105   0.0416378   0.0789831
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1553592   0.1459590   0.1647595
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1697853   0.1492080   0.1903626
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1784297   0.1588881   0.1979713
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.3917415   0.3480294   0.4354536
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.3987000   0.3033268   0.4940731
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4167806   0.3678469   0.4657143
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1857473   0.1725237   0.1989708
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.2249387   0.1819962   0.2678812
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2095876   0.1864468   0.2327284
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1970046   0.1775379   0.2164714
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2319860   0.1869034   0.2770686
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2279336   0.1989502   0.2569171
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.3732408   0.3240111   0.4224705
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3202106   0.2332163   0.4072050
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4239664   0.3562755   0.4916574
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.2341794   0.2234975   0.2448613
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2672139   0.2562414   0.2781864
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2581722   0.2337391   0.2826052
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.4442275   0.3651565   0.5232984
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.5936930   0.4116780   0.7757080
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5386173   0.3791175   0.6981172
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.3320166   0.2391540   0.4248792
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.4145578   0.2823253   0.5467902
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.3835528   0.2464470   0.5206586
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.3614170   0.2691673   0.4536668
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.3759476   0.2204329   0.5314623
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3518743   0.2540965   0.4496521
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.7254237   0.6744260   0.7764214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.6176471   0.4540795   0.7812146
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7380952   0.6049464   0.8712441
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.4198251   0.3675317   0.4721184
24 months   ki1000108-IRC              INDIA                          <20                  NA                0.4594595   0.2986852   0.6202337
24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3793103   0.2024969   0.5561238
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.5773156   0.5211448   0.6334863
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.4780745   0.3249180   0.6312310
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5929127   0.4996404   0.6861850
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.3241833   0.2792547   0.3691118
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2613664   0.1507960   0.3719368
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.4043666   0.3157813   0.4929519
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.2764729   0.2293327   0.3236131
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1830138   0.1055647   0.2604628
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2799530   0.1815953   0.3783108
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.3258860   0.2930370   0.3587351
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.3628313   0.2980994   0.4275631
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3415884   0.3068833   0.3762935
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.4450653   0.3903007   0.4998298
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4740659   0.3729244   0.5752075
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4577094   0.3437994   0.5716195
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0835846   0.0556382   0.1115310
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.1335347   0.0429500   0.2241195
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0701573   0.0354087   0.1049058
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.3428627   0.3148621   0.3708633
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.3825495   0.3158175   0.4492815
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.3600218   0.3099786   0.4100651
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.8260846   0.7939303   0.8582389
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.8387849   0.7763107   0.9012590
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7761929   0.7347040   0.8176818
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.5423426   0.5226943   0.5619908
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.7028341   0.6458370   0.7598312
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.5944478   0.5633848   0.6255108
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.6149127   0.5900944   0.6397310
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6535615   0.6002892   0.7068338
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6295181   0.5945841   0.6644521
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.4653007   0.4039995   0.5266019
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3905768   0.2813457   0.4998079
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4675629   0.3873784   0.5477474
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.4742891   0.4564954   0.4920828
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.5040239   0.4858222   0.5222256
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.5180781   0.4780303   0.5581259


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1904762   0.1397281   0.2412242
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1115880   0.0710726   0.1521034
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2787540   0.2475949   0.3099131
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1600660   0.1308485   0.1892835
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0537913   0.0425309   0.0650518
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1032165   0.0981467   0.1082863
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1183457   0.1091247   0.1275667
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3289521   0.3215868   0.3363173
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1825726   0.1336978   0.2314474
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2672897   0.2297549   0.3048246
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964215   0.0835208   0.1093221
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1408654   0.1259115   0.1558193
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3115942   0.2568550   0.3663334
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1627181   0.1549406   0.1704957
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1959625   0.1848518   0.2070732
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3736921   0.3370052   0.4103790
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514133   0.2432880   0.2595385
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5690867   0.5220618   0.6161115
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3372229   0.3148351   0.3596107
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3473748   0.3243098   0.3704399
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8120301   0.7885439   0.8355162
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5674431   0.5514601   0.5834261
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4526316   0.4078220   0.4974412
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4912484   0.4781170   0.5043798


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.5802469   0.7947195   3.1422159
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.3008130   0.6634287   2.5505598
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          PERU                           <20                  [20-30)           3.7424242   1.4905555   9.3963220
Birth       ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           2.5094340   0.8844567   7.1199176
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.1574908   0.8535169   1.5697226
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           0.9619716   0.7191190   1.2868377
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6332046   0.3193333   1.2555786
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.6595882   0.3928211   1.1075183
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.1074627   0.4791575   2.5596459
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.4693069   0.7802980   2.7667159
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.5124397   0.9899653   2.3106606
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.0333805   0.6165181   1.7321068
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.7481635   0.9840706   3.1055452
Birth       ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.1504412   0.6972251   1.8982606
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           2.1672537   1.5328869   3.0641456
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1269334   0.6659067   1.9071425
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0800290   0.9416797   1.2387042
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9894928   0.8588608   1.1399937
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.5854719   0.7362135   3.4143916
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.4384888   0.7921406   2.6122257
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.2963389   1.0036253   1.6744242
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)           0.8156764   0.6684740   0.9952937
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.5391939   1.0445781   2.2680143
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.2195944   0.8875480   1.6758649
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.2351245   1.1859803   1.2863051
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0501861   0.9749428   1.1312364
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           0.9753695   0.4376232   2.1738920
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.2489487   0.6413684   2.4321012
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.0137280   0.6129958   1.6764299
6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           1.1674491   0.6885923   1.9793098
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           1.1598361   0.5909836   2.2762388
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.8754981   0.4934530   1.5533330
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.0089532   0.5839274   1.7433442
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0066068   0.6184143   1.6384762
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.7643678   0.3833706   1.5240037
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           0.8133175   0.3895112   1.6982449
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9287035   0.7836829   1.1005604
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1703822   0.8596608   1.5934128
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.7883812   0.4606286   1.3493407
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           0.9719783   0.7285226   1.2967915
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6124523   0.3477314   1.0787001
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.1282210   0.8282838   1.5367712
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.5057710   0.8986742   2.5229905
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1634272   0.7374503   1.8354632
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.0757822   0.7304276   1.5844245
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.0957785   0.7521016   1.5965003
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.8690956   0.4982655   1.5159133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8365684   0.6107923   1.1458014
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0142821   0.6915657   1.4875928
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.3999413   1.1132968   1.7603891
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.6469633   1.0955945   2.4758140
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.1077775   0.7033118   1.7448463
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.2943306   0.8864605   1.8898661
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1080885   0.7067267   1.7373903
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.3579597   1.0827523   1.7031177
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9947940   0.8252942   1.1991057
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0928562   0.9548122   1.2508581
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.1484975   1.0138238   1.3010609
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0177630   0.7831587   1.3226459
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.0639175   0.9077868   1.2469012
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.2109934   0.9877513   1.4846905
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1283481   0.9895766   1.2865799
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.1775660   0.9479267   1.4628363
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1569964   0.9862664   1.3572809
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           0.8579197   0.6353820   1.1583995
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.1359059   0.9245403   1.3955933
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1410649   1.0802471   1.2053068
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1024548   0.9963530   1.2198554
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.3364617   0.9430650   1.8939625
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.2124810   0.8642400   1.7010438
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.2486055   0.8219605   1.8967040
24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           1.1552217   0.7387917   1.8063781
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           1.0402045   0.6395819   1.6917697
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.9735964   0.6677669   1.4194921
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.8514294   0.6473717   1.1198079
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0174677   0.8383727   1.2348214
24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           1.0944069   0.7548650   1.5866764
24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.9034962   0.5576727   1.4637713
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.8280991   0.5933766   1.1556711
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.0270166   0.8581451   1.2291198
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           0.8062304   0.5172707   1.2566098
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.2473394   0.9675169   1.6080914
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.6619591   0.4211281   1.0405144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.0125876   0.6880547   1.4901921
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.1133686   0.9081408   1.3649752
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0481836   0.9096688   1.2077899
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0651605   0.8327839   1.3623786
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0284097   0.7792959   1.3571567
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.5976000   0.9738203   2.6209412
24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8393570   0.5280245   1.3342564
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1157512   0.9205751   1.3523078
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0500466   0.8953587   1.2314594
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0153741   0.9339318   1.1039183
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9396046   0.8803901   1.0028019
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.2959229   1.1859846   1.4160522
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.0960744   1.0288316   1.1677122
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0628525   0.9711920   1.1631637
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0237519   0.9569461   1.0952216
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           0.8394073   0.6168639   1.1422368
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.0048619   0.8114437   1.2443837
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0626935   1.0122568   1.1156432
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0923255   1.0040486   1.1883638


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0217262   -0.0139411    0.0573935
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0589564    0.0179966    0.0999162
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0072811   -0.0059752    0.0205374
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0204218   -0.0394864   -0.0013572
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0081913   -0.0088047    0.0251872
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0113050   -0.0072397    0.0298497
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0095723   -0.0023947    0.0215393
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0395960    0.0168907    0.0623012
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0010823   -0.0025176    0.0046822
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0117719   -0.0046688    0.0282125
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0029287   -0.0093229    0.0034656
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0076430    0.0003419    0.0149441
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0311834    0.0245608    0.0378059
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0068150   -0.0269196    0.0405497
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0022416   -0.0512483    0.0467651
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0024150   -0.0553866    0.0505565
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0004717   -0.0234227    0.0243661
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0086857   -0.0260063    0.0086349
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0033025   -0.0104863    0.0170914
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0020677   -0.0311545    0.0352898
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0059439   -0.0314209    0.0195330
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0119324   -0.0076936    0.0315585
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0051963   -0.0172600    0.0276526
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0060234   -0.0151329    0.0030862
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0199756    0.0039130    0.0360382
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0328635   -0.0111479    0.0768750
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0143147   -0.0107698    0.0393991
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0020603   -0.0007859    0.0049065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0073589    0.0017388    0.0129790
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0182481   -0.0131005    0.0495968
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0102152    0.0023861    0.0180443
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0142214    0.0014834    0.0269593
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0004513   -0.0326030    0.0335056
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0172339    0.0099627    0.0245051
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0321876   -0.0112537    0.0756290
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0361426   -0.0304937    0.1027788
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0084758   -0.0768769    0.0599252
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0084426   -0.0323497    0.0154645
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0007128   -0.0203193    0.0217449
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0082289   -0.0388863    0.0224284
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0045364   -0.0193968    0.0284697
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0196635   -0.0465325    0.0072054
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0113369   -0.0127149    0.0353886
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0037052   -0.0286825    0.0360930
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0016695   -0.0061656    0.0095045
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0045121   -0.0113355    0.0203597
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0140545   -0.0375238    0.0094148
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0251006    0.0139115    0.0362896
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0079912   -0.0072000    0.0231823
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0126691   -0.0543396    0.0290014
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0169593    0.0048048    0.0291138


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.1140625   -0.0926693    0.2816809
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.5283401    0.0707564    0.7605977
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0261200   -0.0226732    0.0725853
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.1275836   -0.2517561   -0.0157288
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0919811   -0.1187609    0.2630255
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0819335   -0.0620758    0.2064162
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1779524   -0.0738855    0.3707315
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.2258917    0.0886490    0.3424666
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0104857   -0.0250144    0.0447564
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.2005926   -0.1282348    0.4335823
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0247466   -0.0801949    0.0278554
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.1246586   -0.0016277    0.2350225
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0947960    0.0743514    0.1147891
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0373278   -0.1661830    0.2053239
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0101992   -0.2597001    0.1898846
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0122684   -0.3204120    0.2239639
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0015681   -0.0811098    0.0779232
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0353509   -0.1082112    0.0327192
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0116111   -0.0382838    0.0591082
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0048203   -0.0757216    0.0793319
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0222378   -0.1220993    0.0687364
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0750749   -0.0563949    0.1901831
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0247690   -0.0883198    0.1261066
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0624690   -0.1609437    0.0276528
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1418063    0.0203714    0.2481880
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1054690   -0.0472237    0.2358980
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0661760   -0.0570642    0.1750480
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0328666   -0.0102330    0.0741275
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0452247    0.0100785    0.0791231
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0445087   -0.0351019    0.1179965
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0521284    0.0113835    0.0911941
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0673277    0.0050815    0.1256795
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0012076   -0.0912799    0.0858567
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0685480    0.0391781    0.0970201
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0675622   -0.0284638    0.1546223
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0981711   -0.1026450    0.2624142
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0240149   -0.2373465    0.1525361
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0117752   -0.0457112    0.0210595
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0016950   -0.0495915    0.0504755
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0144598   -0.0697993    0.0380169
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0138003   -0.0617593    0.0839827
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0765687   -0.1866817    0.0233269
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0336183   -0.0404387    0.1024040
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0082564   -0.0666090    0.0778670
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0195822   -0.0742974    0.1052578
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0129892   -0.0337122    0.0575808
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0173079   -0.0466608    0.0112219
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0442345    0.0242520    0.0638078
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0128289   -0.0118769    0.0369314
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0279899   -0.1243355    0.0600998
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0345229    0.0094539    0.0589574

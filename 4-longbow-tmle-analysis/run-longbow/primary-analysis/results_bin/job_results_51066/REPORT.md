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

agecat      studyid                    country                        mage       stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      147     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1       29     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20              0       27     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20              1        9     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             0       36     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             1        9     257
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)          0      101     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)          1       16     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <20              0       32     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <20              1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             0       37     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             1        3     191
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)          0      139     205
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)          1       26     205
Birth       ki0047075b-MAL-ED          INDIA                          <20              0       20     205
Birth       ki0047075b-MAL-ED          INDIA                          <20              1        5     205
Birth       ki0047075b-MAL-ED          INDIA                          >=30             0       14     205
Birth       ki0047075b-MAL-ED          INDIA                          >=30             1        1     205
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)          0      120     173
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)          1       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          <20              0        3     173
Birth       ki0047075b-MAL-ED          NEPAL                          <20              1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             0       32     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             1        4     173
Birth       ki0047075b-MAL-ED          PERU                           [20-30)          0      133     287
Birth       ki0047075b-MAL-ED          PERU                           [20-30)          1       12     287
Birth       ki0047075b-MAL-ED          PERU                           <20              0       63     287
Birth       ki0047075b-MAL-ED          PERU                           <20              1       14     287
Birth       ki0047075b-MAL-ED          PERU                           >=30             0       57     287
Birth       ki0047075b-MAL-ED          PERU                           >=30             1        8     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0      119     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1       16     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       35     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        6     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       80     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        6     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0       60     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1       14     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0        9     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       36     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        4     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0       64      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1       13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20              0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        1      90
Birth       ki1000108-IRC              INDIA                          [20-30)          0      288     388
Birth       ki1000108-IRC              INDIA                          [20-30)          1       37     388
Birth       ki1000108-IRC              INDIA                          <20              0       28     388
Birth       ki1000108-IRC              INDIA                          <20              1        7     388
Birth       ki1000108-IRC              INDIA                          >=30             0       27     388
Birth       ki1000108-IRC              INDIA                          >=30             1        1     388
Birth       ki1000109-EE               PAKISTAN                       [20-30)          0        1       2
Birth       ki1000109-EE               PAKISTAN                       [20-30)          1        0       2
Birth       ki1000109-EE               PAKISTAN                       <20              0        0       2
Birth       ki1000109-EE               PAKISTAN                       <20              1        0       2
Birth       ki1000109-EE               PAKISTAN                       >=30             0        0       2
Birth       ki1000109-EE               PAKISTAN                       >=30             1        1       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)          0      101     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)          1       34     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20              0       18     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20              1        9     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             0       22     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             1        3     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0       14      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20              0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0       18      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20              0        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20              1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1        1      27
Birth       ki1101329-Keneba           GAMBIA                         [20-30)          0      673    1541
Birth       ki1101329-Keneba           GAMBIA                         [20-30)          1       32    1541
Birth       ki1101329-Keneba           GAMBIA                         <20              0      217    1541
Birth       ki1101329-Keneba           GAMBIA                         <20              1       21    1541
Birth       ki1101329-Keneba           GAMBIA                         >=30             0      569    1541
Birth       ki1101329-Keneba           GAMBIA                         >=30             1       29    1541
Birth       ki1119695-PROBIT           BELARUS                        [20-30)          0     9914   13884
Birth       ki1119695-PROBIT           BELARUS                        [20-30)          1       23   13884
Birth       ki1119695-PROBIT           BELARUS                        <20              0     1400   13884
Birth       ki1119695-PROBIT           BELARUS                        <20              1        6   13884
Birth       ki1119695-PROBIT           BELARUS                        >=30             0     2537   13884
Birth       ki1119695-PROBIT           BELARUS                        >=30             1        4   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     8314   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      952   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1947   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20              1      253   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2103   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      221   13790
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0     6786   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1     2772   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20              0     5179   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20              1     3008   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     1304   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      554   19603
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      136     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1       29     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20              0       29     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20              1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             0       31     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             1       10     241
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)          0      120     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        5     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20              0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             0       46     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          0      145     234
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          1       34     234
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        3     247
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
6 months    ki1000109-EE               PAKISTAN                       [20-30)          0       79     370
6 months    ki1000109-EE               PAKISTAN                       [20-30)          1       80     370
6 months    ki1000109-EE               PAKISTAN                       <20              0        0     370
6 months    ki1000109-EE               PAKISTAN                       <20              1        1     370
6 months    ki1000109-EE               PAKISTAN                       >=30             0       99     370
6 months    ki1000109-EE               PAKISTAN                       >=30             1      111     370
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      349     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1       60     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              0       50     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              1       15     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             0       90     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             1       19     583
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
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      298     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          1       72     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20              0       80     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20              1       28     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             0       66     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             1       19     563
6 months    ki1119695-PROBIT           BELARUS                        [20-30)          0    10632   15761
6 months    ki1119695-PROBIT           BELARUS                        [20-30)          1      684   15761
6 months    ki1119695-PROBIT           BELARUS                        <20              0     1482   15761
6 months    ki1119695-PROBIT           BELARUS                        <20              1      138   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30             0     2659   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30             1      166   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     4603    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      878    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1024    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              1      237    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     1278    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      260    8280
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
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0       84     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1       62     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              0       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              1       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             1       20     212
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          0       98     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        4     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20              0       25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20              1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             0       40     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          0       94     225
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          1       78     225
24 months   ki0047075b-MAL-ED          INDIA                          <20              0       21     225
24 months   ki0047075b-MAL-ED          INDIA                          <20              1       12     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30             0       16     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30             1        4     225
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          0      143     228
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          1       36     228
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
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0       29     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1       84     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       29     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1       63     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0       82     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1      214     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       13     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              1       21     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       11     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1       31     372
24 months   ki1000108-IRC              INDIA                          [20-30)          0      201     409
24 months   ki1000108-IRC              INDIA                          [20-30)          1      142     409
24 months   ki1000108-IRC              INDIA                          <20              0       20     409
24 months   ki1000108-IRC              INDIA                          <20              1       17     409
24 months   ki1000108-IRC              INDIA                          >=30             0       18     409
24 months   ki1000108-IRC              INDIA                          >=30             1       11     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      127     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1      162     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              0       21     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              1       23     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             0       42     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             1       52     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      276     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1      132     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              0       44     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              1       20     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             0       67     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             1       38     577
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
24 months   ki1101329-Keneba           GAMBIA                         [20-30)          0      536    1714
24 months   ki1101329-Keneba           GAMBIA                         [20-30)          1      254    1714
24 months   ki1101329-Keneba           GAMBIA                         <20              0      146    1714
24 months   ki1101329-Keneba           GAMBIA                         <20              1       71    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30             0      458    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30             1      249    1714
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      179     499
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          1      144     499
24 months   ki1113344-GMS-Nepal        NEPAL                          <20              0       53     499
24 months   ki1113344-GMS-Nepal        NEPAL                          <20              1       45     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0       44     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1       34     499
24 months   ki1119695-PROBIT           BELARUS                        [20-30)          0     2651    4035
24 months   ki1119695-PROBIT           BELARUS                        [20-30)          1      242    4035
24 months   ki1119695-PROBIT           BELARUS                        <20              0      319    4035
24 months   ki1119695-PROBIT           BELARUS                        <20              1       50    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30             0      721    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30             1       52    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0      105     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      194     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              0       23     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       48     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0       30     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1       56     456
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          0      103    1067
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          1      425    1067
24 months   ki1135781-COHORTS          GUATEMALA                      <20              0       27    1067
24 months   ki1135781-COHORTS          GUATEMALA                      <20              1      126    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30             0       92    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30             1      294    1067
24 months   ki1135781-COHORTS          INDIA                          [20-30)          0     1328    3695
24 months   ki1135781-COHORTS          INDIA                          [20-30)          1     1138    3695
24 months   ki1135781-COHORTS          INDIA                          <20              0       88    3695
24 months   ki1135781-COHORTS          INDIA                          <20              1      159    3695
24 months   ki1135781-COHORTS          INDIA                          >=30             0      452    3695
24 months   ki1135781-COHORTS          INDIA                          >=30             1      530    3695
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          0      576    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          1      884    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <20              0      101    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <20              1      191    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             0      260    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             1      433    2445
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          0      134     475
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          1      116     475
24 months   ki1148112-LCNI-5           MALAWI                         <20              0       49     475
24 months   ki1148112-LCNI-5           MALAWI                         <20              1       31     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30             0       78     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30             1       67     475
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0     2167    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1     1891    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              0     1873    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              1     1982    8627
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/b79aa5e9-b401-4198-ac84-3ac7e0ea8fa7/790deabb-6362-441c-a157-fb78bdd3dac0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b79aa5e9-b401-4198-ac84-3ac7e0ea8fa7/790deabb-6362-441c-a157-fb78bdd3dac0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b79aa5e9-b401-4198-ac84-3ac7e0ea8fa7/790deabb-6362-441c-a157-fb78bdd3dac0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b79aa5e9-b401-4198-ac84-3ac7e0ea8fa7/790deabb-6362-441c-a157-fb78bdd3dac0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1647727   0.1098587   0.2196868
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2500000   0.1082758   0.3917242
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2000000   0.0829023   0.3170977
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.0827586   0.0378354   0.1276818
Birth       ki0047075b-MAL-ED          PERU                           <20                  NA                0.1818182   0.0955195   0.2681169
Birth       ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1230769   0.0430717   0.2030822
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.1185185   0.0638910   0.1731460
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1463415   0.0379457   0.2547372
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.0697674   0.0158224   0.1237125
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0448467   0.0296053   0.0600880
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                0.0770799   0.0420144   0.1121454
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0484079   0.0303134   0.0665024
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1026546   0.0964648   0.1088445
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1149340   0.1014743   0.1283937
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0941986   0.0822938   0.1061034
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0469136   0.0263077   0.0675195
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0743802   0.0276007   0.1211596
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0674847   0.0402373   0.0947320
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1212348   0.1098136   0.1326560
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                0.1591399   0.1216563   0.1966235
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.0981263   0.0809338   0.1153188
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0536521   0.0432409   0.0640633
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0840841   0.0558995   0.1122687
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0656653   0.0490776   0.0822529
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.2925671   0.2822387   0.3028955
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.3615598   0.3505320   0.3725876
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.3083051   0.2861870   0.3304232
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1757576   0.1175615   0.2339536
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.1714286   0.0463095   0.2965477
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2439024   0.1121811   0.3756238
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.2179319   0.1476511   0.2882126
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.2056762   0.1139229   0.2974295
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.2152053   0.1058052   0.3246053
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.1965732   0.1240128   0.2691336
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.2233460   0.0889103   0.3577816
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1750602   0.0977120   0.2524084
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.3003413   0.2477814   0.3529012
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.3030303   0.1460192   0.4600414
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3023256   0.1648685   0.4397826
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.2543860   0.2081720   0.3005999
6 months    ki1000108-IRC              INDIA                          <20                  NA                0.1944444   0.0650020   0.3238868
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592835   0.3545096
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2808572   0.2569351   0.3047793
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2600221   0.2171698   0.3028745
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3359484   0.2509014   0.4209954
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.4270288   0.3675131   0.4865446
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.4315639   0.2667157   0.5964122
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4224126   0.3152201   0.5296051
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2715901   0.2257406   0.3174396
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1696427   0.0768931   0.2623923
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3024805   0.2203070   0.3846541
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1476639   0.1133850   0.1819429
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2256644   0.1214245   0.3299043
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1797558   0.1089032   0.2506084
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.2013346   0.1649176   0.2377517
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2395943   0.1656291   0.3135596
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2092967   0.1360609   0.2825325
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1019299   0.0855383   0.1183216
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0946664   0.0473622   0.1419705
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0850432   0.0617850   0.1083015
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1219651   0.1010087   0.1429214
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1214741   0.0802773   0.1626708
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1688091   0.1431596   0.1944587
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.2709582   0.2034906   0.3384259
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.4303938   0.2829348   0.5778529
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.2829969   0.1632576   0.4027362
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1938453   0.1533669   0.2343238
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2537228   0.1700037   0.3374419
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2198413   0.1297710   0.3099116
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0608040   0.0481631   0.0734450
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0822920   0.0569342   0.1076497
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0575056   0.0392604   0.0757507
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1600172   0.1503253   0.1697090
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1871153   0.1656532   0.2085774
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1708043   0.1521718   0.1894368
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.3958573   0.3514129   0.4403017
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.3895769   0.2965081   0.4826457
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4093024   0.3597731   0.4588317
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1858461   0.1726128   0.1990794
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.2211807   0.1789341   0.2634274
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2103123   0.1870689   0.2335557
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1972109   0.1777318   0.2166901
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2326640   0.1872193   0.2781086
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2291016   0.1999326   0.2582706
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.3742904   0.3248322   0.4237486
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3083754   0.2216179   0.3951330
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4062911   0.3372505   0.4753317
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.2337376   0.2230881   0.2443870
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2673901   0.2564009   0.2783792
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2565726   0.2321195   0.2810257
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.4289307   0.3498270   0.5080344
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.5663695   0.3716005   0.7611384
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5173715   0.3563193   0.6784236
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.3330350   0.2414296   0.4246403
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.4055570   0.2723536   0.5387605
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.3993348   0.2602055   0.5384642
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.3674812   0.2752194   0.4597429
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.3683700   0.2136661   0.5230738
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3518538   0.2552006   0.4485070
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.7229730   0.6719214   0.7740245
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.6176471   0.4540801   0.7812140
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7380952   0.6049469   0.8712436
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.4139942   0.3618050   0.4661834
24 months   ki1000108-IRC              INDIA                          <20                  NA                0.4594595   0.2986852   0.6202337
24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3793103   0.2024969   0.5561238
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.5619030   0.5054227   0.6183832
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.4879983   0.3362254   0.6397713
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5472759   0.4511764   0.6433754
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.3257727   0.2803648   0.3711805
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3033176   0.1902748   0.4163604
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3756595   0.2838159   0.4675031
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.2717285   0.2247962   0.3186608
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2065627   0.1275312   0.2855941
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2443821   0.1458968   0.3428673
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.3238261   0.2909925   0.3566597
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.3550901   0.2932181   0.4169621
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3411724   0.3067467   0.3755981
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.4434507   0.3890819   0.4978195
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4459421   0.3481133   0.5437708
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4133023   0.3086932   0.5179114
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0834265   0.0552490   0.1116040
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.1373875   0.0529568   0.2218181
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0663198   0.0367987   0.0958409
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.6506543   0.5967636   0.7045450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.6687492   0.5581945   0.7793040
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.6562926   0.5559041   0.7566810
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.8022762   0.7682570   0.8362954
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.8355784   0.7750954   0.8960614
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7562208   0.7135519   0.7988898
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.4645493   0.4448473   0.4842513
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.6450743   0.5844021   0.7057466
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.5283930   0.4966453   0.5601408
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.6083917   0.5835643   0.6332192
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6430311   0.5896701   0.6963920
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6257724   0.5908215   0.6607234
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.4641533   0.4023506   0.5259559
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3997067   0.2917636   0.5076499
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4706019   0.3887558   0.5524479
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.4735121   0.4557394   0.4912848
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.5046734   0.4864810   0.5228658
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.5153697   0.4749693   0.5557702


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1828794   0.1355257   0.2302330
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1184669   0.0810142   0.1559196
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1068702   0.0693890   0.1443514
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0532122   0.0420018   0.0644226
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1034083   0.0983260   0.1084905
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1183457   0.1091247   0.1275667
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3231138   0.3154608   0.3307668
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1867220   0.1374205   0.2360234
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2672897   0.2297549   0.3048246
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964215   0.0835208   0.1093221
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1408654   0.1259115   0.1558193
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3115942   0.2568550   0.3663334
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660628   0.1580467   0.1740789
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1959625   0.1848518   0.2070732
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3736921   0.3370052   0.4103790
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514133   0.2432880   0.2595385
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5550351   0.5078433   0.6022269
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3348891   0.3125397   0.3572386
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6535088   0.6097853   0.6972322
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7919400   0.7675726   0.8163075
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4944520   0.4783291   0.5105749
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4505263   0.4057351   0.4953175
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4909007   0.4777498   0.5040515


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.5172414   0.7860701   2.9285192
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.2137931   0.6188168   2.3808237
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          PERU                           <20                  [20-30)           2.1969697   1.0682369   4.5183573
Birth       ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           1.4871795   0.6376271   3.4686460
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           1.2347561   0.5160605   2.9543484
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.5886628   0.2392921   1.4481211
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.7187429   0.9742560   3.0321364
Birth       ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0794088   0.6513418   1.7888049
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1196183   0.9814823   1.2771958
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9176260   0.7977327   1.0555383
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.5854719   0.7362135   3.4143916
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.4384888   0.7921406   2.6122257
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3126588   1.0186286   1.6915616
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)           0.8093906   0.6634674   0.9874083
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.5672100   1.0646225   2.3070592
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.2239091   0.8908440   1.6814992
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.2358182   1.1828651   1.2911419
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0537927   0.9744486   1.1395974
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           0.9753695   0.4376232   2.1738920
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.3877208   0.7365197   2.6146877
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)           0.9437638   0.5458900   1.6316294
6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           0.9874888   0.5403510   1.8046311
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           1.1361974   0.5628381   2.2936340
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.8905600   0.5016746   1.5808995
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.0089532   0.5839274   1.7433442
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0066068   0.6184143   1.6384762
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.7643678   0.3833706   1.5240037
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           0.8133175   0.3895112   1.6982449
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9258162   0.7765677   1.1037487
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1961538   0.8913033   1.6052715
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           1.0106201   0.6742004   1.5149102
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           0.9891898   0.7425794   1.3176993
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6246278   0.3536693   1.1031770
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.1137392   0.8122959   1.5270480
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.5282294   0.9114947   2.5622586
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.2173300   0.7724361   1.9184661
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.1900305   0.8327955   1.7005044
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.0395465   0.7021109   1.5391541
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9287397   0.5495677   1.5695199
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8343303   0.6077946   1.1452998
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9959741   0.6811513   1.4563055
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.3840776   1.1018770   1.7385522
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.5884139   1.0391218   2.4280685
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.0444299   0.6392077   1.7065405
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3088932   0.8857728   1.9341319
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1341069   0.7159190   1.7965698
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.3533963   1.0962151   1.6709143
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9457520   0.7708992   1.1602645
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1693452   1.0273707   1.3309394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0674126   0.9424673   1.2089221
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.9841348   0.7575067   1.2785646
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.0339645   0.8793939   1.2157039
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.1901286   0.9706391   1.4592509
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1316478   0.9923872   1.2904506
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.1797721   0.9489709   1.4667069
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1617082   0.9901946   1.3629300
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           0.8238934   0.6043992   1.1230993
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.0854968   0.8759959   1.3451015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1439756   1.0827973   1.2086104
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0976953   0.9911304   1.2157180
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.3204218   0.8978559   1.9418637
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.2061890   0.8447868   1.7222000
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.2177611   0.7959782   1.8630435
24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           1.1990778   0.7748184   1.8556446
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           1.0024187   0.6142398   1.6359137
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.9574744   0.6597585   1.3895347
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.8543156   0.6495146   1.1236931
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0209168   0.8411195   1.2391475
24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           1.1098211   0.7651091   1.6098395
24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.9162215   0.5653067   1.4849670
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.8684744   0.6271750   1.2026113
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9739687   0.7986265   1.1878081
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           0.9310714   0.6260845   1.3846278
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1531340   0.8718209   1.5252191
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.7601804   0.5011868   1.1530117
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.8993612   0.5814476   1.3910979
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0965458   0.8974836   1.3397602
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0535666   0.9146022   1.2136453
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0056181   0.7824608   1.2924198
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.9320141   0.7031311   1.2354031
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.6468081   1.0625164   2.5524095
24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.7949485   0.5233682   1.2074542
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0278103   0.8548931   1.2357031
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0086655   0.8484632   1.1991162
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0415096   0.9581491   1.1321225
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9425941   0.8792549   1.0104961
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3886026   1.2526457   1.5393156
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1374316   1.0570753   1.2238963
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0569359   0.9643063   1.1584633
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0285683   0.9609293   1.1009683
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           0.8611524   0.6373832   1.1634815
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.0138932   0.8153430   1.2607939
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0658088   1.0152566   1.1188781
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0883982   0.9995220   1.1851772


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0181067   -0.0154742   0.0516875
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0357083   -0.0014617   0.0728783
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0116483   -0.0478936   0.0245970
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0083655   -0.0036524   0.0203834
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0007536   -0.0028143   0.0043215
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0117719   -0.0046688   0.0282125
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0028891   -0.0093011   0.0035230
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0076594    0.0003790   0.0149398
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0305467    0.0235950   0.0374984
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0109644   -0.0233855   0.0453143
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0018484   -0.0476323   0.0513290
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0002772   -0.0521779   0.0527323
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0004717   -0.0234227   0.0243661
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0086857   -0.0260063   0.0086349
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0035739   -0.0094368   0.0165847
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0019185   -0.0310832   0.0349202
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0043004   -0.0296347   0.0210339
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0135710   -0.0066335   0.0337756
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0084556   -0.0137351   0.0306463
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0055085   -0.0146356   0.0036187
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0189003    0.0027788   0.0350218
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0406360   -0.0038047   0.0850766
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0175223   -0.0075956   0.0426403
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0018823   -0.0011727   0.0049374
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0060456    0.0002821   0.0118091
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0141323   -0.0180290   0.0462936
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0101164    0.0022824   0.0179504
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0140151    0.0012734   0.0267567
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0005983   -0.0338650   0.0326683
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0176757    0.0104362   0.0249153
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0333335   -0.0104966   0.0771635
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0351242   -0.0307414   0.1009899
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0145400   -0.0833898   0.0543098
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0079192   -0.0317599   0.0159215
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0016538   -0.0193742   0.0226817
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0068678   -0.0381169   0.0243812
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0035168   -0.0208885   0.0279220
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0149192   -0.0417281   0.0118898
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0110631   -0.0129268   0.0350529
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0034431   -0.0292009   0.0360871
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0018275   -0.0054481   0.0091031
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0028544   -0.0283191   0.0340280
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0103362   -0.0348520   0.0141796
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0299027    0.0184874   0.0413180
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0083772   -0.0067903   0.0235447
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0136270   -0.0558665   0.0286125
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0173886    0.0052399   0.0295372


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0990087   -0.1033516   0.2642551
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.3014199   -0.0760311   0.5464683
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.1089947   -0.5035714   0.1820347
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1572108   -0.0988827   0.3536219
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0072880   -0.0278211   0.0411978
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.2005926   -0.1282348   0.4335823
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0244122   -0.0800135   0.0283266
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.1249262   -0.0009540   0.2349757
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0945385    0.0726519   0.1159085
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0587205   -0.1439981   0.2255170
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0084100   -0.2443779   0.2098455
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0014081   -0.3040131   0.2352946
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0015681   -0.0811098   0.0779232
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0353509   -0.1082112   0.0327192
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0125652   -0.0344150   0.0574118
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0044727   -0.0755116   0.0785086
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0160889   -0.1153948   0.0743757
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0841693   -0.0493672   0.2007128
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0403050   -0.0714126   0.1403736
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0571291   -0.1558194   0.0331344
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1341728    0.0123025   0.2410057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1304131   -0.0244138   0.2618398
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0828999   -0.0436461   0.1941017
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0300277   -0.0169622   0.0748464
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0364057    0.0010902   0.0704726
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0344699   -0.0472579   0.1098197
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0516241    0.0108507   0.0907168
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0663510    0.0040854   0.1247237
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0016012   -0.0946992   0.0835794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0703054    0.0410669   0.0986524
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0721091   -0.0279905   0.1624616
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0954050   -0.1024457   0.2577484
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0411966   -0.2558260   0.1367511
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0110750   -0.0450039   0.0217523
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0039787   -0.0479199   0.0533071
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0123737   -0.0702852   0.0424043
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0106799   -0.0662882   0.0820922
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0580943   -0.1679417   0.0414218
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0330350   -0.0413636   0.1021184
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0077045   -0.0680973   0.0781267
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0214361   -0.0652825   0.1010955
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0043679   -0.0444984   0.0509479
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0130517   -0.0445019   0.0174514
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0604764    0.0370289   0.0833530
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0135824   -0.0113335   0.0378844
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0302468   -0.1284286   0.0593925
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0354217    0.0103494   0.0598589

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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthlen      n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           29     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm           144     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        84     257
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm           34     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm            80     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        77     191
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm           25     206
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm           107     206
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm        74     206
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm           38     173
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm            69     173
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm        66     173
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm           34     287
Birth       ki0047075b-MAL-ED          PERU                           <48 cm           142     287
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm       111     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           47     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm           112     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm       103     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           15     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            57     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            37      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40      90
Birth       ki1000108-IRC              INDIA                          >=50 cm          142     388
Birth       ki1000108-IRC              INDIA                          <48 cm           108     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm       138     388
Birth       ki1000109-EE               PAKISTAN                       >=50 cm            1       2
Birth       ki1000109-EE               PAKISTAN                       <48 cm             1       2
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm         0       2
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm            3       7
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm             2       7
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm         2       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            9     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm           124     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm        54     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm            11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        10      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm            14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm        10      27
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm          763    1541
Birth       ki1101329-Keneba           GAMBIA                         <48 cm           283    1541
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm       495    1541
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            2      13
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm             9      13
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         2      13
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm           63     115
Birth       ki1114097-CMIN             BRAZIL                         <48 cm            16     115
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm        36     115
Birth       ki1114097-CMIN             PERU                           >=50 cm           10      10
Birth       ki1114097-CMIN             PERU                           <48 cm             0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm         0      10
Birth       ki1114097-CONTENT          PERU                           >=50 cm            1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm             1       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm        12617   13884
Birth       ki1119695-PROBIT           BELARUS                        <48 cm           147   13884
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm      1120   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         4107   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          4396   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      5327   13830
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm          437     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm           163     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm       252     852
Birth       ki1135781-COHORTS          INDIA                          >=50 cm         1426    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm          2774    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm      2440    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm         1129    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm           762    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1159    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          957   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         14305   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      4351   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm           36     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           599     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       187     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           29     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm           122     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        83     234
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm           30     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm            69     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        74     173
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm           24     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm           101     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm        68     193
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm           38     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm            67     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm        66     171
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm           30     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm           132     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm        99     261
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           39     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            86     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        89     214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           14     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            54     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           15     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            47     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     102
6 months    ki1000108-IRC              INDIA                          >=50 cm          142     389
6 months    ki1000108-IRC              INDIA                          <48 cm           109     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm       138     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm           22      89
6 months    ki1000109-EE               PAKISTAN                       <48 cm            42      89
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm        25      89
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            4      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm             6      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         7      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          196    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           709    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       419    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           25     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm            83     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        70     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          140     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           206     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       237     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          164     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           270     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       281     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm          677    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm           234    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm       436    1347
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            0       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm             1       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         0       1
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm           58     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm            13     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm        33     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm            0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm             1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm         1       2
6 months    ki1114097-CMIN             PERU                           >=50 cm           12      14
6 months    ki1114097-CMIN             PERU                           <48 cm             1      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm         1      14
6 months    ki1114097-CONTENT          PERU                           >=50 cm            1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm             1       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm         0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm        14296   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm           172   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm      1293   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2405    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2583    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3218    8206
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          351     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm           133     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm       204     688
6 months    ki1135781-COHORTS          INDIA                          >=50 cm         1330    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm          2530    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm      2275    6135
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm          990    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm           677    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1034    2701
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         2426   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         10293   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      3789   16508
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1101    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1923    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       996    4020
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           28     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm           102     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        77     207
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           21     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            57     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        61     139
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm           23     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm            95     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        66     184
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm           36     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            65     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm        64     165
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm           23     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm           100     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        68     191
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           35     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            83     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        83     201
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           12     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            49     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        42     103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           15     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            49     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     104
24 months   ki1000108-IRC              INDIA                          >=50 cm          142     390
24 months   ki1000108-IRC              INDIA                          <48 cm           110     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm       138     390
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           20     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm            62     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        55     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          139     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           206     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       232     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          128     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           200     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       186     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          535    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm           196    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       334    1065
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             1       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         0       1
24 months   ki1114097-CMIN             PERU                           >=50 cm            3       4
24 months   ki1114097-CMIN             PERU                           <48 cm             1       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm         0       4
24 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm             1       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm         3683    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm            44    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm       308    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm           52     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           260     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       137     449
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          264     562
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           121     562
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       177     562
24 months   ki1135781-COHORTS          INDIA                          >=50 cm         1047    4761
24 months   ki1135781-COHORTS          INDIA                          <48 cm          1937    4761
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm      1777    4761
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm          897    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm           604    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm       941    2442
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1171    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5293    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      1980    8444
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1077    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1944    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       966    3987


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/aa0a5b52-bd5c-4ad1-86d9-19176746cd93/36b2fa33-2ba8-4abe-a45d-ef1ee9e45653/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/aa0a5b52-bd5c-4ad1-86d9-19176746cd93/36b2fa33-2ba8-4abe-a45d-ef1ee9e45653/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/aa0a5b52-bd5c-4ad1-86d9-19176746cd93/36b2fa33-2ba8-4abe-a45d-ef1ee9e45653/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.5340503    0.4402760    0.6278245
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -1.7777899   -1.8999609   -1.6556190
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.4788336   -0.5564335   -0.4012336
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.7533289    0.5981909    0.9084670
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -1.7152239   -1.8938543   -1.5365936
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.4419362   -0.5176775   -0.3661950
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.4715418    0.3251708    0.6179128
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.7714886   -1.9106147   -1.6323624
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.4186753   -0.4961185   -0.3412321
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.5457892    0.4538388    0.6377397
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -1.7240755   -1.9110974   -1.5370536
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.4303588   -0.5141118   -0.3466059
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.4721890    0.2986777    0.6457002
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               NA                -1.6711348   -1.7938202   -1.5484494
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.4177908   -0.4802225   -0.3553590
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.7467766    0.5814633    0.9120899
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -1.6208168   -1.7617558   -1.4798778
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.3961124   -0.4638089   -0.3284159
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.6002359    0.2803533    0.9201184
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -1.8753848   -2.1340358   -1.6167339
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.4656309   -0.5664447   -0.3648170
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0826525   -0.3633748    0.1980697
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.9701077   -2.2130568   -1.7271585
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.5225428   -0.6174004   -0.4276852
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                 1.2762960    1.0954920    1.4571000
Birth       ki1000108-IRC              INDIA                          <48 cm               NA                -2.0776931   -2.2807142   -1.8746720
Birth       ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.5311317   -0.5879781   -0.4742853
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.7888889    0.6737241    0.9040537
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -1.9652419   -2.1063873   -1.8240965
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.4483333   -0.5274932   -0.3691734
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.8528571    0.6239072    1.0818070
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -1.4418182   -1.6180532   -1.2655832
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.4930000   -0.6139820   -0.3720180
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.9758260    0.9219175    1.0297345
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               NA                -1.7903354   -1.9076894   -1.6729814
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.3609881   -0.3906609   -0.3313152
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              NA                 0.8292304    0.6840128    0.9744479
Birth       ki1114097-CMIN             BRAZIL                         <48 cm               NA                -2.1564261   -2.6736069   -1.6392454
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                -0.4207206   -0.5142247   -0.3272165
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 1.5148008    1.3824935    1.6471081
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               NA                -1.6632454   -1.7026203   -1.6238705
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.4399951   -0.4700008   -0.4099895
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.8280894    0.8054225    0.8507563
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.8405921   -1.8658783   -1.8153059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4171676   -0.4265725   -0.4077627
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 1.0488589    0.9841463    1.1135714
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -1.7684842   -1.9020911   -1.6348774
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2834712   -0.3277018   -0.2392405
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.8383094    0.8039829    0.8726359
Birth       ki1135781-COHORTS          INDIA                          <48 cm               NA                -1.7319371   -1.7615001   -1.7023741
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.3389994   -0.3530882   -0.3249105
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.7907440    0.7563961    0.8250919
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -1.6565942   -1.7111419   -1.6020465
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.3390560   -0.3588367   -0.3192752
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.6507607    0.6086924    0.6928289
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -2.0608825   -2.0775619   -2.0442032
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.4397069   -0.4509487   -0.4284651
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.6886360    0.5234118    0.8538602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -1.9543093   -2.0240286   -1.8845899
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.4253680   -0.4793976   -0.3713384
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.2418528   -0.4504586   -0.0332469
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -1.6335139   -1.7855115   -1.4815163
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.9061021   -1.0723418   -0.7398625
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.6393541    0.2506754    1.0280328
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.4004087   -0.6946929   -0.1061244
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.2283530    0.0513235    0.4053826
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.2877846   -0.5087322   -0.0668371
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.6815987   -1.8579404   -1.5052571
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.8759102   -1.0362283   -0.7155922
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.2151861    0.0239422    0.4064300
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -1.1119476   -1.2990423   -0.9248529
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.4703575   -0.6359187   -0.3047963
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.6958230   -0.9623451   -0.4293009
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                -1.6913278   -1.8405576   -1.5420981
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -1.0079726   -1.1611869   -0.8547583
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.4262452   -0.7349434   -0.1175470
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -1.4592937   -1.6762743   -1.2423132
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -1.0051379   -1.1976756   -0.8126002
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.4066544   -0.9900965    0.1767878
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -1.6779257   -1.9388963   -1.4169551
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.9812652   -1.1812029   -0.7813275
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -1.2692427   -2.0259491   -0.5125362
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.4954342   -1.8678360   -1.1230323
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -1.0267790   -1.4453447   -0.6082134
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.7616292   -0.9715825   -0.5516758
6 months    ki1000108-IRC              INDIA                          <48 cm               NA                -1.8768741   -2.1438626   -1.6098856
6 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -1.2148831   -1.4159687   -1.0137976
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -1.3030230   -1.6494730   -0.9565729
6 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                -2.8908657   -3.2501929   -2.5315385
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -2.0360250   -2.3873318   -1.6847182
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.5625840   -0.7535284   -0.3716396
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -1.8831761   -1.9446789   -1.8216733
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.9760545   -1.0708345   -0.8812745
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.4068122   -0.7907307   -0.0228937
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -1.9586737   -2.1711166   -1.7462308
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.1858033   -1.3664315   -1.0051751
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.3248463   -0.4613683   -0.1883243
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.7287414   -1.8361807   -1.6213020
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.9803652   -1.0755948   -0.8851355
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.4054608   -0.5120259   -0.2988958
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.7502810   -1.8551867   -1.6453752
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -1.1279845   -1.2279582   -1.0280108
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.5424208   -0.6207906   -0.4640510
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -1.5104171   -1.6398218   -1.3810125
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -1.1367149   -1.2241214   -1.0493084
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.4345588   -0.7111998   -0.1579178
6 months    ki1114097-CMIN             BRAZIL                         <48 cm               NA                -0.8909973   -1.3925735   -0.3894210
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                -1.0546846   -1.3993674   -0.7100019
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.1984653    0.0987819    0.2981487
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                -1.2221510   -1.3681185   -1.0761835
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.7455935   -0.9196167   -0.5715703
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4888380   -0.5335237   -0.4441523
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.3256111   -1.3718916   -1.2793306
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.8453700   -0.8855416   -0.8051984
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -1.2345222   -1.3257376   -1.1433068
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -2.7288120   -2.8749139   -2.5827101
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -2.0431998   -2.1681818   -1.9182179
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.1371642   -0.1903926   -0.0839357
6 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -1.6200081   -1.6635907   -1.5764254
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.8074161   -0.8469890   -0.7678432
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.6209419   -0.6831769   -0.5587068
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -1.8349161   -1.9145003   -1.7553319
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -1.1862977   -1.2465877   -1.1260076
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.5781058   -0.6288103   -0.5274012
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -1.6775705   -1.7007411   -1.6543998
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.7696282   -0.8022896   -0.7369667
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.9166679   -0.9883885   -0.8449472
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -1.7658752   -1.8231239   -1.7086264
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.0185832   -1.0869856   -0.9501808
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.2194731   -1.4381385   -1.0008077
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -2.2244561   -2.4048797   -2.0440325
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -1.7280727   -1.9269312   -1.5292141
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.4933831   -0.1170277    1.1037938
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.2071489   -0.5005034    0.0862056
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.1182108   -0.3487337    0.1123121
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.1616437   -1.4111109   -0.9121765
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -2.0873275   -2.3090520   -1.8656030
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -1.6309413   -1.8187328   -1.4431499
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.6958624   -0.9667097   -0.4250150
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -1.6468635   -1.8499065   -1.4438206
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -1.2761482   -1.4810267   -1.0712698
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -1.4102651   -1.7957838   -1.0247464
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -1.9933769   -2.1749850   -1.8117689
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -1.4651580   -1.6285455   -1.3017706
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -1.1768420   -1.4911918   -0.8624923
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -1.7915342   -1.9964498   -1.5866187
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -1.5230179   -1.7772271   -1.2688086
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -1.8068077   -2.1243722   -1.4892433
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.8233772   -3.1219871   -2.5247672
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -2.2744645   -2.5583711   -1.9905579
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -2.6429689   -3.0909332   -2.1950045
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -2.6687479   -2.8824344   -2.4550613
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -2.4590510   -2.7285606   -2.1895415
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -1.5811461   -1.7454061   -1.4168860
24 months   ki1000108-IRC              INDIA                          <48 cm               NA                -2.0870393   -2.2677103   -1.9063682
24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -1.7092136   -1.8614458   -1.5569814
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.1947884   -1.6524702   -0.7371066
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -2.7804824   -3.0262492   -2.5347156
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -2.0213246   -2.2760068   -1.7666424
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.9901710   -1.1368477   -0.8434942
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -2.1828096   -2.3094351   -2.0561841
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -1.4153847   -1.5330886   -1.2976809
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.9214399   -1.0449499   -0.7979300
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.7873037   -1.9213684   -1.6532390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -1.3860991   -1.5231968   -1.2490014
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -1.2813952   -1.3678631   -1.1949272
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -1.9269456   -2.0586234   -1.7952679
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -1.7171070   -1.8232360   -1.6109780
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0997471   -0.4062282    0.2067339
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                -0.4601997   -0.9010914   -0.0193079
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.4788207   -0.7999302   -0.1577113
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.8475773   -2.2114583   -1.4836964
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -2.6196996   -2.7572442   -2.4821551
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -2.1581985   -2.3807476   -1.9356494
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -2.4443755   -2.5631493   -2.3256017
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -3.4289442   -3.6098932   -3.2479952
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -3.0142609   -3.1623190   -2.8662027
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.1673069   -1.2357410   -1.0988729
24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                -2.4066444   -2.4577891   -2.3554997
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -1.7974362   -1.8484931   -1.7463793
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.9367087   -2.0062999   -1.8671175
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -2.9368776   -3.0236435   -2.8501116
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -2.4712121   -2.5377634   -2.4046607
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -1.4561964   -1.5262780   -1.3861147
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -2.2845120   -2.3156287   -2.2533952
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -1.5954480   -1.6377077   -1.5531883
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -1.4461959   -1.5149709   -1.3774209
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -2.0373877   -2.0914559   -1.9833194
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.5189996   -1.5857907   -1.4522085


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.5292857   -0.8821252   -0.1764462
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0341467   -0.0293905    0.0976838
Birth       ki1114097-CMIN             BRAZIL                         NA                   NA                 0.0576522   -0.1471825    0.2624869
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5747407   -1.5944667   -1.5550147
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2022650   -1.3221143   -1.0824156
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0285067   -0.1269738    0.1839873
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2237306   -1.3563024   -1.0911587
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5539669   -0.6835584   -0.4243753
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3183014   -1.4284232   -1.2081796
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0867445   -1.2250027   -0.9484864
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.2464426   -1.4177169   -1.0751682
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.2850327   -1.5453313   -1.0247341
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2263582   -1.3620220   -1.0906944
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.2224719   -2.4728598   -1.9720840
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4030363   -1.4821426   -1.3239299
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4277434   -1.5827644   -1.2727225
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9034101   -0.9602836   -0.8465366
6 months    ki1114097-CMIN             BRAZIL                         NA                   NA                -0.6919231   -0.9005727   -0.4832735
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8901030   -0.9161931   -0.8640129
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.7553052   -1.8330182   -1.6775923
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9973610   -1.0266429   -0.9680792
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1429137   -1.1848624   -1.1009651
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3106391   -1.3337645   -1.2875137
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3464316   -1.3887462   -1.3041170
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9335507   -2.0606304   -1.8064710
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0454676   -0.2306672    0.1397320
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8062772   -1.9488106   -1.6637437
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2952424   -1.4309104   -1.1595745
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7348953   -1.8589497   -1.6108409
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6101741   -1.7576350   -1.4627133
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.4650971   -2.6626390   -2.2675551
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.4847115   -2.6420148   -2.3274082
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7718205   -1.8683675   -1.6752735
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2364903   -2.4267511   -2.0462295
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5419019   -1.6041979   -1.4796059
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.4044989   -2.5203692   -2.2886286
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8321530   -2.9208502   -2.7434558
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -1.9065763   -1.9410803   -1.8720724
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3915397   -2.4363201   -2.3467593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0116189   -2.0393361   -1.9839017
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7492977   -1.7876816   -1.7109138


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -2.3118402   -2.4660884   -2.1575920
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -1.0128838   -1.1347541   -0.8910135
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -2.4685529   -2.7076964   -2.2294093
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -1.1952652   -1.3693357   -1.0211946
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -2.2430304   -2.4454291   -2.0406317
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.8902171   -1.0559606   -0.7244736
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -2.2698647   -2.4797578   -2.0599716
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.9761481   -1.0992023   -0.8530938
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -2.1433238   -2.3547886   -1.9318590
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.8899797   -1.0742238   -0.7057357
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -2.3675934   -2.5850374   -2.1501494
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -1.1428890   -1.3215947   -0.9641833
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -2.4756207   -2.8901181   -2.0611234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -1.0658668   -1.4033077   -0.7284259
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -1.8874551   -2.2561007   -1.5188096
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.4398903   -0.7366370   -0.1431435
Birth       ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -3.3539891   -3.6259824   -3.0819958
Birth       ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -1.8074277   -1.9974694   -1.6173860
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -2.7541308   -2.9718565   -2.5364052
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -1.2372222   -1.3611186   -1.1133259
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -2.2946753   -2.5835989   -2.0057518
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -1.3458571   -1.6048064   -1.0869079
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -2.7661614   -2.8956692   -2.6366536
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -1.3368140   -1.3979437   -1.2756844
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm           -2.9856565   -3.5173591   -2.4539539
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm           -1.2499510   -1.4187893   -1.0811126
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -3.1780462   -3.3234871   -3.0326053
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -1.9547960   -2.0848489   -1.8247431
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -2.6686815   -2.7025179   -2.6348451
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -1.2452570   -1.2696183   -1.2208956
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -2.8173431   -2.9669730   -2.6677132
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -1.3323300   -1.4105258   -1.2541343
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -2.5702465   -2.6152921   -2.5252009
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -1.1773088   -1.2140612   -1.1405564
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -2.4473382   -2.5116046   -2.3830719
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -1.1298000   -1.1691919   -1.0904081
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -2.7116432   -2.7578783   -2.6654081
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -1.0904676   -1.1327763   -1.0481588
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -2.6429453   -2.8211610   -2.4647296
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -1.1140040   -1.2845379   -0.9434702
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -1.3916611   -1.6495017   -1.1338206
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.6642494   -0.9317056   -0.3967932
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -1.0397628   -1.5287089   -0.5508166
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.4110010   -0.8386483    0.0166462
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -1.3938141   -1.6768894   -1.1107388
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.5881256   -0.8611860   -0.3150651
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -1.3271337   -1.5948566   -1.0594108
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.6855436   -0.9396702   -0.4314170
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.9955049   -1.3003033   -0.6907064
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.3121496   -0.6192371   -0.0050622
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -1.0330486   -1.4103810   -0.6557161
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.5788927   -0.9429699   -0.2148155
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -1.2712713   -1.9115495   -0.6309931
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.5746108   -1.1952970    0.0460754
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.2261915   -1.0706842    0.6183012
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2424636   -0.6225898    1.1075170
6 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -1.1152450   -1.4544305   -0.7760594
6 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.4532540   -0.7436094   -0.1628985
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -1.5878427   -2.0853759   -1.0903095
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.7330020   -1.2325471   -0.2334569
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -1.3205921   -1.5476939   -1.0934903
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.4134705   -0.6609947   -0.1659463
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.5518615   -1.9915926   -1.1121304
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.7789911   -1.2006844   -0.3572979
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -1.4038950   -1.5777940   -1.2299961
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.6555188   -0.8219137   -0.4891239
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -1.3448201   -1.4946409   -1.1949994
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.7225236   -0.8689963   -0.5760510
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.9679963   -1.1191344   -0.8168583
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.5942941   -0.7116920   -0.4768961
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm           -0.4564385   -1.0290497    0.1161727
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm           -0.6201258   -1.0650116   -0.1752401
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -1.4206163   -1.5670484   -1.2741843
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.9440588   -1.0771608   -0.8109569
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.8367731   -0.9010298   -0.7725164
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.3565320   -0.4165522   -0.2965119
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -1.4942898   -1.6662168   -1.3223627
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.8086776   -0.9629838   -0.6543714
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -1.4828439   -1.5515788   -1.4141091
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6702520   -0.7365533   -0.6039506
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -1.2139742   -1.3149138   -1.1130346
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5653558   -0.6519177   -0.4787939
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -1.0994647   -1.1520381   -1.0468913
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.1915224   -0.2472352   -0.1358096
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.8492073   -0.9401897   -0.7582250
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.1019154   -0.1979202   -0.0059105
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -1.0049830   -1.2886708   -0.7212952
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.5085996   -0.8057225   -0.2114767
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.7005320   -1.3773257   -0.0237383
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.6115938   -1.2678981    0.0447104
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.9256838   -1.2604682   -0.5908994
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.4692976   -0.7820492   -0.1565460
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.9510011   -1.2899077   -0.6120946
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.5802859   -0.9203877   -0.2401840
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.5831118   -1.0087139   -0.1575098
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0548929   -0.4750545    0.3652686
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.6146922   -0.9915428   -0.2378416
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.3461759   -0.7527362    0.0603845
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -1.0165694   -1.4546001   -0.5785388
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.4676567   -0.8941293   -0.0411842
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0257790   -0.5232659    0.4717079
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.1839178   -0.3467218    0.7145574
24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.5058932   -0.7502696   -0.2615168
24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.1280676   -0.3525948    0.0964596
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.5856939   -2.1046801   -1.0667078
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.8265362   -1.3488069   -0.3042654
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -1.1926387   -1.3862707   -0.9990066
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.4252138   -0.6131727   -0.2372549
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.8658638   -1.0483295   -0.6833981
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.4646592   -0.6493327   -0.2799857
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.6455505   -0.8021561   -0.4889448
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.4357118   -0.5711884   -0.3002352
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.3604525   -0.8365630    0.1156580
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.3790736   -0.6390051   -0.1191421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.7721223   -1.1604319   -0.3838128
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.3106212   -0.7365457    0.1153033
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.9845687   -1.2004890   -0.7686483
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.5698853   -0.7595105   -0.3802602
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -1.2393375   -1.3248033   -1.1538716
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6301293   -0.7155463   -0.5447123
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -1.0001689   -1.1114187   -0.8889191
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5345034   -0.6307749   -0.4382319
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.8283156   -0.9019202   -0.7547111
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.1392516   -0.2214393   -0.0570640
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.5911918   -0.6771179   -0.5052656
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0728037   -0.1649098    0.0193023


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.6184471   -1.7688249   -1.4680694
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -1.5142713   -1.7151258   -1.3134169
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.4821729   -1.6713059   -1.2930398
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -1.2546909   -1.4246258   -1.0847561
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -1.4044189   -1.5958747   -1.2129632
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -1.4733796   -1.6585499   -1.2882094
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -1.5340570   -1.8892472   -1.1788669
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.8827919   -1.1915647   -0.5740191
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                -1.5843372   -1.7712468   -1.3974277
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -2.1835413   -2.4502376   -1.9168450
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.3821429   -1.7703499   -0.9939358
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.9416793   -1.0058455   -0.8775132
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.7715782   -0.9725990   -0.5705574
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.1893233   -0.2328187   -0.1458279
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3290554   -1.3543136   -1.3037972
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.9191288   -1.0044110   -0.8338466
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.5082055   -1.5470534   -1.4693576
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.0397932   -1.0825449   -0.9970415
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -2.2255014   -2.2724758   -2.1785270
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -2.1863002   -2.3531290   -2.0194715
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.9604122   -1.1772259   -0.7435986
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.6108473   -0.9774541   -0.2442406
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.9359459   -1.1693286   -0.7025633
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.7691529   -0.9629901   -0.5753158
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.6224784   -0.8806040   -0.3643528
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.6604994   -0.9436058   -0.3773929
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.8397882   -1.3982736   -0.2813028
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0157900   -0.7136991    0.6821191
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.4647290   -0.6386704   -0.2907876
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.9194489   -1.2718938   -0.5670041
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.8404522   -1.0343433   -0.6465612
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.0209312   -1.3789279   -0.6629345
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.7622577   -0.8873307   -0.6371847
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.7932175   -0.8995574   -0.6868775
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.3609893   -0.4181025   -0.3038761
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.2573643   -0.4443537   -0.0703749
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0914667   -0.1148093   -0.0681241
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4012650   -0.4400560   -0.3624740
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.5207830   -0.5972667   -0.4442993
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.8601969   -0.9101295   -0.8102643
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.5219718   -0.5747514   -0.4691923
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.7325333   -0.7767584   -0.6883083
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.4297637   -0.4914193   -0.3681082
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.7140776   -0.9441203   -0.4840349
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.5388507   -1.0961107    0.0184093
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.6446335   -0.9057926   -0.3834743
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.5993800   -0.8472219   -0.3515381
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.3246302   -0.6828330    0.0335726
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.4333321   -0.7307736   -0.1358907
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.6582893   -1.0025863   -0.3139924
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1582573   -0.2587102    0.5752248
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.1906745   -0.3212450   -0.0601039
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.0417018   -1.4725098   -0.6108939
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.5959469   -0.7303138   -0.4615800
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.5080931   -0.6294822   -0.3867041
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.2605067   -0.3220802   -0.1989332
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0316577   -0.0587684   -0.0045469
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.5569216   -0.8968036   -0.2170395
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.3877775   -0.4815886   -0.2939663
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.7392694   -0.8013030   -0.6772359
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4548310   -0.5122692   -0.3973928
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.5554225   -0.6197182   -0.4911269
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.3031018   -0.3610519   -0.2451517

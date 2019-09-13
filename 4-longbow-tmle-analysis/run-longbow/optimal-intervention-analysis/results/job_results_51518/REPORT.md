---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7858f02a-874c-4cb0-9c5f-1b56c03c9a4e/d538fd93-66cf-4431-bf1e-4d31fa340d94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.5303571    0.4355432    0.6251711
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7277612    0.5494934    0.9060291
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.4447029    0.2882100    0.6011958
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.5795854    0.4895388    0.6696320
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2917034    0.1276307    0.4557760
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.7141817    0.5462278    0.8821355
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5910918    0.2707478    0.9114359
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2467935   -0.0060555    0.4996425
Birth       ki1000108-IRC              INDIA                          optimal              observed           1.2550936    1.0732116    1.4369756
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.5555376    0.4256700    0.6854053
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.7432911    0.4723590    1.0142232
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.9773757    0.9233089    1.0314425
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.8390802    0.6905336    0.9876269
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.5133925    1.3811906    1.6455944
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.8276858    0.8048820    0.8504897
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           1.0492732    0.9829594    1.1155871
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.8356859    0.7992402    0.8721316
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.7911416    0.7566269    0.8256562
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.6577869    0.5991173    0.7164565
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0797471   -0.1381349    0.2976291
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2766745   -0.5001224   -0.0532267
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5886393    0.1632828    1.0139958
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3179374   -0.5456906   -0.0901843
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2137358    0.0177638    0.4097077
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8399129   -1.1018685   -0.5779574
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4609250   -0.7726881   -0.1491620
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2215999   -0.7437504    0.3005505
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0340035   -1.4570655   -0.6109415
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7493999   -0.9605629   -0.5382368
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.3190251   -1.6474090   -0.9906413
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5844597   -0.7599376   -0.4089819
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4005735   -0.7746902   -0.0264568
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3239043   -0.4608741   -0.1869344
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4130574   -0.5227142   -0.3034006
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.5386157   -0.6168439   -0.4603876
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.4315057   -0.7098222   -0.1531892
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1929883    0.0581452    0.3278314
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4856642   -0.5303828   -0.4409457
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.2286232   -1.3196205   -1.1376259
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1309443   -0.1846162   -0.0772724
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6203204   -0.6825169   -0.5581240
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5769877   -0.6257462   -0.5282291
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.9499297   -1.0227542   -0.8771051
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3081235   -1.5146831   -1.1015638
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4609179   -0.1759729    1.0978086
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1942427   -1.4366434   -0.9518420
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7096795   -0.9796487   -0.4397102
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5904753   -1.8667373   -1.3142134
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.3379549   -1.6637486   -1.0121612
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.7564735   -2.1402297   -1.3727173
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.2391182   -2.7099405   -1.7682959
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.5855542   -1.7483763   -1.4227321
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1763818   -1.6345955   -0.7181681
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9925450   -1.1393298   -0.8457601
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9312369   -1.0549625   -0.8075112
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.2809714   -1.3672601   -1.1946827
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1364041   -0.4845902    0.2117819
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.8684780   -2.2295115   -1.5074445
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.4514541   -2.5682439   -2.3346642
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.1611812   -1.2299293   -1.0924330
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.9346910   -2.0042197   -1.8651623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4657604   -1.5342512   -1.3972695
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4607219   -1.5303909   -1.3910530


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
Birth       ki1114097-CMIN             BRAZIL                         observed             observed           0.0576522   -0.1471825    0.2624869
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5747407   -1.5944667   -1.5550147
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2022650   -1.3221143   -1.0824156
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0285067   -0.1269738    0.1839873
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2237306   -1.3563024   -1.0911587
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5539669   -0.6835584   -0.4243753
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3183014   -1.4284232   -1.2081796
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0867445   -1.2250027   -0.9484864
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.2464426   -1.4177169   -1.0751682
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.2850327   -1.5453313   -1.0247341
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2263582   -1.3620220   -1.0906944
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2224719   -2.4728598   -1.9720840
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4030363   -1.4821426   -1.3239299
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4277434   -1.5827644   -1.2727225
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9034101   -0.9602836   -0.8465366
6 months    ki1114097-CMIN             BRAZIL                         observed             observed          -0.6919231   -0.9005727   -0.4832735
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8901030   -0.9161931   -0.8640129
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.7553052   -1.8330182   -1.6775923
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9973610   -1.0266429   -0.9680792
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1429137   -1.1848624   -1.1009651
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3106391   -1.3337645   -1.2875137
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3464316   -1.3887462   -1.3041170
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9335507   -2.0606304   -1.8064710
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.0454676   -0.2306672    0.1397320
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8062772   -1.9488106   -1.6637437
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2952424   -1.4309104   -1.1595745
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7348953   -1.8589497   -1.6108409
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6101741   -1.7576350   -1.4627133
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.4650971   -2.6626390   -2.2675551
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.4847115   -2.6420148   -2.3274082
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7718205   -1.8683675   -1.6752735
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2364903   -2.4267511   -2.0462295
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5419019   -1.6041979   -1.4796059
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.4044989   -2.5203692   -2.2886286
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8321530   -2.9208502   -2.7434558
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9065763   -1.9410803   -1.8720724
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3915397   -2.4363201   -2.3467593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0116189   -2.0393361   -1.9839017
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7492977   -1.7876816   -1.7109138


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.6147540   -1.7666097   -1.4628984
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -1.4887037   -1.7077559   -1.2696514
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4553340   -1.6513331   -1.2593348
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2884871   -1.4591692   -1.1178051
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2239333   -1.4098804   -1.0379862
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4407847   -1.6273000   -1.2542694
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5249130   -1.8738403   -1.1759856
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2122380   -1.5147794   -0.9096965
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.5631349   -1.7497995   -1.3764702
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.9501900   -2.2171916   -1.6831885
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2725768   -1.6674211   -0.8777325
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9432291   -1.0077444   -0.8787137
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.7814281   -0.9860155   -0.5768406
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1879150   -0.2312421   -0.1445879
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.3286518   -1.3540647   -1.3032390
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9195432   -1.0066646   -0.8324218
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.5055820   -1.5464901   -1.4646738
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0401908   -1.0830960   -0.9972855
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -2.2325277   -2.2957966   -2.1692587
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5774113   -1.8074704   -1.3473522
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9255904   -1.1545971   -0.6965837
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5601325   -0.9597550   -0.1605100
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9057931   -1.1449652   -0.6666211
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7677026   -0.9653192   -0.5700861
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4783885   -0.7260833   -0.2306936
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6258195   -0.9115598   -0.3400793
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0248426   -1.5216854   -0.5279999
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2510292   -0.5827918    0.0807334
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4769583   -0.6518801   -0.3020365
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.9034468   -1.2460247   -0.5608689
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.8185765   -0.9873684   -0.6497846
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0271700   -1.3765062   -0.6778337
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7631998   -0.8884647   -0.6379349
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7856209   -0.8943106   -0.6769312
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3647944   -0.4218812   -0.3077075
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.2604174   -0.4472655   -0.0735692
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0859897   -0.1689295   -0.0030499
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4044387   -0.4432629   -0.3656145
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5266820   -0.6035232   -0.4498409
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8664167   -0.9169180   -0.8159154
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5225933   -0.5752438   -0.4699428
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7336514   -0.7775804   -0.6897225
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3965019   -0.4589129   -0.3340910
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6254273   -0.8437556   -0.4070990
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5063855   -1.0890808    0.0763099
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6120345   -0.8655846   -0.3584843
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5855630   -0.8323880   -0.3387379
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1444200   -0.4067746    0.1179347
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2722193   -0.5701673    0.0257288
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7086236   -1.1110112   -0.3062359
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2455933   -0.6802094    0.1890228
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1862663   -0.3154878   -0.0570449
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0601085   -1.4914233   -0.6287936
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5935729   -0.7281258   -0.4590200
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4982962   -0.6197161   -0.3768764
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2609305   -0.3223634   -0.1994976
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0049993   -0.1499165    0.1599152
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5360208   -0.8735132   -0.1985285
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3806990   -0.4731407   -0.2882572
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.7453952   -0.8078216   -0.6829687
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4568487   -0.5142305   -0.3994669
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5458585   -0.6085125   -0.4832046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2885758   -0.3479309   -0.2292207

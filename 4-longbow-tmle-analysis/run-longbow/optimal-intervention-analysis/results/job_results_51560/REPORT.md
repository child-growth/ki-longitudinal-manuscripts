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

**Outcome Variable:** whz

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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthlen      n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           29     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm           128     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        84     241
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm           34     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm            73     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        76     183
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm           25     203
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm           104     203
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm        74     203
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm           38     168
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm            64     168
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm        66     168
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm           34     279
Birth       ki0047075b-MAL-ED          PERU                           <48 cm           134     279
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm       111     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           46     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm           109     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm       103     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           15     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            52     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            32      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40      84
Birth       ki1000108-IRC              INDIA                          >=50 cm          120     343
Birth       ki1000108-IRC              INDIA                          <48 cm            87     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm       136     343
Birth       ki1000109-EE               PAKISTAN                       >=50 cm            0       1
Birth       ki1000109-EE               PAKISTAN                       <48 cm             1       1
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm         0       1
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm            3       6
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm             1       6
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm         2       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm           103     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm        54     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm            11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        10      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm            10      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm        10      23
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm          715    1423
Birth       ki1101329-Keneba           GAMBIA                         <48 cm           251    1423
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm       457    1423
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            2       8
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm             4       8
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         2       8
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm           63     111
Birth       ki1114097-CMIN             BRAZIL                         <48 cm            12     111
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm        36     111
Birth       ki1114097-CMIN             PERU                           >=50 cm           10      10
Birth       ki1114097-CMIN             PERU                           <48 cm             0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm         0      10
Birth       ki1114097-CONTENT          PERU                           >=50 cm            1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm             1       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm        12564   13824
Birth       ki1119695-PROBIT           BELARUS                        <48 cm           140   13824
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm      1120   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         3996   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          3641   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      5279   12916
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm          396     756
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm           132     756
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm       228     756
Birth       ki1135781-COHORTS          INDIA                          >=50 cm         1404    6193
Birth       ki1135781-COHORTS          INDIA                          <48 cm          2354    6193
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm      2435    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm         1110    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm           651    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1138    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          946   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         10421   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      4342   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm           36     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           460     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       187     683
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           15     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            48     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     103
6 months    ki1000108-IRC              INDIA                          >=50 cm          141     389
6 months    ki1000108-IRC              INDIA                          <48 cm           110     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm       138     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm           22      90
6 months    ki1000109-EE               PAKISTAN                       <48 cm            43      90
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm        25      90
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            4      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm             6      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         7      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          196    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           708    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       418    1322
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           25     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm            83     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        70     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          140     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           206     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       236     582
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
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm        14292   15757
6 months    ki1119695-PROBIT           BELARUS                        <48 cm           172   15757
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm      1293   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2392    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2582    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3201    8175
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          351     689
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm           134     689
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm       204     689
6 months    ki1135781-COHORTS          INDIA                          >=50 cm         1329    6127
6 months    ki1135781-COHORTS          INDIA                          <48 cm          2527    6127
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm      2271    6127
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm          989    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm           677    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1033    2699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         2423   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         10282   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      3775   16480
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1101    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1927    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       996    4024
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           20     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm            62     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        54     136
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          139     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           206     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       233     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          128     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           200     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       186     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          535    1066
24 months   ki1101329-Keneba           GAMBIA                         <48 cm           197    1066
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       334    1066
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             1       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         0       1
24 months   ki1114097-CMIN             PERU                           >=50 cm            3       4
24 months   ki1114097-CMIN             PERU                           <48 cm             1       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm         0       4
24 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm             1       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm         3623    3971
24 months   ki1119695-PROBIT           BELARUS                        <48 cm            44    3971
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm       304    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm           42     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           250     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       125     417
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          264     564
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           122     564
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       178     564
24 months   ki1135781-COHORTS          INDIA                          >=50 cm         1035    4722
24 months   ki1135781-COHORTS          INDIA                          <48 cm          1928    4722
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm      1759    4722
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm          895    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm           609    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm       942    2446
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1166    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5277    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      1972    8415
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1074    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1937    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       963    3974


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
![](/tmp/a606ce3b-8eb4-4c8f-a121-4c221c3552d7/180f89ca-a0d6-4307-9d19-68d58d8e64fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8886258   -1.0883265   -0.6889252
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7392812    0.4755094    1.0030530
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5120728   -1.7446511   -1.2794944
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6315678   -0.8401471   -0.4229885
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0158383   -0.1905907    0.1589140
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1616798   -0.0663357    0.3896953
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3300854    1.0549134    1.6052573
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7196123   -1.3374014   -0.1018232
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1378034   -0.4960938    0.2204871
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0805602   -0.5013385    0.3402180
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1192614   -1.5617328   -0.6767901
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.8430707    1.6714422    2.0146991
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.0878355   -0.4195570    0.5952280
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0854863    0.0051083    0.1658643
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0568489    0.0073305    0.1063673
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2538343   -0.5107558    0.0030873
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7735603   -0.8242615   -0.7228591
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3708103   -0.4758431   -0.2657775
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6964740   -0.7221565   -0.6707916
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4073037   -0.5250411   -0.2895664
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2348213   -0.5594519    0.0898092
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.8406343    0.5269916    1.1542770
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7919298   -1.0690761   -0.5147835
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0659694   -0.1838046    0.3157433
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.9641470    0.7039734    1.2243207
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6828577    0.3729763    0.9927391
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0128427    0.6522935    1.3733919
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.3111213   -1.0569144    1.6791570
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4976012   -0.7699784   -0.2252241
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.9217658   -1.2443031   -0.5992285
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6073841   -0.7732246   -0.4415437
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0972689   -0.5018619    0.3073242
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1478720   -0.0279665    0.3237104
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1339713   -0.0292434    0.2971859
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1303473   -0.2372218   -0.0234729
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed           0.1540900   -0.2827931    0.5909732
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.4987457    0.4158121    0.5816794
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4013927    0.3538292    0.4489562
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2754566    0.1519122    0.3990010
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4706742   -0.5293530   -0.4119955
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2291300   -0.2951259   -0.1631341
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4734460   -0.5206344   -0.4262575
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3381358   -0.4056833   -0.2705883
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0441680   -1.2683614   -0.8199746
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9965805    0.5517918    1.4413692
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5108614   -0.8732683   -0.1484544
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3617591   -0.5987002   -0.1248179
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.6014680    0.3481876    0.8547484
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6416071    0.3378707    0.9453435
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1509322   -0.2296487    0.5315130
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0259541   -0.5451348    0.4932265
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7055266   -0.8678107   -0.5432425
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4790887   -1.0188787    0.0607013
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6265005   -0.8049927   -0.4480083
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4413240   -0.6321790   -0.2504690
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6667174   -0.7502497   -0.5831852
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7158786    0.6160934    0.8156638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0652387   -1.1893834   -0.9410941
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0623562   -0.1625547    0.0378423
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2816494   -0.3438791   -0.2194197
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4427763   -0.5002094   -0.3853432
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0807578   -1.1393837   -1.0221319
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1179308   -1.1848936   -1.0509680


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4259524   -0.7275464   -0.1243584
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         observed             observed          -0.1332432   -0.3441055    0.0776190
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1381446   -0.2698274   -0.0064617
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9172158    0.7408430    1.0935886
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6539378   -0.7880250   -0.5198506
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.0863255   -0.0667534    0.2394044
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0566794    0.9305522    1.1828067
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5253505    0.3664313    0.6842696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5403221    0.3393901    0.7412542
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5067476   -0.8037126   -0.2097826
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.6409340   -0.7788045   -0.5030635
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7767222   -0.9717281   -0.5817164
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6674924   -0.8047012   -0.5302836
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4834785   -0.6351316   -0.3318253
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1974883   -0.2592505   -0.1357261
6 months    ki1114097-CMIN             BRAZIL                         observed             observed           0.5720192    0.3533308    0.7907076
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3029352    0.2767363    0.3291340
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.2193904    0.1338361    0.3049448
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6983940   -0.7275858   -0.6692022
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2943461   -0.3357404   -0.2529517
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5925422   -0.6122363   -0.5728481
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3757033   -0.4185197   -0.3328869
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8089372   -0.9318210   -0.6860534
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.3865827    0.1742997    0.5988658
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9355163   -1.0663799   -0.8046527
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.4439697   -0.5820767   -0.3058627
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1284293    0.0027575    0.2541011
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3791791    0.2503298    0.5080284
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1162621   -0.0590516    0.2915759
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4481571   -0.6325044   -0.2638097
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7536624   -0.8467166   -0.6606082
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.8657047   -1.0392127   -0.6921966
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7949018   -0.8551887   -0.7346150
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1795683   -1.2807691   -1.0783676
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2016312   -0.2740358   -0.1292266
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5945743   -0.6244188   -0.5647299
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6103189   -0.6471371   -0.5735006
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2983351   -1.3215868   -1.2750834
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2411122   -1.2752162   -1.2070083


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0744447   -0.2305771    0.0816877
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3354015   -0.5524395   -0.1183634
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.4429595    0.2313828    0.6545361
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2728965   -0.4446972   -0.1010957
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0577459   -0.1800643    0.0645725
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2179589   -0.3891060   -0.0468117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5368650   -0.7736723   -0.3000577
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2936599   -0.2423687    0.8296886
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8727797   -1.1868163   -0.5587432
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1891988   -0.4252457    0.0468481
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3046672   -0.7379140    0.1285797
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1394515   -0.2892014    0.0102983
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.2210788   -0.6954714    0.2533138
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2318332   -1.4558209   -1.0078456
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5719913   -0.6137999   -0.5301828
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.8083086   -1.0393631   -0.5772541
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2111854   -0.2503541   -0.1720167
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3719148   -0.4623856   -0.2814439
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0276255   -0.0430138   -0.0122372
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0389875   -0.0475373    0.1255123
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0966767   -0.1801467    0.3735002
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0765815   -0.2059775    0.3591405
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1379920   -0.1122637    0.3882477
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0203561   -0.1890534    0.2297657
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0925324   -0.1402089    0.3252738
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1575073   -0.4515207    0.1365062
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4725206   -0.7835584   -0.1614828
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8178689   -2.0390095    0.4032717
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1433328   -0.3704501    0.0837845
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.1450436   -0.1300296    0.4201167
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0601083   -0.1705132    0.0502966
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3862096   -0.7643984   -0.0080208
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3562425   -0.5087227   -0.2037623
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1042090   -0.2380345    0.0296165
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0671410   -0.1593425    0.0250605
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed           0.4179292   -0.0086755    0.8445339
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0802176    0.0188856    0.1415496
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0984576   -0.1388433   -0.0580719
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0560662   -0.1523229    0.0401905
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2277198   -0.2808081   -0.1746315
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0652160   -0.1187643   -0.0116677
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1190962   -0.1620476   -0.0761448
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0375675   -0.0970705    0.0219355
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2352308    0.0367104    0.4337512
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6099978   -1.0182083   -0.2017873
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4246549   -0.7686688   -0.0806411
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0822106   -0.3056595    0.1412383
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4730387   -0.7278456   -0.2182318
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2624280   -0.5441024    0.0192464
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0346700   -0.4248511    0.3555111
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4222029   -0.9104840    0.0660781
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0481358   -0.1758120    0.0795403
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3866159   -0.8889778    0.1157459
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2614407   -0.4155932   -0.1072882
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1690262   -0.3275945   -0.0104580
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1281844   -0.1891677   -0.0672011
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0295351   -0.0734545    0.0143843
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1143296   -0.1992910   -0.0293682
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1392750   -0.2173831   -0.0611670
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3129249   -0.3680938   -0.2577560
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1675426   -0.2148889   -0.1201963
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2175773   -0.2729830   -0.1621716
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1231815   -0.1801836   -0.0661793

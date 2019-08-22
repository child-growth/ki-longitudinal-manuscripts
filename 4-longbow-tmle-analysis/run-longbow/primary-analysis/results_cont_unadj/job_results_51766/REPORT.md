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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/a6aa19f0-63df-482c-a799-909f27867b19/473d3a38-795c-41b6-8f41-0d90863a4d37/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a6aa19f0-63df-482c-a799-909f27867b19/473d3a38-795c-41b6-8f41-0d90863a4d37/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a6aa19f0-63df-482c-a799-909f27867b19/473d3a38-795c-41b6-8f41-0d90863a4d37/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.4220690   -1.8389292   -1.0052087
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.8916406   -1.0730229   -0.7102584
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.9134524   -1.1392443   -0.6876604
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.2929412   -0.7221801    0.1362978
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.6791781    0.4162121    0.9421441
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.4511842    0.2051768    0.6971916
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.0392000   -1.3480629   -0.7303371
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.0931731   -1.2962375   -0.8901087
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -1.0454054   -1.2744313   -0.8163795
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -1.1578947   -1.4012662   -0.9145233
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.8170312   -1.0864529   -0.5476096
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.8433333   -1.0313973   -0.6552694
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.2182353   -0.5224484    0.0859779
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0060448   -0.1713033    0.1592137
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.1108108   -0.2767902    0.0551686
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.5330435   -0.8736833   -0.1924036
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.2052294   -0.0188779    0.4293366
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.1200971   -0.3291391    0.0889450
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0553333   -0.6997654    0.5890987
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 1.1661538    0.8890885    1.4432191
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.6625490    0.4098317    0.9152663
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.2075000   -0.7332352    0.3182352
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0803125   -0.6865839    0.5259589
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.7680000   -1.1129053   -0.4230947
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                -2.0526667   -2.3371437   -1.7681896
Birth       ki1000108-IRC              INDIA                          <48 cm               NA                -0.1867816   -0.5436225    0.1700593
Birth       ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.6180882   -0.8687692   -0.3674072
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.5044444   -0.8892183   -0.1196706
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0922330   -0.4961190    0.3116530
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.5692593   -0.9592701   -0.1792484
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.9985714   -2.6503158   -1.3468271
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -1.3745455   -1.9643907   -0.7847002
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.0760000   -1.4784677   -0.6735323
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 1.4572587    1.3447122    1.5698053
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               NA                 1.9298805    1.7056814    2.1540795
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                 1.9647921    1.8282303    2.1013539
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.2665079   -0.5484348    0.0154189
Birth       ki1114097-CMIN             BRAZIL                         <48 cm               NA                 0.2500000   -0.4864543    0.9864543
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                -0.0277778   -0.3582497    0.3026942
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -1.1974483   -1.4100483   -0.9848483
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.0787143   -0.0178935    0.1753221
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.7262321   -0.9188673   -0.5335970
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1029179   -1.1467085   -1.0591274
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0370915   -0.0121682    0.0863511
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4511025   -0.4885336   -0.4136714
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -1.4448232   -1.5718248   -1.3178216
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.2734091   -0.5286876   -0.0181306
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.8541228   -1.0289048   -0.6793408
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.2200356   -1.2783658   -1.1617054
Birth       ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.7811088   -0.8314490   -0.7307685
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -1.0459425   -1.0919794   -0.9999056
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.1170090   -1.1879177   -1.0461003
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.3857143   -0.4917023   -0.2797263
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.5818805   -0.6503863   -0.5133747
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.9641543   -1.0316210   -0.8966876
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.6812619   -0.7046764   -0.6578473
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.7746108   -0.8084614   -0.7407602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.6730556   -1.1223046   -0.2238065
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.3386957   -0.4321595   -0.2452318
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.3825134   -0.5495867   -0.2154400
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.2447701   -0.7060635    0.2165233
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.2073566   -0.3673266   -0.0473865
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.0008434   -0.2339981    0.2356849
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 1.0555000    0.6663034    1.4446966
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.6822464    0.3845766    0.9799162
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 1.0802477    0.8280512    1.3324443
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.5981250   -0.8945252   -0.3017248
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.6111221   -0.7902301   -0.4320141
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.7372304   -0.9872477   -0.4872131
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.1220175   -0.2520296    0.4960647
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0661692   -0.2968543    0.1645160
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.2205808   -0.0109389    0.4521005
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 1.1158333    0.7849787    1.4466880
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.9457449    0.7631283    1.1283616
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 1.1866667    0.9869407    1.3863926
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.6888462    0.3780736    0.9996187
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.5373256    0.2800219    0.7946292
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.4421348    0.1874996    0.6967701
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.4047619   -0.0455814    0.8551052
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.7076235    0.3909127    1.0243342
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.4003922    0.1038212    0.6969631
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1796667   -1.0185942    1.3779276
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.6140278   -1.0177298   -0.2103258
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.6354167   -0.9932790   -0.2775543
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.6904728   -0.8981637   -0.4827819
6 months    ki1000108-IRC              INDIA                          <48 cm               NA                -0.4933030   -0.7635304   -0.2230757
6 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.7079952   -0.9507479   -0.4652424
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.9002273   -1.2551100   -0.5453445
6 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.7370930   -1.0010186   -0.4731675
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.7362000   -1.1680231   -0.3043769
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.5260204   -0.7179963   -0.3340445
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.7565678   -0.8986483   -0.6144872
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.5829545   -0.7247697   -0.4411394
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0801000   -0.4669719    0.3067719
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.5019076   -0.7308136   -0.2730017
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.6056905   -0.8335081   -0.3778729
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1502143   -0.0253481    0.3257767
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.4646117   -0.6009472   -0.3282761
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.1974223   -0.3245534   -0.0702913
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1121341   -0.0502020    0.2744703
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0255185   -0.1090627    0.1600997
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0142349   -0.1348860    0.1064162
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.1616264   -0.2462947   -0.0769581
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.1770000   -0.3185296   -0.0354704
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.2641690   -0.3794787   -0.1488592
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              NA                 0.6317241    0.3463528    0.9170955
6 months    ki1114097-CMIN             BRAZIL                         <48 cm               NA                 0.5876923   -0.0766997    1.2520843
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                 0.4609091    0.0701015    0.8517167
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.5940162    0.5330889    0.6549436
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.5327907    0.4349391    0.6306423
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.4187200    0.3245729    0.5128672
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3930853    0.3456537    0.4405169
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.2294132    0.1820648    0.2767617
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.2948735    0.2530491    0.3366979
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.2649003    0.1493035    0.3804971
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.1079851   -0.1033040    0.3192742
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.2142647    0.0578908    0.3706386
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.4673439   -0.5262994   -0.4083883
6 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.8612505   -0.9075675   -0.8149335
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.6523910   -0.6998240   -0.6049581
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.2488473   -0.3151786   -0.1825161
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.3546233   -0.4399312   -0.2693155
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.2984027   -0.3656506   -0.2311548
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.4679034   -0.5176984   -0.4181085
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.6414423   -0.6647949   -0.6180898
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.5393523   -0.5759313   -0.5027733
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.3209582   -0.3945726   -0.2473438
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.4180384   -0.4820800   -0.3539968
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.3543122   -0.4292921   -0.2793324
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.6717857   -1.0427421   -0.3008293
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.9438725   -1.1070631   -0.7806820
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.6800649   -0.8845615   -0.4755683
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.6002381    0.1235414    1.0769348
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.1655263   -0.1788209    0.5098735
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.5195902    0.2057260    0.8334543
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.4702174   -0.8032930   -0.1371417
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.0298421   -1.2079410   -0.8517432
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.9618939   -1.1825891   -0.7411987
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.2248611   -0.5040920    0.0543698
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.6803846   -0.9043502   -0.4564191
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.3271094   -0.5380185   -0.1162003
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.6041304    0.3321287    0.8761321
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0687000   -0.2549137    0.1175137
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.2574265    0.0768431    0.4380098
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.6262857    0.3434901    0.9090813
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.3320482    0.1311018    0.5329946
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.3221084    0.1188561    0.5253608
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2995833   -0.0720837    0.6712503
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0759184   -0.1833567    0.3351934
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1109524   -0.1736616    0.3955664
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0197778   -0.4193315    0.4588871
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.6545918   -0.9199958   -0.3891879
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.3707500   -0.6593818   -0.0821182
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.6742606   -0.8291072   -0.5194139
24 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.8860303   -1.0491618   -0.7228988
24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.7298551   -0.8919518   -0.5677583
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.4582500   -0.8917326   -0.0247674
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.9529435   -1.2208402   -0.6850469
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.9164506   -1.1720918   -0.6608095
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.6246043   -0.8006450   -0.4485636
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.1688835   -1.2890390   -1.0487280
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.7966524   -0.9309320   -0.6623727
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.3990625   -0.5935932   -0.2045318
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.7500500   -0.8929680   -0.6071320
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.6055376   -0.7662485   -0.4448268
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.6699411   -0.7527413   -0.5871409
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.9379865   -1.0826991   -0.7932739
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.9106692   -1.0182121   -0.8031262
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.7153188    0.6043981    0.8262395
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.4925000    0.1589073    0.8260927
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.3690789    0.2207844    0.5173735
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3497619   -1.6365592   -1.0629646
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.0643200   -1.1880735   -0.9405665
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.3528800   -1.5563216   -1.1494384
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0644318   -0.1627402    0.0338766
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.4449180   -0.6255040   -0.2643321
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2383708   -0.3589664   -0.1177751
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.2913913   -0.3545454   -0.2282372
24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.7997251   -0.8458987   -0.7535515
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.5481069   -0.5955710   -0.5006427
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4452067   -0.5026039   -0.3878095
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.8420361   -0.9167339   -0.7673384
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.6173885   -0.6772745   -0.5575026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -1.0934134   -1.1546595   -1.0321673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -1.3884196   -1.4169746   -1.3598645
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -1.1784381   -1.2235213   -1.1333550
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -1.0958007   -1.1625601   -1.0290414
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -1.3553795   -1.4049290   -1.3058299
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.1733333   -1.2382468   -1.1084199


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4259524   -0.7275464   -0.1243584
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4239286   -1.7688028   -1.0790544
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         NA                   NA                -0.1332432   -0.3441055    0.0776190
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1381446   -0.2698274   -0.0064617
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9172158    0.7408430    1.0935886
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6539378   -0.7880250   -0.5198506
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0863255   -0.0667534    0.2394044
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0566794    0.9305522    1.1828067
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5253505    0.3664313    0.6842696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5403221    0.3393901    0.7412542
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5067476   -0.8037126   -0.2097826
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.6409340   -0.7788045   -0.5030635
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7767222   -0.9717281   -0.5817164
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6674924   -0.8047012   -0.5302836
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4834785   -0.6351316   -0.3318253
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1974883   -0.2592505   -0.1357261
6 months    ki1114097-CMIN             BRAZIL                         NA                   NA                 0.5720192    0.3533308    0.7907076
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3029352    0.2767363    0.3291340
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.2193904    0.1338361    0.3049448
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6983940   -0.7275858   -0.6692022
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2943461   -0.3357404   -0.2529517
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5925422   -0.6122363   -0.5728481
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3757033   -0.4185197   -0.3328869
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8089372   -0.9318210   -0.6860534
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.3865827    0.1742997    0.5988658
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9355163   -1.0663799   -0.8046527
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.4439697   -0.5820767   -0.3058627
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1284293    0.0027575    0.2541011
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3791791    0.2503298    0.5080284
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1162621   -0.0590516    0.2915759
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4481571   -0.6325044   -0.2638097
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7536624   -0.8467166   -0.6606082
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.8657047   -1.0392127   -0.6921966
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7949018   -0.8551887   -0.7346150
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1795683   -1.2807691   -1.0783676
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2016312   -0.2740358   -0.1292266
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5945743   -0.6244188   -0.5647299
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6103189   -0.6471371   -0.5735006
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2983351   -1.3215868   -1.2750834
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2411122   -1.2752162   -1.2070083


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.5304283    0.0758164    0.9850403
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.5086166    0.0345338    0.9826994
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.9721193    0.4687335    1.4755050
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.7441254    0.2493874    1.2388634
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0539731   -0.4236100    0.3156638
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0062054   -0.3907170    0.3783062
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.3408635   -0.0222036    0.7039305
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.3145614    0.0069940    0.6221288
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.2121905   -0.1340118    0.5583928
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.1074245   -0.2391225    0.4539715
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.7382728    0.3305234    1.1460222
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.4129464    0.0132789    0.8126138
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            1.2214872    0.5200189    1.9229555
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.7178824    0.0256695    1.4100952
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.1271875   -0.6752853    0.9296603
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.5605000   -1.1892743    0.0682743
Birth       ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.8658851    1.4095270    2.3222431
Birth       ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.4345784    1.0554107    1.8137462
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.4122114   -0.1737341    0.9981569
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0648148   -0.6385415    0.5089118
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.6240260   -0.2550008    1.5030528
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.9225714    0.1565747    1.6885681
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.4726217    0.2217593    0.7234841
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.5075334    0.3305705    0.6844963
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            0.5165079   -0.2720653    1.3050811
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm            0.2387302   -0.1956596    0.6731199
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            1.2761626    1.0494419    1.5028832
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.4712161    0.2498473    0.6925849
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.1400094    1.0740994    1.2059194
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.6518154    0.5942073    0.7094236
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.1714141    0.8862887    1.4565396
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.5907004    0.3746491    0.8067517
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.4389269    0.3618778    0.5159759
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1740931    0.0997842    0.2484020
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.7312947    0.6037741    0.8588153
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            0.5351285    0.4365330    0.6337241
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.2828925    0.2125870    0.3531980
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.1895436    0.1161597    0.2629274
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.3343599   -0.1254348    0.7941546
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.2905422   -0.1902869    0.7713713
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0374136   -0.4508302    0.5256573
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.2456135   -0.2720178    0.7632447
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.3732536   -0.8632346    0.1167273
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0247477   -0.4390163    0.4885118
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0129971   -0.3593102    0.3333160
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.1391054   -0.5268704    0.2486596
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.1881867   -0.6276488    0.2512754
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.0985633   -0.3413375    0.5384640
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.1700884   -0.5479953    0.2078185
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0708333   -0.3156317    0.4572984
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.1515206   -0.5549865    0.2519453
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.2467113   -0.6484808    0.1550581
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.3028616   -0.2476971    0.8534202
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0043697   -0.5435946    0.5348551
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.7936944   -2.0581328    0.4707439
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.8150833   -2.0656410    0.4354744
6 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.1971698   -0.1436503    0.5379899
6 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0175224   -0.3369975    0.3019528
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.1631342   -0.2791309    0.6053994
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.1640273   -0.3949119    0.7229665
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.2305474   -0.3427557   -0.1183390
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0569341   -0.1803705    0.0665022
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.4218076   -0.8713272    0.0277119
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.5255905   -0.9745568   -0.0766242
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.6148259   -0.8371085   -0.3925434
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.3476366   -0.5643956   -0.1308776
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.0866156   -0.2974832    0.1242520
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.1263690   -0.3286305    0.0758925
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0153736   -0.1802958    0.1495486
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.1025426   -0.2455987    0.0405136
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm           -0.0440318   -0.7671180    0.6790543
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm           -0.1708150   -0.6547235    0.3130934
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0612255   -0.1639307    0.0414796
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.1752962   -0.2591508   -0.0914416
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.1636720   -0.2306917   -0.0966524
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0982118   -0.1614498   -0.0349739
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.1569152   -0.3977589    0.0839285
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0506356   -0.2450974    0.1438263
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.3939066   -0.4688801   -0.3189332
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.1850471   -0.2607151   -0.1093792
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.1057760   -0.2138374    0.0022854
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0495554   -0.1440123    0.0449015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.1735389   -0.2261053   -0.1209725
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0714489   -0.1310659   -0.0118318
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0970802   -0.1928206   -0.0013397
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0333540   -0.1351472    0.0684392
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.2720868   -0.6773520    0.1331783
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0082792   -0.4318681    0.4153096
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.4347118   -1.0227719    0.1533484
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0806479   -0.6513934    0.4900976
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.5596247   -0.9373265   -0.1819230
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.4916765   -0.8912335   -0.0921196
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.4555235   -0.8134767   -0.0975704
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.1022483   -0.4521805    0.2476839
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.6728304   -1.0024673   -0.3431935
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.3467040   -0.6731933   -0.0202146
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.2942375   -0.6411566    0.0526815
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.3041773   -0.6524371    0.0440825
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.2236650   -0.6768315    0.2295016
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.1886310   -0.6567565    0.2794946
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.6743696   -1.1874547   -0.1612846
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.3905278   -0.9160040    0.1349485
24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.2117697   -0.4366906    0.0131511
24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0555945   -0.2797659    0.1685769
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.4946935   -1.0042775    0.0148904
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.4582006   -0.9614497    0.0450484
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.5442792   -0.7574169   -0.3311415
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.1720480   -0.3934557    0.0493596
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.3509875   -0.5923746   -0.1096004
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.2064751   -0.4588046    0.0458543
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.2680453   -0.4347715   -0.1013192
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.2407280   -0.3764533   -0.1050027
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.2228188   -0.5475128    0.1018752
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.3462398   -0.4967801   -0.1956996
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.2854419   -0.0269162    0.5978001
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0031181   -0.3547446    0.3485084
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.3804862   -0.5860971   -0.1748754
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.1739390   -0.3295277   -0.0183502
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.5083338   -0.5865671   -0.4301005
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.2567156   -0.3357174   -0.1777137
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.3968294   -0.4910324   -0.3026265
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.1721818   -0.2551322   -0.0892314
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.2950062   -0.3627341   -0.2272782
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0850248   -0.1628794   -0.0071701
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.2595787   -0.3419750   -0.1771825
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0775326   -0.1718990    0.0168338


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.4589984    0.0711776    0.8468192
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.6968210    0.3145295    1.0791124
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0299133   -0.3318257    0.2719991
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.2534305    0.0256291    0.4812318
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.1446511   -0.1418758    0.4311779
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.4767644    0.1679955    0.7855334
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.8485537    0.2581994    1.4389079
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.2184524   -0.7554680    0.3185632
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                 1.0420836    0.7988436    1.2853235
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2346854   -0.2572120    0.7265828
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.5746429   -0.0009643    1.1502500
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.2463604    0.1639656    0.3287551
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              NA                 0.1332647   -0.0503708    0.3169002
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0511013    0.0272678    0.0749348
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.5877755    0.5503676    0.6251833
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.3826804    0.2855614    0.4797993
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.2352899    0.1828796    0.2877002
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.3742839    0.3166042    0.4319636
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.2400548    0.1752276    0.3048819
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.3047393   -0.1289669    0.7384455
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.1066255   -0.3145499    0.5278010
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.1382842   -0.4989045    0.2223361
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0558128   -0.3456110    0.2339853
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0356920   -0.3537512    0.2823672
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0591539   -0.3757112    0.2574034
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.1634957   -0.4578305    0.1308391
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1355602   -0.3065518    0.5776722
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.6864142   -1.7379915    0.3651630
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0495388   -0.1261692    0.2252468
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.1235051   -0.1964911    0.4435012
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.1414720   -0.2358722   -0.0470719
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.4033785   -0.7648013   -0.0419556
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.3585848   -0.5106435   -0.2065262
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0823719   -0.2255287    0.0607849
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0358619   -0.0973218    0.0255980
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.0597049   -0.2557357    0.1363258
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0150529   -0.0249804   -0.0051254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0901501   -0.1303942   -0.0499061
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0455099   -0.1295778    0.0385581
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.2310501   -0.2841545   -0.1779457
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.0454987   -0.0992467    0.0082492
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.1246387   -0.1683962   -0.0808813
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0547451   -0.1175665    0.0080764
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.1371515   -0.4769774    0.2026744
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.2136554   -0.6649219    0.2376111
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.4652989   -0.7820477   -0.1485501
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.2191086   -0.4701468    0.0319297
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.4757011   -0.7439547   -0.2074476
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.2471066   -0.5092594    0.0150462
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1833212   -0.5530294    0.1863870
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.4679348   -0.8816747   -0.0541950
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0794018   -0.2025929    0.0437892
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.4074547   -0.8108718   -0.0040375
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.2633369   -0.4148684   -0.1118054
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.2112877   -0.3784890   -0.0440864
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.1249607   -0.1850338   -0.0648876
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0289753   -0.0476593   -0.0102913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1701936   -0.1053521    0.4457392
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1371994   -0.2137455   -0.0606533
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.3031830   -0.3591357   -0.2472303
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.1651122   -0.2124316   -0.1177927
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.2049217   -0.2625318   -0.1473117
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.1453115   -0.2017753   -0.0888477

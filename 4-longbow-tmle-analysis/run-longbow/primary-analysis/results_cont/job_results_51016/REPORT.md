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
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/f827706e-cc6a-4b50-888c-ab98ac9d5b0d/a6b42cba-af63-48a7-92e6-8894e065f4ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f827706e-cc6a-4b50-888c-ab98ac9d5b0d/a6b42cba-af63-48a7-92e6-8894e065f4ce/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f827706e-cc6a-4b50-888c-ab98ac9d5b0d/a6b42cba-af63-48a7-92e6-8894e065f4ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.4284041   -1.8866062   -0.9702020
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.8912103   -1.0732108   -0.7092098
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.9112458   -1.1392160   -0.6832756
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.3201016   -0.7414625    0.1012594
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.7028803    0.4417562    0.9640044
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.4895925    0.2472209    0.7319640
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.8751842   -1.2186581   -0.5317102
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.0795334   -1.2854175   -0.8736493
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -1.0308526   -1.2635152   -0.7981900
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -1.1879722   -1.4386755   -0.9372689
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.8037713   -1.0824057   -0.5251370
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.8548371   -1.0469060   -0.6627683
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.2121821   -0.5260826    0.1017183
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0062757   -0.1751272    0.1625758
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.1154285   -0.2840434    0.0531864
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.5251110   -0.8709741   -0.1792478
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.2026573   -0.0243838    0.4296983
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.1282026   -0.3405972    0.0841919
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0133610   -0.6845180    0.7112400
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 1.1568919    0.8778906    1.4358931
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.6715638    0.4137405    0.9293870
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.3146733   -0.2779499    0.9072965
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.0557135   -0.5516347    0.6630616
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.6993809   -1.0605821   -0.3381797
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                -2.0334600   -2.3222967   -1.7446234
Birth       ki1000108-IRC              INDIA                          <48 cm               NA                -0.1202112   -0.4812667    0.2408443
Birth       ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.5966934   -0.8503851   -0.3430017
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.5044444   -0.8892183   -0.1196706
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0922330   -0.4961190    0.3116530
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.5692593   -0.9592701   -0.1792484
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.9985714   -2.6503158   -1.3468271
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -1.3745455   -1.9643907   -0.7847002
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.0760000   -1.4784677   -0.6735323
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 1.4434107    1.3303887    1.5564327
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               NA                 1.9594866    1.7313345    2.1876387
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                 1.9627959    1.8250997    2.1004920
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.2678666   -0.5601620    0.0244288
Birth       ki1114097-CMIN             BRAZIL                         <48 cm               NA                 0.0532723   -0.4163286    0.5228732
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                -0.0294966   -0.4042590    0.3452658
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -1.2022552   -1.4149261   -0.9895843
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.0916773    0.0050734    0.1782811
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.6792158   -0.8842830   -0.4741485
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1255363   -1.1689246   -1.0821480
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0578540    0.0082809    0.1074272
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4478987   -0.4853584   -0.4104390
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -1.4537322   -1.5806010   -1.3268634
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.2388076   -0.4985112    0.0208959
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.8514311   -1.0287859   -0.6740764
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.2319994   -1.2910283   -1.1729706
Birth       ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.7748389   -0.8257187   -0.7239590
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -1.0480556   -1.0944663   -1.0016450
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.1263981   -1.1970424   -1.0557537
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.3565291   -0.4609026   -0.2521556
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.5843906   -0.6527923   -0.5159889
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.9999970   -1.0632962   -0.9366977
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.6756299   -0.6991984   -0.6520614
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.7858279   -0.8202507   -0.7514052
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.5923443   -1.0006806   -0.1840080
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.3422781   -0.4380343   -0.2465218
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.3696500   -0.5341810   -0.2051190
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.1899110   -0.6709763    0.2911544
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.2023210   -0.3617003   -0.0429418
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.0127854   -0.2243496    0.2499204
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 1.0867796    0.6238762    1.5496830
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.6956533    0.3884609    1.0028457
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 1.0545707    0.7900903    1.3190510
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.5877985   -0.8901168   -0.2854803
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.6048831   -0.7868019   -0.4229643
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.7286010   -0.9820608   -0.4751412
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.1056749   -0.2810418    0.4923916
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0416519   -0.2792708    0.1959670
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.2365936   -0.0036906    0.4768778
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 1.0998387    0.7887985    1.4108789
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.9617297    0.7753261    1.1481334
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 1.1630810    0.9645155    1.3616465
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.6423520    0.3196374    0.9650667
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.5301568    0.2701939    0.7901198
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.4329274    0.1776294    0.6882254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.4175295   -0.0694597    0.9045186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.6791512    0.3586815    0.9996208
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.4177740    0.1225836    0.7129644
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1752624   -1.2667578    1.6172826
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.6283990   -1.0400159   -0.2167821
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.6537484   -1.0255205   -0.2819763
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.7347646   -0.9513725   -0.5181567
6 months    ki1000108-IRC              INDIA                          <48 cm               NA                -0.5063040   -0.7838308   -0.2287773
6 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.7195009   -0.9599649   -0.4790368
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.8055349   -1.1888676   -0.4222022
6 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.7399215   -1.0081392   -0.4717039
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.7088849   -1.1586972   -0.2590726
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.5669399   -0.7319608   -0.4019189
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.7436758   -0.8854566   -0.6018950
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.5814021   -0.7289533   -0.4338509
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0291999   -0.4432389    0.3848390
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.4885370   -0.7203983   -0.2566757
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.6006986   -0.8312000   -0.3701972
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1564006   -0.0230529    0.3358541
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.4701113   -0.6068463   -0.3333764
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.1956107   -0.3240643   -0.0671571
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1189124   -0.0398976    0.2777223
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0278335   -0.1083994    0.1640665
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.0017148   -0.1207533    0.1241829
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.1591708   -0.2441674   -0.0741743
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.1815047   -0.3220182   -0.0409913
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.2636597   -0.3812860   -0.1460334
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              NA                 0.6197577    0.3322480    0.9072673
6 months    ki1114097-CMIN             BRAZIL                         <48 cm               NA                 0.6493796   -0.0074813    1.3062405
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                 0.3985492   -0.0036378    0.8007361
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.5894573    0.5286759    0.6502387
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.5628651    0.4627524    0.6629779
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.4702271    0.3648611    0.5755931
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3957786    0.3477432    0.4438141
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.2260772    0.1777905    0.2743639
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.2933195    0.2511162    0.3355228
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.2935147    0.1769096    0.4101199
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.0647964   -0.1503118    0.2799045
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1891692    0.0288534    0.3494851
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.4700056   -0.5288825   -0.4111288
6 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.8580365   -0.9050834   -0.8109896
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.6518847   -0.6999849   -0.6037845
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.2490796   -0.3153667   -0.1827926
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.3677765   -0.4533083   -0.2822446
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.2968330   -0.3651193   -0.2285467
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.4654788   -0.5160922   -0.4148654
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.6406849   -0.6643210   -0.6170488
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.5351008   -0.5722298   -0.4979719
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.3221467   -0.3957042   -0.2485892
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.4201933   -0.4845169   -0.3558698
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.3518191   -0.4270588   -0.2765793
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.6504814   -1.0207180   -0.2802447
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.9375037   -1.1009232   -0.7740841
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.6604111   -0.8689105   -0.4519118
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.5265385   -0.0169471    1.0700241
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.1553221   -0.1845612    0.4952055
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.5272064    0.2215679    0.8328448
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.4951053   -0.8850004   -0.1052102
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.0355017   -1.2163889   -0.8546145
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.9236449   -1.1495353   -0.6977545
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.1568100   -0.4640649    0.1504449
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.6792840   -0.9067857   -0.4517824
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.3410621   -0.5592001   -0.1229240
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.5355374    0.2486629    0.8224118
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0551774   -0.2483703    0.1380155
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.2536855    0.0765501    0.4308210
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.6142651    0.3212434    0.9072868
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.3374596    0.1344848    0.5404344
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.3207831    0.1172402    0.5243260
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.3932839    0.0004033    0.7861646
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0886974   -0.1695502    0.3469449
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1040842   -0.1863148    0.3944833
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0000401   -0.5062077    0.5062880
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.6662826   -0.9363363   -0.3962289
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.3666615   -0.6598593   -0.0734638
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.6667201   -0.8225063   -0.5109339
24 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.8675985   -1.0344880   -0.7007090
24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.7108617   -0.8740413   -0.5476821
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.5964865   -1.0239094   -0.1690636
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.9949541   -1.2675853   -0.7223229
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.9630018   -1.2190590   -0.7069446
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.6226138   -0.7963502   -0.4488774
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.2015615   -1.3222854   -1.0808375
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.7941627   -0.9298114   -0.6585140
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.4241145   -0.6172718   -0.2309572
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.7202983   -0.8676766   -0.5729199
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.5830557   -0.7425016   -0.4236099
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.6669620   -0.7503434   -0.5835806
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.9458113   -1.0953682   -0.7962544
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.9069247   -1.0170540   -0.7967955
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.7116473    0.6004194    0.8228753
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.5071226    0.1821444    0.8321008
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.4170868    0.2528896    0.5812840
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3020208   -1.5978486   -1.0061931
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.0625327   -1.1864739   -0.9385914
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.3505825   -1.5554561   -1.1457089
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0644381   -0.1644594    0.0355832
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.4521973   -0.6398761   -0.2645186
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2309837   -0.3525842   -0.1093832
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.2863067   -0.3483973   -0.2242160
24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.8101740   -0.8560966   -0.7642514
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.5463522   -0.5940505   -0.4986539
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4383557   -0.4957396   -0.3809719
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.8429524   -0.9178506   -0.7680542
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.6122787   -0.6723780   -0.5521793
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -1.0825918   -1.1474726   -1.0177110
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -1.3916723   -1.4205691   -1.3627755
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -1.1717913   -1.2182764   -1.1253061
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -1.0919101   -1.1593293   -1.0244909
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -1.3607904   -1.4104027   -1.3111782
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.1700809   -1.2356773   -1.1044845


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.5371938    0.0437939    1.0305937
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.5171583    0.0048740    1.0294426
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            1.0229819    0.5300023    1.5159614
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.8096940    0.3224735    1.2969146
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.2043492   -0.6071784    0.1984800
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.1556684   -0.5717774    0.2604406
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.3842009    0.0105940    0.7578077
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.3331351    0.0171748    0.6490953
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.2059064   -0.1509349    0.5627478
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0967536   -0.2586956    0.4522028
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.7277682    0.3133082    1.1422282
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.3969083   -0.0094057    0.8032223
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            1.1435309    0.3907767    1.8962850
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.6582027   -0.0874011    1.4038066
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.2589598   -1.1125701    0.5946504
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -1.0140542   -1.7026888   -0.3254196
Birth       ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.9132489    1.4516190    2.3748788
Birth       ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.4367666    1.0525732    1.8209601
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.4122114   -0.1737341    0.9981569
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0648148   -0.6385415    0.5089118
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.6240260   -0.2550008    1.5030528
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.9225714    0.1565747    1.6885681
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.5160759    0.2614650    0.7706868
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.5193852    0.3412227    0.6975476
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            0.3211389   -0.2326399    0.8749177
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm            0.2383700   -0.2370231    0.7137632
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            1.2939324    1.0669079    1.5209570
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.5230394    0.2907348    0.7553440
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.1833903    1.1176711    1.2491096
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.6776376    0.6205517    0.7347235
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.2149246    0.9262120    1.5036371
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.6023011    0.3845120    0.8200901
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.4571606    0.3793349    0.5349863
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1839438    0.1089327    0.2589549
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.7698690    0.6443678    0.8953702
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            0.5420075    0.4442745    0.6397405
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.3243671    0.2585243    0.3902098
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.2141690    0.1439980    0.2843401
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.2500662   -0.1699520    0.6700845
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.2226943   -0.2178038    0.6631923
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0124101   -0.5189288    0.4941086
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.2026964   -0.3347582    0.7401510
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.3911262   -0.9464997    0.1642473
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0322089   -0.5645409    0.5001232
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0170846   -0.3699109    0.3357417
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.1408025   -0.5359288    0.2543238
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.1473268   -0.6030483    0.3083947
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1309187   -0.3243760    0.5862134
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.1381090   -0.5014487    0.2252307
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0632423   -0.3059856    0.4324702
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.1121952   -0.5276142    0.3032239
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.2094246   -0.6211587    0.2023095
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.2616217   -0.3276549    0.8508984
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0002446   -0.5691043    0.5695934
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.8036614   -2.3025919    0.6952690
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.8290108   -2.3186057    0.6605841
6 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.2284605   -0.1253720    0.5822930
6 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0152637   -0.3104080    0.3409353
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0656134   -0.4039521    0.5351789
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0966500   -0.4935434    0.6868434
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.1767359   -0.2495097   -0.1039620
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0144622   -0.1359570    0.1070326
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.4593370   -0.9347406    0.0160666
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.5714986   -1.0460914   -0.0969059
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.6265119   -0.8520654   -0.4009584
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.3520112   -0.5727149   -0.1313075
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.0910788   -0.3016687    0.1195110
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.1171976   -0.3187631    0.0843680
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0223339   -0.1863212    0.1416535
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.1044889   -0.2495077    0.0405300
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            0.0296219   -0.6973854    0.7566292
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm           -0.2212085   -0.7139602    0.2715432
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0265922   -0.1337529    0.0805686
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.1192302   -0.2127609   -0.0256995
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.1697014   -0.2378536   -0.1015492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.1024591   -0.1664350   -0.0384832
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.2287184   -0.4728186    0.0153819
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.1043455   -0.3022325    0.0935414
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.3880309   -0.4633335   -0.3127283
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.1818790   -0.2578504   -0.1059077
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.1186969   -0.2268044   -0.0105893
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0477534   -0.1429300    0.0474232
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.1752061   -0.2290873   -0.1213249
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0696221   -0.1304077   -0.0088364
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0980466   -0.1937775   -0.0023158
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0296724   -0.1313963    0.0720516
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.2870223   -0.6912222    0.1171776
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0099298   -0.4348123    0.4149528
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.3712164   -1.0145624    0.2721296
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0006678   -0.6256163    0.6269520
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.5403964   -0.9669406   -0.1138522
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.4285397   -0.8870203    0.0299410
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.5224741   -0.9040884   -0.1408597
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.1842521   -0.5628838    0.1943796
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.5907148   -0.9366508   -0.2447788
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.2818518   -0.6195230    0.0558194
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.2768055   -0.6339391    0.0803282
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.2934820   -0.6506612    0.0636973
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.3045866   -0.7748393    0.1656661
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.2891997   -0.7775385    0.1991391
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.6663227   -1.2408212   -0.0918243
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.3667016   -0.9531217    0.2197184
24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.2008784   -0.4299756    0.0282188
24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0441416   -0.2695585    0.1812752
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.3984676   -0.9063737    0.1094385
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.3665154   -0.8621609    0.1291302
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.5789477   -0.7895121   -0.3683832
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.1715489   -0.3919004    0.0488026
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.2961838   -0.5384727   -0.0538949
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.1589413   -0.4076217    0.0897392
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.2788493   -0.4506419   -0.1070567
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.2399627   -0.3785359   -0.1013895
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.2045247   -0.5184487    0.1093993
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.2945605   -0.4559101   -0.1332110
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.2394882   -0.0814660    0.5604423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0485617   -0.4083947    0.3112713
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.3877592   -0.6005443   -0.1749741
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.1665456   -0.3241213   -0.0089698
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.5238674   -0.6008670   -0.4468677
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.2600455   -0.3381538   -0.1819372
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.4045967   -0.4988939   -0.3102994
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.1739230   -0.2570650   -0.0907809
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.3090806   -0.3801657   -0.2379954
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0891995   -0.1706910   -0.0077080
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.2688803   -0.3518114   -0.1859493
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0781708   -0.1735738    0.0172323


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.4653336    0.0379445    0.8927227
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.7239813    0.3471351    1.1008276
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.1939291   -0.5292074    0.1413491
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.2835079    0.0495031    0.5175127
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.1385979   -0.1576589    0.4348547
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.4688319    0.1550006    0.7826632
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.7798593    0.1376652    1.4220534
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.7406257   -1.3458043   -0.1354470
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                 1.0228770    0.7767501    1.2690038
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2346854   -0.2572120    0.7265828
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.5746429   -0.0009643    1.1502500
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.2602084    0.1771343    0.3432826
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              NA                 0.1346234   -0.0576757    0.3269224
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0559082    0.0304066    0.0814098
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.6103938    0.5732739    0.6475138
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.3915893    0.2943825    0.4887962
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.2472538    0.1940166    0.3004909
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.3836730    0.3264336    0.4409124
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.2758974    0.2150972    0.3366976
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.2240280   -0.1699676    0.6180237
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0517664   -0.3884574    0.4919901
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.1695638   -0.5991548    0.2600273
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0661393   -0.3617478    0.2294692
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0193494   -0.3496165    0.3109178
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0431593   -0.3431355    0.2568170
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.1170016   -0.4225724    0.1885693
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1227927   -0.3532462    0.5988316
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.6820100   -1.9741169    0.6100970
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0938305   -0.0899239    0.2775850
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0288127   -0.3165197    0.3741451
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.1005526   -0.1745387   -0.0265664
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.4542785   -0.8418453   -0.0667118
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.3647711   -0.5203343   -0.2092080
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0891501   -0.2309684    0.0526682
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0383174   -0.1000951    0.0234602
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              NA                -0.0477384   -0.2481733    0.1526964
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0104940   -0.0199211   -0.0010669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0928435   -0.1337164   -0.0519705
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0741243   -0.1589091    0.0106605
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.2283884   -0.2816537   -0.1751230
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.0452664   -0.0990471    0.0085142
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.1270634   -0.1721697   -0.0819571
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0535566   -0.1162319    0.0091187
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.1584558   -0.4975067    0.1805951
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.1399558   -0.6516120    0.3717004
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.4404110   -0.8110794   -0.0697426
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.2871597   -0.5642419   -0.0100775
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.4071080   -0.6898947   -0.1243213
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.2350860   -0.5068015    0.0366295
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.2770218   -0.6668988    0.1128552
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.4481972   -0.9247132    0.0283189
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0869423   -0.2110573    0.0371727
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.2692182   -0.6681212    0.1296849
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.2653274   -0.4154478   -0.1152070
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.1862357   -0.3519449   -0.0205265
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.1279398   -0.1887551   -0.0671246
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0253038   -0.0430663   -0.0075414
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1224525   -0.1618762    0.4067812
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1371931   -0.2152563   -0.0591299
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.3082677   -0.3632931   -0.2532422
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.1719632   -0.2193632   -0.1245632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.2157434   -0.2767308   -0.1547560
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.1492021   -0.2063837   -0.0920205

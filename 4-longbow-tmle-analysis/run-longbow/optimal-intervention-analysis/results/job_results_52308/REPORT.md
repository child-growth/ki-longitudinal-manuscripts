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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           39     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm            97     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        79     215
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm           30      62
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm            14      62
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        18      62
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm            9      45
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm            18      45
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm        18      45
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm           52     228
Birth       ki0047075b-MAL-ED          PERU                           <48 cm            83     228
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm        93     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           43     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            31     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        46     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            32     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           13      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            33      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40      86
Birth       ki1000108-IRC              INDIA                          >=50 cm          120     343
Birth       ki1000108-IRC              INDIA                          <48 cm            87     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm       136     343
Birth       ki1000109-EE               PAKISTAN                       >=50 cm           21     177
Birth       ki1000109-EE               PAKISTAN                       <48 cm           102     177
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm        54     177
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm           12      38
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm            12      38
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm        14      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          116    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm           590    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       397    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          136     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm           211     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       228     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          121     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm           189     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       222     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          160     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           267     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       280     707
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm          736    1465
Birth       ki1101329-Keneba           GAMBIA                         <48 cm           240    1465
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm       489    1465
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm          114     641
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm           319     641
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       208     641
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            2      19
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm             9      19
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         8      19
Birth       ki1114097-CONTENT          PERU                           >=50 cm            1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm             1       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm        12570   13830
Birth       ki1119695-PROBIT           BELARUS                        <48 cm           140   13830
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm      1120   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         3997   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          3641   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      5279   12917
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm          396     756
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm           132     756
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm       228     756
Birth       ki1135781-COHORTS          INDIA                          >=50 cm         1404    6193
Birth       ki1135781-COHORTS          INDIA                          <48 cm          2354    6193
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm      2435    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm         1110    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm           651    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1138    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         3817   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         12372   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      5894   22083
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          178    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1487    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       731    2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           39     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm            98     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        74     211
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm           28      59
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm            15      59
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        16      59
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            8      41
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm            18      41
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      41
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm           48     215
6 months    ki0047075b-MAL-ED          PERU                           <48 cm            84     215
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm        83     215
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           34      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        38      93
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            39     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        48     118
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           16     105
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            49     105
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     105
6 months    ki1000108-IRC              INDIA                          >=50 cm          141     389
6 months    ki1000108-IRC              INDIA                          <48 cm           110     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm       138     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm           24     238
6 months    ki1000109-EE               PAKISTAN                       <48 cm           162     238
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm        52     238
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm           10      34
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm            13      34
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm        11      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          196    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           708    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       418    1322
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          120     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm           199     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       199     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          143     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           213     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       247     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          164     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           270     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       281     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm          677    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm           234    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm       436    1347
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm           96     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm           296     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       171     563
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            0      12
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm             6      12
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         6      12
6 months    ki1114097-CONTENT          PERU                           >=50 cm            1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm             1       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm         0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm        14293   15758
6 months    ki1119695-PROBIT           BELARUS                        <48 cm           172   15758
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm      1293   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2461    8413
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2657    8413
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3295    8413
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          351     689
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm           134     689
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm       204     689
6 months    ki1135781-COHORTS          INDIA                          >=50 cm         1329    6127
6 months    ki1135781-COHORTS          INDIA                          <48 cm          2527    6127
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm      2271    6127
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm          989    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm           677    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1033    2699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         2412   16425
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         10251   16425
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      3762   16425
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1101    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1927    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       996    4024
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           39     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            80     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        68     187
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           20      42
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            10      42
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        12      42
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6      39
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      39
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      39
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm           34     160
24 months   ki0047075b-MAL-ED          PERU                           <48 cm            67     160
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        59     160
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           32      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        38      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        41     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           16     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            50     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     106
24 months   ki1000108-IRC              INDIA                          >=50 cm          142     390
24 months   ki1000108-IRC              INDIA                          <48 cm           110     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm       138     390
24 months   ki1000109-EE               PAKISTAN                       >=50 cm           10     107
24 months   ki1000109-EE               PAKISTAN                       <48 cm            72     107
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm        25     107
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           99     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           160     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       154     413
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          139     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           206     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       234     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          128     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           200     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       186     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          535    1066
24 months   ki1101329-Keneba           GAMBIA                         <48 cm           197    1066
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       334    1066
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           84     486
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           249     486
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       153     486
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0      11
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             5      11
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         6      11
24 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm             1       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm         3624    3972
24 months   ki1119695-PROBIT           BELARUS                        <48 cm            44    3972
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm       304    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm           42     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           258     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       126     426
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          264     564
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           122     564
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       178     564
24 months   ki1135781-COHORTS          INDIA                          >=50 cm         1035    4722
24 months   ki1135781-COHORTS          INDIA                          <48 cm          1928    4722
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm      1759    4722
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm          895    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm           609    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm       942    2446
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1159    8351
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5233    8351
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      1959    8351
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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

* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/50de5d3c-b1b1-4ca9-98eb-e37652c70ee4/00cfb12d-f9e3-4901-bcfc-658658042fd9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0883903   -1.3276752   -0.8491055
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6626244   -0.0857199    1.4109688
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5695016   -1.0119902   -0.1270131
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7853743   -1.0291543   -0.5415943
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1339390   -0.0710951    0.3389731
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2027079   -0.2324077    0.6378234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.9734878    0.5298796    1.4170961
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3396674   -0.8587519    0.1794171
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1762649   -0.5364005    0.1838706
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.2161677   -0.4605065    0.0281711
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.4192051   -1.3774253    0.5390150
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5838888   -0.8159575   -0.3518201
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.4298768   -1.5685741   -1.2911796
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2441986   -1.3648461   -1.1235512
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0848110   -1.2248412   -0.9447809
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.5793602   -0.7415217   -0.4171987
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.9806645   -1.1119221   -0.8494069
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.1016857    0.0032732    0.2000981
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0503903   -0.0003158    0.1010964
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2376955   -0.5080126    0.0326216
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7628923   -0.8136910   -0.7120936
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3504671   -0.4545043   -0.2464300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6756855   -0.7086285   -0.6427424
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6387312   -0.7042918   -0.5731705
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2223706   -0.6177610    0.1730197
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9351254    0.3843683    1.4858825
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7236737   -1.2550207   -0.1923267
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5359247   -1.2025429    0.1306936
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0813554    0.7839104    1.3788004
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.9889901    0.4747174    1.5032628
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8379370    0.4272771    1.2485969
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0516198   -1.3158500    1.2126104
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3347499   -0.5971399   -0.0723600
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.9215234   -1.3606790   -0.4823678
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.4910026   -0.2959446    1.2779497
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6244183   -0.7901539   -0.4586827
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3211536   -0.5285052   -0.1138019
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1315614   -0.0428624    0.3059852
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1910661    0.0280634    0.3540687
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2508100   -0.3522716   -0.1493484
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2967293   -0.5084140   -0.0850446
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5877264    0.5245035    0.6509492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3946041    0.3469983    0.4422100
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2752612    0.1522993    0.3982231
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4935263   -0.5525096   -0.4345431
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2582028   -0.3250355   -0.1913700
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5054145   -0.5523669   -0.4584621
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3414318   -0.4192650   -0.2635987
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4768245   -0.7807394   -0.1729096
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5030282   -0.0547814    1.0608379
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5738489   -1.5189470    0.3712493
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4286723   -0.9552404    0.0978959
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.5858893    0.3114877    0.8602910
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6101768    0.1609856    1.0593680
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4374148    0.0884032    0.7864264
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0914813   -0.5605613    0.3775986
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6466293   -0.8048176   -0.4884410
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.4164799   -0.9480999    0.1151401
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6118084   -0.7868961   -0.4367206
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6202296   -0.7955788   -0.4448804
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3948206   -0.5957477   -0.1938935
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6735605   -0.7576553   -0.5894656
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7960328   -1.0118735   -0.5801920
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6889920    0.5945356    0.7834485
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0785119   -1.2017556   -0.9552683
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0472320   -0.1467823    0.0523183
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2967080   -0.3595200   -0.2338960
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4436165   -0.5007037   -0.3865293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0871014   -1.1467262   -1.0274766
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0955895   -1.1628364   -1.0283426


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9412093   -1.0864308   -0.7959878
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1925833   -0.4053570    0.0201904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -0.3333051   -0.5209779   -0.1456323
Birth       ki1000109-ResPak           PAKISTAN                       observed             observed          -0.3663158   -0.7677415    0.0351099
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         observed             observed          -1.2343618   -1.2966897   -1.1720339
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5154897   -0.5413479   -0.4896314
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7501567   -0.7680049   -0.7323085
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1466509   -0.2851494   -0.0081523
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.8577401    0.5390520    1.1764282
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6644715   -0.9812646   -0.3476785
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.4072436   -0.7125541   -0.1019331
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0551008    0.9144847    1.1957169
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4017921    0.1396820    0.6639023
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5110593    0.3321196    0.6899991
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4931429   -0.7890257   -0.1972601
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.6409340   -0.7788045   -0.5030635
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.8527871   -0.9897809   -0.7157933
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed           0.2176471   -0.1948962    0.6301903
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6674924   -0.8047012   -0.5302836
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4636760   -0.5549942   -0.3723578
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1974657   -0.2592285   -0.1357029
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6026850   -0.6889114   -0.5164586
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3089671    0.2831612    0.3347730
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.2193904    0.1338361    0.3049448
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6983940   -0.7275858   -0.6692022
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2943461   -0.3357404   -0.2529517
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5922919   -0.6120107   -0.5725732
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3757033   -0.4185197   -0.3328869
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8306417   -0.9596160   -0.7016674
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.2195238   -0.1891986    0.6282462
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1144872   -1.3842438   -0.8447305
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.8921154   -1.1547051   -0.6295257
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.0584688   -0.0772003    0.1941378
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3968681    0.2085799    0.5851564
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1324519   -0.0568428    0.3217466
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4529088   -0.6339053   -0.2719123
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7536624   -0.8467166   -0.6606082
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -0.9929439   -1.1707082   -0.8151796
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9069451   -1.0069853   -0.8069049
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7949018   -0.8551887   -0.7346150
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1336900   -1.2226955   -1.0446844
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1803052   -1.2806626   -1.0799477
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2016312   -0.2740358   -0.1292266
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5945743   -0.6244188   -0.5647299
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6103189   -0.6471371   -0.5735006
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2999749   -1.3233177   -1.2766320
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2411122   -1.2752162   -1.2070083


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1471810   -0.0335614    0.3279234
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2597212   -0.9061903    0.3867479
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3629428   -0.7068420   -0.0190436
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0169128   -0.3923178    0.4261433
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1859566   -0.3623538   -0.0095593
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3952912   -0.7693036   -0.0212788
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2110530   -0.5566380    0.1345319
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1251582   -0.5131347    0.2628183
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8343181   -1.1495392   -0.5190971
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.1171374   -0.2821718    0.0478970
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed           0.0528893   -0.7504803    0.8562589
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0861565   -0.1508652   -0.0214479
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0799551   -0.0355431    0.1954533
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0542600   -0.1468615    0.0383414
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1593403   -0.2697124   -0.0489682
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6550016   -0.8023770   -0.5076261
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1357785   -0.2232647   -0.0482924
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2465490   -1.4724778   -1.0206202
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5658800   -0.6091203   -0.5226396
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.8244474   -1.0709245   -0.5779702
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2218534   -0.2612023   -0.1825045
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3922580   -0.4821066   -0.3024094
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0744712   -0.1013776   -0.0475648
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0498957   -0.0924152   -0.0073762
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0757198   -0.2638688    0.4153083
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0773853   -0.5376575    0.3828869
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0592022   -0.3372731    0.4556774
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1286811   -0.4396516    0.6970138
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0262546   -0.2775831    0.2250739
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5871980   -1.0507377   -0.1236583
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3268777   -0.6674270    0.0136717
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4415231   -1.5569708    0.6739247
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3061841   -0.5243039   -0.0880642
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.0687363   -0.3234234    0.4608959
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.2733555   -0.9087176    0.3620066
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0430741   -0.0932538    0.0071056
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1425224   -0.3185718    0.0335269
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3306521   -0.4825706   -0.1787335
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1613038   -0.2972838   -0.0253239
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0533443   -0.0302513    0.1369399
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3059557   -0.4979699   -0.1139415
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0084825   -0.0640223    0.0470573
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0856371   -0.1261674   -0.0451068
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0558708   -0.1494464    0.0377048
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2048677   -0.2582573   -0.1514780
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0361433   -0.0904314    0.0181448
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0868774   -0.1295095   -0.0442453
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0342715   -0.1027981    0.0342552
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3538172   -0.6194228   -0.0882116
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2835044   -0.8239287    0.2569199
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5406383   -1.4097242    0.3284476
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4634431   -0.9082319   -0.0186543
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.5274206   -0.7887435   -0.2660977
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2133087   -0.6000860    0.1734686
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3049629   -0.6103823    0.0004565
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3614275   -0.7907698    0.0679148
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1070331   -0.2330347    0.0189685
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.5764640   -1.0960035   -0.0569246
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2951368   -0.4574930   -0.1327805
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2726374   -0.4241245   -0.1211503
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2155296   -0.3826327   -0.0484264
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1213414   -0.1824194   -0.0602633
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3376572   -0.5351674   -0.1401470
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0015625   -0.0603816    0.0572565
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1017932   -0.1855315   -0.0180549
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1543992   -0.2327121   -0.0760863
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2978663   -0.3535525   -0.2421801
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1667024   -0.2138909   -0.1195139
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2128734   -0.2690454   -0.1567014
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1455227   -0.2034966   -0.0875489

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
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_W_nrooms
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
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm            4      13
Birth       ki1101329-Keneba           GAMBIA                         <48 cm             3      13
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm         6      13
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

* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/8144e2c2-9394-49a5-bc4f-738601e72b84/5e552f47-8bcd-48f7-bb39-c2e9c7b00d3e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8144e2c2-9394-49a5-bc4f-738601e72b84/5e552f47-8bcd-48f7-bb39-c2e9c7b00d3e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8144e2c2-9394-49a5-bc4f-738601e72b84/5e552f47-8bcd-48f7-bb39-c2e9c7b00d3e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.1990871   -1.5683518   -0.8298224
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.8913060   -1.1110617   -0.6715504
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.9274386   -1.1603395   -0.6945376
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.2025347   -0.2187146    0.6237841
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.5346958   -0.2358274    1.3052190
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.0588243   -0.5797706    0.6974193
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.2755556   -1.7237003   -0.8274108
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.1033333   -1.5325846   -0.6740821
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.5900000   -1.0271837   -0.1528163
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.7287500   -1.3613469   -0.0961531
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.9354545   -1.5903488   -0.2805603
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.5514286   -0.9073681   -0.1954890
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.1281491   -0.3608187    0.1045205
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.0261582   -0.1813829    0.2336993
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0810341   -0.2692154    0.1071473
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.3419855   -0.6949385    0.0109674
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.2380363   -0.2242490    0.7003215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.3012436   -0.6413656    0.0388784
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.4012573    0.0854297    0.7170849
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.9269425    0.4944847    1.3594004
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.7716561    0.4909294    1.0523829
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.5160136   -1.0757370    0.0437099
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.2853428   -0.8943410    0.3236555
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.9190854   -1.2793733   -0.5587975
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                -2.0433617   -2.3335156   -1.7532078
Birth       ki1000108-IRC              INDIA                          <48 cm               NA                -0.1618487   -0.5223125    0.1986150
Birth       ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.6074617   -0.8609643   -0.3539591
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.9580209   -1.6914170   -0.2246248
Birth       ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.1871056   -0.4359008    0.0616896
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.3683567   -0.7298478   -0.0068657
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.8523280   -1.5476255   -0.1570306
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               NA                -0.1292086   -0.7604154    0.5019982
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.0990002   -0.8577205    0.6597200
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.9457645   -1.2556662   -0.6358629
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.5860196   -0.8074064   -0.3646327
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.7148057   -0.8106162   -0.6189953
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.5805177   -1.7717175   -1.3893179
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -1.2617285   -1.4304491   -1.0930078
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.2691254   -1.4100341   -1.1282167
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -1.3628127   -1.5220946   -1.2035309
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.3441737   -1.4765449   -1.2118025
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -1.2424638   -1.3618469   -1.1230808
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -1.4805855   -1.6460946   -1.3150764
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.0774205   -1.2158041   -0.9390368
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -1.2469277   -1.3857642   -1.1080912
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -1.4144179   -1.6121918   -1.2166440
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.9762301   -1.1089504   -0.8435097
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1719062   -1.3139259   -1.0298864
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -1.1991110   -1.4111648   -0.9870572
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.0907446    0.0020459    0.1794433
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.6807081   -0.8770764   -0.4843398
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1271274   -1.1705909   -1.0836639
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0587423    0.0091991    0.1082855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4489300   -0.4863591   -0.4115009
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -1.4477409   -1.5754712   -1.3200107
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.2252413   -0.4922978    0.0418153
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.8553576   -1.0334006   -0.6773146
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.2364728   -1.2951855   -1.1777602
Birth       ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.7719618   -0.8229891   -0.7209345
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -1.0475618   -1.0943713   -1.0007522
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.1204528   -1.1913106   -1.0495951
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.3654170   -0.4702110   -0.2606229
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.5866355   -0.6555178   -0.5177533
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.7179126   -0.7576258   -0.6781993
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.7370019   -0.7593541   -0.7146497
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.8216076   -0.8516628   -0.7915524
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.9448676   -1.1745734   -0.7151617
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.6316808   -0.6967394   -0.5666223
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.7396518   -0.8375818   -0.6417218
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0701345   -0.3519552    0.4922242
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.2869152   -0.4541828   -0.1196476
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.0038966   -0.2402066    0.2479998
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 1.0171922    0.6162110    1.4181735
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.6085959   -0.0457402    1.2629320
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.8531726    0.1027516    1.6035937
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.7502083   -1.4517037   -0.0487129
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.5703704   -1.0696501   -0.0710906
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.7316667   -1.2274927   -0.2358406
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.2881250   -0.8678030    0.2915530
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.6550000   -1.0447672   -0.2652328
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.1540476   -0.7631832    0.4550880
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 1.1329292    0.8343573    1.4315012
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                 1.0364703    0.7814151    1.2915254
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 1.0066086    0.7997439    1.2134733
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.6078409    0.1842447    1.0314371
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.9815627    0.4332236    1.5299017
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0516739   -0.4526322    0.3492843
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.7580318    0.3609935    1.1550702
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.2182205   -0.0752197    0.5116608
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.4256811    0.1491990    0.7021632
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.4394329   -0.9677029    1.8465687
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.4958679   -0.9241669   -0.0675688
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.6402132   -1.0193271   -0.2610992
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.6954360   -0.9052345   -0.4856374
6 months    ki1000108-IRC              INDIA                          <48 cm               NA                -0.4977271   -0.7719856   -0.2234685
6 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.6973492   -0.9426407   -0.4520576
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.7769798   -1.3753381   -0.1786215
6 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.9163727   -1.0754837   -0.7572618
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.6860369   -0.9816109   -0.3904629
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.2425975   -0.4532254    0.9384204
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               NA                 0.3545064   -0.1425158    0.8515286
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.0520402   -1.0892829    0.9852024
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.5669399   -0.7319608   -0.4019189
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.7436758   -0.8854566   -0.6018950
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.5814021   -0.7289533   -0.4338509
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.2999450   -0.5005004   -0.0993895
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.5634460   -0.7148863   -0.4120057
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.4487381   -0.5861918   -0.3112845
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1566537   -0.0176761    0.3309834
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.4372284   -0.5731674   -0.3012894
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.1703190   -0.2946844   -0.0459535
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1270679   -0.0359003    0.2900361
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0211220   -0.1147920    0.1570359
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0036702   -0.1270108    0.1196704
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.1583244   -0.2433736   -0.0732752
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.1954703   -0.3365908   -0.0543499
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.2655980   -0.3835422   -0.1476538
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3142711   -0.5290034   -0.0995388
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.6813092   -0.7998088   -0.5628096
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.6237294   -0.7810245   -0.4664343
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.5898872    0.5289502    0.6508241
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.5322588    0.4349471    0.6295706
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.4637131    0.3612778    0.5661484
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3987724    0.3517555    0.4457893
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.2314792    0.1846220    0.2783365
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.3010182    0.2596231    0.3424132
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.2860407    0.1707532    0.4013282
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.0719672   -0.1437265    0.2876608
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1919066    0.0269530    0.3568601
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.4774000   -0.5364694   -0.4183306
6 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.8527695   -0.8996254   -0.8059136
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.6533854   -0.7014137   -0.6053572
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.2474186   -0.3135248   -0.1813123
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.3647226   -0.4505515   -0.2788937
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.2962004   -0.3647726   -0.2276283
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.4788096   -0.5304374   -0.4271818
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.6377967   -0.6614104   -0.6141830
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.5342369   -0.5715527   -0.4969211
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.3260308   -0.4004296   -0.2516320
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.4178485   -0.4828448   -0.3528523
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.3538176   -0.4289230   -0.2787122
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.4801987   -0.8259570   -0.1344403
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -1.0183871   -1.1912822   -0.8454920
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.7011544   -0.9085542   -0.4937546
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.3938250   -0.0522699    0.8399199
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.3016039   -1.1531109    0.5499030
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.2819420   -0.8769377    1.4408218
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.4358333   -1.1701735    0.2985068
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.2241667   -1.6277760   -0.8205574
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -1.2543333   -1.5915308   -0.9171358
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.4606250   -0.9226786    0.0014286
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -1.1881818   -1.4731126   -0.9032511
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.9200000   -1.4410066   -0.3989934
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.4821742    0.2385813    0.7257671
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.1383038   -0.3650333    0.0884256
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0365381   -0.2374024    0.1643261
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.4875357    0.2099256    0.7651458
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.6061219    0.1543377    1.0579061
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.1995093   -0.1074490    0.5064676
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.4195000    0.0794007    0.7595993
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0007601   -0.3719933    0.3735134
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.0561303   -0.2232617    0.3355224
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0604061   -0.5042382    0.3834260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.6563596   -0.9208925   -0.3918267
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.3992771   -0.6970619   -0.1014923
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.6896813   -0.8482430   -0.5311196
24 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.9004666   -1.0652445   -0.7356888
24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.7257682   -0.8889050   -0.5626313
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.7492412   -1.3155909   -0.1828915
24 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                -1.1075615   -1.3245604   -0.8905626
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.9832832   -1.3425961   -0.6239703
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6029587   -0.7745955   -0.4313219
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -1.0119559   -1.1867871   -0.8371248
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.9891360   -1.1536318   -0.8246402
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.6277820   -0.8015552   -0.4540088
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.1896387   -1.3126694   -1.0666079
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.8075474   -0.9409298   -0.6741650
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.4339538   -0.6267577   -0.2411498
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.7321866   -0.8757617   -0.5886115
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.5961100   -0.7591520   -0.4330680
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.6619989   -0.7454232   -0.5785746
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.9519722   -1.1010824   -0.8028619
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.9111054   -1.0210019   -0.8012088
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.8042071   -1.0357277   -0.5726865
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -1.2473772   -1.3668055   -1.1279489
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1128803   -1.2822620   -0.9434986
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.7127560    0.6016465    0.8238655
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.5071989    0.1794630    0.8349348
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.4332181    0.2826163    0.5838200
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3116603   -1.6088807   -1.0144398
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.0692130   -1.1923547   -0.9460714
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.3428146   -1.5463101   -1.1393191
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0538510   -0.1540258    0.0463238
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.4559482   -0.6422887   -0.2696077
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2328963   -0.3537559   -0.1120368
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.2926671   -0.3551881   -0.2301461
24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.8015120   -0.8472622   -0.7557618
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.5483776   -0.5957622   -0.5009930
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4397366   -0.4967806   -0.3826927
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.8487267   -0.9241253   -0.7733282
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.6088385   -0.6688997   -0.5487773
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -1.0919492   -1.1557536   -1.0281449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -1.3924819   -1.4212699   -1.3636939
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -1.1746503   -1.2209278   -1.1283728
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -1.0939021   -1.1606051   -1.0271992
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -1.3603753   -1.4104886   -1.3102620
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.1705489   -1.2359486   -1.1051492


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9412093   -1.0864308   -0.7959878
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.3663158   -0.7677415    0.0351099
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7501567   -0.7680049   -0.7323085
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1466509   -0.2851494   -0.0081523
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.8577401    0.5390520    1.1764282
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6644715   -0.9812646   -0.3476785
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.4072436   -0.7125541   -0.1019331
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0551008    0.9144847    1.1957169
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4017921    0.1396820    0.6639023
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5110593    0.3321196    0.6899991
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4931429   -0.7890257   -0.1972601
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.6409340   -0.7788045   -0.5030635
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.8527871   -0.9897809   -0.7157933
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.2176471   -0.1948962    0.6301903
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6674924   -0.8047012   -0.5302836
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4636760   -0.5549942   -0.3723578
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1974657   -0.2592285   -0.1357029
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6026850   -0.6889114   -0.5164586
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3089671    0.2831612    0.3347730
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.2193904    0.1338361    0.3049448
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6983940   -0.7275858   -0.6692022
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2943461   -0.3357404   -0.2529517
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5922919   -0.6120107   -0.5725732
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3757033   -0.4185197   -0.3328869
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8306417   -0.9596160   -0.7016674
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.2195238   -0.1891986    0.6282462
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1144872   -1.3842438   -0.8447305
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.8921154   -1.1547051   -0.6295257
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0584688   -0.0772003    0.1941378
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3968681    0.2085799    0.5851564
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1324519   -0.0568428    0.3217466
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4529088   -0.6339053   -0.2719123
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7536624   -0.8467166   -0.6606082
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.9929439   -1.1707082   -0.8151796
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9069451   -1.0069853   -0.8069049
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7949018   -0.8551887   -0.7346150
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1336900   -1.2226955   -1.0446844
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1803052   -1.2806626   -1.0799477
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2016312   -0.2740358   -0.1292266
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5945743   -0.6244188   -0.5647299
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6103189   -0.6471371   -0.5735006
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2999749   -1.3233177   -1.2766320
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2411122   -1.2752162   -1.2070083


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.3077811   -0.1241320    0.7396941
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.2716485   -0.1650016    0.7082987
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.3321611   -0.5469594    1.2112816
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.1437104   -0.9248935    0.6374727
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.1722222   -0.4483343    0.7927787
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.6855556    0.0594859    1.3116252
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.2067045   -1.1172348    0.7038257
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1773214   -0.5485380    0.9031808
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.1543073   -0.1590189    0.4676336
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0471150   -0.2527852    0.3470152
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.5800218    0.0044758    1.1555678
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0407419   -0.4503693    0.5318531
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.5256852   -0.0027036    1.0540741
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.3703989   -0.0581611    0.7989589
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.2306708   -0.5926324    1.0539739
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.4030719   -1.0687102    0.2625664
Birth       ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.8815130    1.4185629    2.3444630
Birth       ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.4359000    1.0513557    1.8204444
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.7709153   -0.0031179    1.5449486
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.5896642   -0.2285762    1.4079046
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.7231194   -0.2315194    1.6777583
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.7533278   -0.2863758    1.7930314
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.3597450    0.1861327    0.5333573
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.2309588   -0.0028097    0.4647273
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.3187892    0.0641248    0.5734536
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.3113923    0.0740729    0.5487116
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0186391   -0.1888186    0.2260967
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.1203489   -0.0792634    0.3199612
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.4031650    0.1873910    0.6189390
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.2336578    0.0169920    0.4503236
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.4381879    0.2014495    0.6749262
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.2425118    0.0000708    0.4849527
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            1.2898556    1.0625973    1.5171139
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.5184029    0.2958253    0.7409804
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.1858697    1.1201321    1.2516073
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.6781974    0.6210846    0.7353102
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.2224997    0.9264372    1.5185622
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.5923834    0.3735785    0.8111882
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.4645111    0.3868814    0.5421408
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1889111    0.1139727    0.2638495
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.7550359    0.6286176    0.8814542
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            0.5338173    0.4350389    0.6325957
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.0190893   -0.0617029    0.0235243
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.1036951   -0.1526472   -0.0547429
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.3131867    0.0739844    0.5523890
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.2052158   -0.0436651    0.4540966
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.3570497   -0.8124253    0.0983259
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0662379   -0.5542975    0.4218217
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.4085964   -1.1811983    0.3640056
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.1640196   -1.0201692    0.6921300
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.1798380   -0.6811940    1.0408700
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0185417   -0.8404923    0.8775756
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.3668750   -1.0654057    0.3316557
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1340774   -0.7067988    0.9749536
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.0964590   -0.4914885    0.2985705
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.1263206   -0.4896787    0.2370375
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.3737218   -0.3210980    1.0685416
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.6595148   -1.2465227   -0.0725069
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.5398113   -1.0402246   -0.0393980
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.3323507   -0.8146148    0.1499133
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.9353008   -2.4045721    0.5339705
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -1.0796461   -2.5437610    0.3844689
6 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.1977089   -0.1477847    0.5432024
6 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0019132   -0.3249895    0.3211630
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.1393929   -0.7590823    0.4802965
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0909429   -0.5755460    0.7574318
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.1119089   -0.7528662    0.9766840
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.2946378   -1.5591776    0.9699021
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.1767359   -0.2495097   -0.1039620
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0144622   -0.1359570    0.1070326
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.2635010   -0.5148809   -0.0121212
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.1487931   -0.3922404    0.0946541
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.5938821   -0.8151749   -0.3725893
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.3269726   -0.5412094   -0.1127359
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.1059460   -0.3196832    0.1077913
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.1307381   -0.3364465    0.0749703
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0371459   -0.2018557    0.1275638
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.1072736   -0.2525456    0.0379985
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.3670380   -0.6123122   -0.1217638
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3094583   -0.5759081   -0.0430085
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0576283   -0.1610514    0.0457947
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.1261741   -0.2167542   -0.0355939
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.1672932   -0.2337046   -0.1008818
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0977542   -0.1604148   -0.0350936
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.2140735   -0.4581617    0.0300146
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0941341   -0.2948635    0.1065952
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.3753695   -0.4506838   -0.3000553
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.1759854   -0.2520259   -0.0999450
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.1173041   -0.2255541   -0.0090540
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0487819   -0.1440909    0.0465271
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.1589871   -0.2138848   -0.1040894
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0554273   -0.1170086    0.0061539
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0918177   -0.1889779    0.0053425
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0277868   -0.1300041    0.0744306
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.5381884   -0.9253556   -0.1510213
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.2209558   -0.6243041    0.1823926
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.6954290   -1.6620787    0.2712208
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.1118830   -1.3710975    1.1473315
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.7883333   -1.6262808    0.0496141
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.8185000   -1.6265579   -0.0104421
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.7275568   -1.2704003   -0.1847133
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.4593750   -1.1557523    0.2370023
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.6204780   -0.9558695   -0.2850865
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.5187123   -0.8353924   -0.2020322
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.1185862   -0.4130310    0.6502035
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.2880264   -0.7048693    0.1288165
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.4187399   -0.9235264    0.0860465
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.3633697   -0.8040119    0.0772725
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.5959535   -1.1133719   -0.0785350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.3388710   -0.8767876    0.1990455
24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.2107853   -0.4393843    0.0178137
24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0360868   -0.2643213    0.1921476
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.3583203   -0.9680286    0.2513879
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.2340420   -0.9028557    0.4347718
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.4089972   -0.6539503   -0.1640441
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.3861773   -0.6232813   -0.1490734
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.5618566   -0.7743586   -0.3493546
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.1797653   -0.3975420    0.0380114
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.2982329   -0.5386582   -0.0578075
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.1621562   -0.4146260    0.0903136
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.2899733   -0.4613373   -0.1186092
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.2491065   -0.3873248   -0.1108881
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.4431701   -0.7060670   -0.1802733
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3086732   -0.5983290   -0.0190174
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.2055571   -0.5221238    0.1110097
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.2795378   -0.4259046   -0.1331711
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.2424473   -0.0792289    0.5641235
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0311543   -0.3914692    0.3291606
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.4020972   -0.6136294   -0.1905650
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.1790453   -0.3362476   -0.0218431
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.5088449   -0.5860394   -0.4316503
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.2557105   -0.3339475   -0.1774735
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.4089901   -0.5036059   -0.3143743
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.1691019   -0.2519023   -0.0863014
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.3005326   -0.3706540   -0.2304112
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0827011   -0.1628083   -0.0025938
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.2664732   -0.3491299   -0.1838165
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0766468   -0.1713021    0.0180085


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.2578778   -0.0743158    0.5900714
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.2003685   -0.1389077    0.5396447
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.3431111   -0.0993435    0.7855657
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0397115   -0.5703614    0.4909384
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0761316   -0.1367798    0.2890429
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1494022   -0.1322948    0.4310992
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.3611775    0.0717086    0.6506465
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0511880   -0.5089636    0.6113396
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                 1.0327786    0.7851861    1.2803711
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.6247158   -0.0676988    1.3171304
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.4860123   -0.1230242    1.0950488
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2757192    0.1125855    0.4388529
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2305960    0.0615146    0.3996773
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0643541   -0.0775725    0.2062806
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.2364342    0.0860541    0.3868142
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2979749    0.1160205    0.4799292
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0542477    0.0300116    0.0784838
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.6116377    0.5744729    0.6488026
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.3855981    0.2871468    0.4840494
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.2517272    0.1987830    0.3046713
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.3777278    0.3200491    0.4354064
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.0322441   -0.0670708    0.0025825
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.2562407    0.0377103    0.4747710
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.2167854   -0.5812965    0.1477258
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.1594521   -0.5001926    0.1812884
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0857368   -0.5470478    0.7185213
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.1191186   -0.5907705    0.3525333
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0778285   -0.3432765    0.1876196
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.2060488   -0.5609967    0.1488992
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.2469725   -0.5777400    0.0837950
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.9325758   -2.1941819    0.3290303
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0545019   -0.1229830    0.2319869
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0758073   -0.6357200    0.4841055
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.0249504   -0.6819164    0.6320155
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.1005526   -0.1745387   -0.0265664
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.1637310   -0.3370690    0.0096069
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.3557443   -0.5075378   -0.2039509
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0973057   -0.2424123    0.0478010
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0391413   -0.1009883    0.0227057
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.2884139   -0.4832887   -0.0935391
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0106433   -0.0200411   -0.0012455
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0898053   -0.1297043   -0.0499064
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0666503   -0.1506940    0.0173934
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.2209940   -0.2744134   -0.1675746
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.0469275   -0.1006320    0.0067770
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.1134823   -0.1597339   -0.0672307
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0496725   -0.1133254    0.0139804
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.3504431   -0.6494811   -0.0514050
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.1743012   -0.6241620    0.2755596
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.6786538   -1.3465606   -0.0107471
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.4314904   -0.8201628   -0.0428180
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.4237054   -0.6565037   -0.1909072
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0906676   -0.3362755    0.1549404
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.2870481   -0.5847583    0.0106621
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3925027   -0.8101028    0.0250975
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0639811   -0.1909474    0.0629852
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.2437027   -0.8001723    0.3127669
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.3039864   -0.4625017   -0.1454712
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.2650850   -0.4148203   -0.1153497
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.1763964   -0.3422157   -0.0105771
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.1329029   -0.1937799   -0.0720259
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3294829   -0.5399811   -0.1189847
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0253265   -0.0428367   -0.0078163
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1313551   -0.1543739    0.4170841
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1477802   -0.2260784   -0.0694820
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.3019072   -0.3572829   -0.2465315
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.1705823   -0.2177521   -0.1234124
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.2080256   -0.2683192   -0.1477321
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.1472101   -0.2036258   -0.0907944

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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1243   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         11692   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      5079   18014
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          826   13899
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          9806   13899
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      3267   13899
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          404    7159
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5050    7159
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      1705    7159
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/af1a86db-6ce4-4e1f-9625-4639895abaa5/0a36758e-9e97-4541-ae29-b1e004885c0f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8230010   -1.0338971   -0.6121049
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9608121    0.3845279    1.5370962
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5919532   -1.0481078   -0.1357986
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8131287   -1.1921555   -0.4341019
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0038997   -0.2228995    0.2306990
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2170273   -0.2241473    0.6582019
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0136323    0.5669414    1.4603232
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4713210   -1.1872436    0.2446015
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1109157   -0.4719607    0.2501293
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.3895145   -0.6745522   -0.1044768
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.0683265   -1.5211851   -0.6154678
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5879356   -0.8101295   -0.3657417
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3227024   -1.4817338   -1.1636710
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2409626   -1.3598087   -1.1221166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1269531   -1.2701555   -0.9837508
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.5801590   -0.7429104   -0.4174077
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.9812354   -1.1122465   -0.8502244
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.1083644    0.0297078    0.1870210
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0565419    0.0069547    0.1061290
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2563960   -0.5200605    0.0072684
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7734332   -0.8242710   -0.7225954
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3721068   -0.4772044   -0.2670092
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7302548   -0.7541520   -0.7063575
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6317669   -0.6966228   -0.5669111
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0396801   -0.4290630    0.3497027
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.1856874    0.7084600    1.6629148
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8286891   -1.4303257   -0.2270524
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9212865   -1.3164618   -0.5261112
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.6262136    0.3648884    0.8875388
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.9446662    0.3904838    1.4988485
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8492966    0.4373917    1.2612015
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3544718   -1.5267489    0.8178053
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4970543   -0.7643269   -0.2297817
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.1277794   -1.6001215   -0.6554372
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.5391621   -1.1726088    0.0942846
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6073841   -0.7732246   -0.4415437
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3150072   -0.5215961   -0.1084182
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1322181   -0.0427672    0.3072034
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1549202   -0.0050676    0.3149081
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1370574   -0.2463855   -0.0277294
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2605522   -0.4831935   -0.0379109
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5322002    0.4571109    0.6072895
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4018104    0.3548882    0.4487326
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3102747    0.1672250    0.4533245
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4725730   -0.5314316   -0.4137145
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2470483   -0.3131212   -0.1809754
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5384024   -0.6051029   -0.4717020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3383150   -0.4038582   -0.2727718
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5557096   -0.9003268   -0.2110924
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1784403   -0.5889773    0.9458579
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4433629   -1.4478474    0.5611216
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5200218   -1.0901799    0.0501362
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.5446958    0.2928238    0.7965678
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.9276478    0.5973104    1.2579852
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4085151    0.0698100    0.7472201
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0628243   -0.5145709    0.3889223
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.8092140   -0.9634055   -0.6550226
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.4419155   -0.9255081    0.0416772
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6270383   -0.8057213   -0.4483553
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6231431   -0.8017058   -0.4445805
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4709699   -0.6584649   -0.2834750
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6661267   -0.7493257   -0.5829277
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7949492   -1.0150269   -0.5748715
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7243579    0.6204636    0.8282522
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0750010   -1.1982041   -0.9517980
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0582062   -0.1570985    0.0406861
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2835148   -0.3461457   -0.2208838
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4398276   -0.4973152   -0.3823400
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9552938   -1.0769032   -0.8336844
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0954760   -1.1619045   -1.0290474


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7778272   -0.7968313   -0.7588232
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1458294   -0.2842227   -0.0074361
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.8580508    0.5394364    1.1766653
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6644715   -0.9812646   -0.3476785
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.4072436   -0.7125541   -0.1019331
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0510698    0.9102569    1.1918826
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.6072473   -0.6281750   -0.5863195
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3757033   -0.4185197   -0.3328869
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8296257   -0.9583167   -0.7009347
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.2347222   -0.1702799    0.6397243
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1144872   -1.3842438   -0.8447305
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.8921154   -1.1547051   -0.6295257
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.0490417   -0.0909855    0.1890689
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3919414    0.2031981    0.5806847
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3046571   -1.3299587   -1.2793555
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2411122   -1.2752162   -1.2070083


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1188594   -0.2896889    0.0519700
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5579088   -1.0827026   -0.0331150
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3404912   -0.6931233    0.0121408
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0446672   -0.4057505    0.4950848
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0559173   -0.2343862    0.1225517
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4096106   -0.7864858   -0.0327355
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2511975   -0.6198564    0.1174615
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0064955   -0.6208391    0.6338300
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8996674   -1.2167296   -0.5826052
Birth       ki1000109-EE               PAKISTAN                       optimal              observed           0.0562094   -0.1682079    0.2806267
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed           0.7020107    0.2213380    1.1826834
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0821097   -0.1423505   -0.0218689
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0272194   -0.1503687    0.0959300
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0574960   -0.1484049    0.0334128
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1171982   -0.2279567   -0.0064397
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6542028   -0.8021705   -0.5062351
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1352076   -0.2223976   -0.0480176
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2532277   -1.4734229   -1.0330326
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5720316   -0.6138959   -0.5301672
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.8057468   -1.0431254   -0.5683682
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2113125   -0.2505868   -0.1720381
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3706183   -0.4611910   -0.2800455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0475725   -0.0616166   -0.0335284
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0568599   -0.0988746   -0.0148453
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1061492   -0.4432436    0.2309451
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3276366   -0.7426180    0.0873449
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1642175   -0.2852766    0.6137116
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.5140429    0.1080828    0.9200030
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.4248562    0.1918847    0.6578277
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5428740   -1.0407626   -0.0449855
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3382373   -0.6795062    0.0030317
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1386710   -1.1979896    0.9206475
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1438797   -0.3632326    0.0754732
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.2749922   -0.1549048    0.7048893
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.7568092    0.1810793    1.3325392
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0601083   -0.1705132    0.0502966
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1486688   -0.3274804    0.0301427
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3313087   -0.4833336   -0.1792838
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1251580   -0.2580396    0.0077237
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0604083   -0.1551688    0.0343523
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3421328   -0.5426048   -0.1416608
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0470437   -0.0055933    0.0996806
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0928434   -0.1326642   -0.0530225
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0908843   -0.2053083    0.0235397
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2258210   -0.2790663   -0.1725756
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0472978   -0.1008391    0.0062435
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0688449   -0.1316528   -0.0060369
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0373883   -0.0965853    0.0218087
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2739161   -0.5699340    0.0221019
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0562819   -0.5988023    0.7113660
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6711243   -1.5970505    0.2548020
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3720936   -0.8534890    0.1093019
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4956542   -0.7365288   -0.2547795
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5357064   -0.8298249   -0.2415880
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2760632   -0.5725908    0.0204645
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3900845   -0.8149551    0.0347861
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0555516   -0.0697557    0.1808590
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.5510285   -1.0263686   -0.0756884
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2799068   -0.4441077   -0.1157059
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2697239   -0.4243936   -0.1150542
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1393803   -0.3005881    0.0218276
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1287751   -0.1895166   -0.0680336
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3387408   -0.5377019   -0.1397797
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0369284   -0.0897065    0.0158498
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1053041   -0.1888073   -0.0218009
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1434250   -0.2206087   -0.0662413
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3110596   -0.3665364   -0.2555827
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1704913   -0.2179278   -0.1230548
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3493633   -0.4671458   -0.2315808
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1456363   -0.2028016   -0.0884709

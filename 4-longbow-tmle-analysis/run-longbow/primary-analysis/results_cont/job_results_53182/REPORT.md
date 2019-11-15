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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/75e9907c-cdee-4313-8ba4-a5b1765c3af4/fd22b9b3-b8da-4b0a-a65e-1d64608bab3c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/75e9907c-cdee-4313-8ba4-a5b1765c3af4/fd22b9b3-b8da-4b0a-a65e-1d64608bab3c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/75e9907c-cdee-4313-8ba4-a5b1765c3af4/fd22b9b3-b8da-4b0a-a65e-1d64608bab3c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.1731278   -1.5316624   -0.8145932
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.8857781   -1.1022871   -0.6692690
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.9119739   -1.1435777   -0.6803701
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.3383495   -0.0637280    0.7404270
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.7690815   -0.0125009    1.5506639
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.3411606   -0.2970800    0.9794012
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.2755556   -1.7237003   -0.8274108
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.1033333   -1.5325846   -0.6740821
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.5900000   -1.0271837   -0.1528163
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.7287500   -1.3613469   -0.0961531
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.9354545   -1.5903488   -0.2805603
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.5514286   -0.9073681   -0.1954890
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.2601308   -0.4996546   -0.0206069
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.0259506   -0.2064028    0.2583040
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.1066874   -0.3214031    0.1080282
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.3640485   -0.7351294    0.0070325
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.2496039   -0.1820343    0.6812421
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.3040030   -0.6238643    0.0158584
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.3600342    0.0385377    0.6815306
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.9773698    0.5506554    1.4040843
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.7423417    0.4670412    1.0176422
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.2542676   -0.8450754    0.3365403
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.1812908   -0.7851622    0.4225806
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.7605228   -1.1111648   -0.4098808
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                -2.0312778   -2.3204175   -1.7421381
Birth       ki1000108-IRC              INDIA                          <48 cm               NA                -0.1386116   -0.4954815    0.2182583
Birth       ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.6019184   -0.8542911   -0.3495457
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.8701496   -1.5251984   -0.2151009
Birth       ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.2052814   -0.4534133    0.0428506
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.3582844   -0.7101058   -0.0064630
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.8787517   -1.5559635   -0.2015399
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               NA                -0.0528299   -0.7371439    0.6314842
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.1607381   -0.8618848    0.5404086
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.9457645   -1.2556662   -0.6358629
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.5860196   -0.8074064   -0.3646327
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.7148057   -0.8106162   -0.6189953
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.5669004   -1.7600267   -1.3737740
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -1.2675383   -1.4342203   -1.1008563
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.2737131   -1.4145626   -1.1328635
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -1.3265418   -1.4804012   -1.1726824
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.3446444   -1.4770205   -1.2122683
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -1.2530822   -1.3716282   -1.1345361
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -1.4620236   -1.6217885   -1.3022586
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.0718788   -1.2100257   -0.9337319
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -1.2441217   -1.3819984   -1.1062450
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -1.5915835   -1.6742306   -1.5089364
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.5511454   -0.7151196   -0.3871713
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -1.0191641   -1.1182800   -0.9200482
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -1.3655975   -1.5638685   -1.1673265
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.9876764   -1.1182282   -0.8571246
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1763283   -1.3194905   -1.0331661
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -1.1994041   -1.4120909   -0.9867174
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.1020254    0.0162392    0.1878116
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.6810736   -0.8816886   -0.4804587
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1194415   -1.1631446   -1.0757383
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0499881    0.0003980    0.0995782
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4493511   -0.4869467   -0.4117555
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -1.4503427   -1.5779641   -1.3227214
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.2526038   -0.5201082    0.0149005
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.8597473   -1.0351036   -0.6843910
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.2311556   -1.2901850   -1.1721262
Birth       ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.7734397   -0.8241653   -0.7227141
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -1.0473766   -1.0937947   -1.0009585
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.1209352   -1.1918763   -1.0499942
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.3782008   -0.4834093   -0.2729924
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.5826113   -0.6511933   -0.5140292
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -1.0673034   -1.1296813   -1.0049254
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.7222004   -0.7446502   -0.6997506
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.8384842   -0.8707567   -0.8062117
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.9662037   -1.2021685   -0.7302389
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.6329891   -0.6978021   -0.5681761
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.7391896   -0.8351189   -0.6432602
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0692576   -0.3594378    0.4979529
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.3024076   -0.4702151   -0.1346001
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0206185   -0.2605231    0.2192861
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 1.0744444    0.6641611    1.4847277
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.7163051    0.0709291    1.3616812
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.9705441    0.2023115    1.7387768
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.7502083   -1.4517037   -0.0487129
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.5703704   -1.0696501   -0.0710906
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.7316667   -1.2274927   -0.2358406
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.2881250   -0.8678030    0.2915530
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.6550000   -1.0447672   -0.2652328
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.1540476   -0.7631832    0.4550880
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 1.0666421    0.7809409    1.3523434
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                 1.0741463    0.8156889    1.3326037
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.9830455    0.7757117    1.1903792
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.5949782    0.1870442    1.0029123
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.9056909    0.3658686    1.4455133
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0776397   -0.5092884    0.3540090
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.8608998    0.4556323    1.2661674
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.2788669   -0.0034503    0.5611841
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.4755957    0.2124294    0.7387620
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1966239   -1.1201984    1.5134461
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.5367656   -0.9632380   -0.1102932
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.6336190   -1.0215564   -0.2456816
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.6817314   -0.8914320   -0.4720308
6 months    ki1000108-IRC              INDIA                          <48 cm               NA                -0.4695765   -0.7394539   -0.1996991
6 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.6914852   -0.9362223   -0.4467481
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.8049019   -1.3837340   -0.2260698
6 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.9184889   -1.0771034   -0.7598744
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.6924775   -0.9940136   -0.3909414
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.2061405   -0.4246014    0.8368825
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               NA                 0.2972173   -0.1988796    0.7933141
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.1424283   -1.2139123    0.9290556
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.5669399   -0.7319608   -0.4019189
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.7436758   -0.8854566   -0.6018950
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.5814021   -0.7289533   -0.4338509
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.3111674   -0.5139536   -0.1083813
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.5630107   -0.7142609   -0.4117605
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.4770579   -0.6170829   -0.3370329
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1400649   -0.0340754    0.3142052
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.4519920   -0.5878729   -0.3161112
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.1799812   -0.3043094   -0.0556529
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1146841   -0.0469145    0.2762828
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0179191   -0.1189408    0.1547789
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0024921   -0.1252412    0.1202570
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.1519980   -0.2368718   -0.0671242
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.1909358   -0.3312231   -0.0506485
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.2705831   -0.3879841   -0.1531821
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3001906   -0.5070638   -0.0933174
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.6822631   -0.8016919   -0.5628343
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.6317700   -0.7874194   -0.4761205
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.5900470    0.5293341    0.6507600
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.5437780    0.4456093    0.6419468
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.4639518    0.3573741    0.5705295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3988357    0.3518041    0.4458672
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.2321202    0.1850549    0.2791855
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.3007564    0.2592952    0.3422176
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.2958119    0.1795070    0.4121168
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.0846511   -0.1308161    0.3001182
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1878738    0.0286574    0.3470903
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.4739264   -0.5326439   -0.4152089
6 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.8596767   -0.9066004   -0.8127531
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.6530748   -0.7010978   -0.6050519
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.2473575   -0.3135211   -0.1811940
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.3666275   -0.4526249   -0.2806300
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.2958665   -0.3639413   -0.2277917
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.4711226   -0.5547928   -0.3874525
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.6459719   -0.6701390   -0.6218049
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.5251283   -0.5661696   -0.4840869
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.3214220   -0.3960932   -0.2467508
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.4180093   -0.4825281   -0.3534905
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.3527287   -0.4274468   -0.2780106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.5195779   -0.8656038   -0.1735519
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -1.0365802   -1.2103039   -0.8628565
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.7064256   -0.9155251   -0.4973261
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.4421064   -0.0039817    0.8881946
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.3726501   -1.1586424    0.4133421
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.4236857   -0.7275586    1.5749301
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.4358333   -1.1701735    0.2985068
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.2241667   -1.6277760   -0.8205574
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -1.2543333   -1.5915308   -0.9171358
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.4606250   -0.9226786    0.0014286
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -1.1881818   -1.4731126   -0.9032511
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.9200000   -1.4410066   -0.3989934
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.5516921    0.3263955    0.7769886
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.1223572   -0.3693273    0.1246129
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0297128   -0.2321340    0.1727085
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.5175153    0.2351594    0.7998713
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.7168683    0.2653962    1.1683403
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.1838445   -0.1144279    0.4821169
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.4953499    0.1384520    0.8522477
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1115081   -0.2762891    0.4993052
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.0920015   -0.1909190    0.3749219
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2206031   -0.2228785    0.6640846
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.6502872   -0.9123116   -0.3882629
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.3368840   -0.6307612   -0.0430068
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.6602766   -0.8185732   -0.5019800
24 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.8666885   -1.0330987   -0.7002783
24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.7175031   -0.8817635   -0.5532426
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.4536193   -0.9691748    0.0619362
24 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                -1.0833054   -1.3019869   -0.8646239
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.9298468   -1.3306307   -0.5290628
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6380037   -0.8109145   -0.4650929
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.9994786   -1.1720246   -0.8269325
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.9948349   -1.1584079   -0.8312619
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.6203545   -0.7989650   -0.4417440
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.2093527   -1.3294053   -1.0893002
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.8139534   -0.9501997   -0.6777070
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.4170928   -0.6108975   -0.2232880
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.7367845   -0.8804981   -0.5930710
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.5994305   -0.7594613   -0.4393996
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.6685325   -0.7515772   -0.5854878
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.9461753   -1.0963048   -0.7960458
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.9082743   -1.0165891   -0.7999594
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.8141044   -1.0387774   -0.5894314
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -1.2401483   -1.3580940   -1.1222026
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1398244   -1.3038401   -0.9758088
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.7127513    0.6018324    0.8236703
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.5241522    0.1897429    0.8585616
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.4239935    0.2715773    0.5764098
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3154227   -1.6019058   -1.0289395
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.0684662   -1.1912020   -0.9457304
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.3243904   -1.5287493   -1.1200314
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0604663   -0.1594762    0.0385436
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.4444161   -0.6288587   -0.2599736
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2409615   -0.3625311   -0.1193920
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.2814445   -0.3435945   -0.2192945
24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.8071825   -0.8530705   -0.7612945
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.5473129   -0.5948263   -0.4997995
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4411711   -0.4984360   -0.3839062
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.8425147   -0.9173571   -0.7676724
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.6117805   -0.6719612   -0.5515999
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.9562863   -1.0776951   -0.8348775
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -1.3896199   -1.4190687   -1.3601711
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -1.1350871   -1.1837196   -1.0864547
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -1.0962905   -1.1632824   -1.0292986
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -1.3608399   -1.4105559   -1.3111240
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.1665481   -1.2314839   -1.1016123


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
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
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2343618   -1.2966897   -1.1720339
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1458294   -0.2842227   -0.0074361
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.8580508    0.5394364    1.1766653
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6644715   -0.9812646   -0.3476785
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.4072436   -0.7125541   -0.1019331
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0510698    0.9102569    1.1918826
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.6072473   -0.6281750   -0.5863195
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3757033   -0.4185197   -0.3328869
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8296257   -0.9583167   -0.7009347
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.2347222   -0.1702799    0.6397243
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1144872   -1.3842438   -0.8447305
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.8921154   -1.1547051   -0.6295257
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0490417   -0.0909855    0.1890689
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3919414    0.2031981    0.5806847
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3046571   -1.3299587   -1.2793555
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2411122   -1.2752162   -1.2070083


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.2873497   -0.1313169    0.7060163
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.2611539   -0.1664761    0.6887839
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.4307320   -0.4367841    1.2982480
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0028110   -0.7580407    0.7636628
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.1722222   -0.4483343    0.7927787
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.6855556    0.0594859    1.3116252
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.2067045   -1.1172348    0.7038257
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1773214   -0.5485380    0.9031808
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.2860814   -0.0483070    0.6204698
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.1534433   -0.1688573    0.4757440
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.6136524    0.0460842    1.1812206
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0600455   -0.4301901    0.5502811
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.6173357    0.0835259    1.1511455
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.3823075   -0.0470106    0.8116257
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0729768   -0.7685705    0.9145241
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.5062552   -1.1954529    0.1829425
Birth       ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.8926662    1.4340111    2.3513213
Birth       ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.4293594    1.0453703    1.8133485
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.6648683   -0.0373252    1.3670617
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.5118652   -0.2331025    1.2568329
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.8259218   -0.1583460    1.8101897
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.7180136   -0.2490862    1.6851134
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.3597450    0.1861327    0.5333573
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.2309588   -0.0028097    0.4647273
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.2993620    0.0444470    0.5542770
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.2931873    0.0546257    0.5317489
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0181026   -0.2208911    0.1846859
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0734596   -0.1217597    0.2686789
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.3901447    0.1791757    0.6011138
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.2179019    0.0055527    0.4302510
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            1.0404381    0.8570731    1.2238031
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.5724194    0.4436252    0.7012136
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.3779211    0.1405490    0.6152932
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1892691   -0.0552235    0.4337618
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            1.3014295    1.0747062    1.5281529
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.5183305    0.2898422    0.7468188
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.1694295    1.1034108    1.2354483
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.6700903    0.6125348    0.7276459
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.1977389    0.9016366    1.4938412
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.5905955    0.3737022    0.8074887
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.4577159    0.3800196    0.5354121
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1837790    0.1087703    0.2587876
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.7427344    0.6159067    0.8695621
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            0.5383240    0.4397095    0.6369385
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.3451030    0.2807229    0.4094831
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.2288192    0.1606288    0.2970095
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.3332147    0.0883422    0.5780871
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.2270142   -0.0261321    0.4801604
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.3716652   -0.8328132    0.0894828
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0898761   -0.5820433    0.4022912
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.3581393   -1.1227282    0.4064497
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.1039003   -0.9833812    0.7755806
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.1798380   -0.6811940    1.0408700
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0185417   -0.8404923    0.8775756
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.3668750   -1.0654057    0.3316557
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1340774   -0.7067988    0.9749536
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0075042   -0.3792678    0.3942761
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0835967   -0.4370751    0.2698818
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.3107127   -0.3696337    0.9910591
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.6726180   -1.2690877   -0.0761483
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.5820329   -1.0768072   -0.0872587
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.3853042   -0.8688583    0.0982500
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.7333895   -2.1188960    0.6521171
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.8302429   -2.2011739    0.5406881
6 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.2121549   -0.1299219    0.5542318
6 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0097538   -0.3321994    0.3126919
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.1135870   -0.7145675    0.4873936
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.1124244   -0.5399710    0.7648199
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0910767   -0.7255827    0.9077361
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.3485688   -1.5959025    0.8987648
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.1767359   -0.2495097   -0.1039620
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0144622   -0.1359570    0.1070326
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.2518433   -0.5052002    0.0015136
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.1658905   -0.4134075    0.0816264
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.5920570   -0.8128931   -0.3712208
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.3200461   -0.5341296   -0.1059626
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.0967651   -0.3095781    0.1160480
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.1171762   -0.3209277    0.0865753
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0389378   -0.2027386    0.1248630
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.1185851   -0.2633401    0.0261698
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.3820725   -0.6210287   -0.1431163
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3315794   -0.5906281   -0.0725306
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0462690   -0.1505373    0.0579993
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.1260953   -0.2192971   -0.0328934
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.1667155   -0.2332988   -0.1001322
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0980793   -0.1607986   -0.0353599
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.2111608   -0.4556595    0.0333378
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.1079381   -0.3048736    0.0889975
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.3857503   -0.4608469   -0.3106538
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.1791484   -0.2549173   -0.1033796
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.1192699   -0.2276611   -0.0108787
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0485089   -0.1434403    0.0464224
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.1748493   -0.2608972   -0.0888013
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0540056   -0.1440992    0.0360880
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0965873   -0.1932768    0.0001022
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0313067   -0.1340613    0.0714479
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.5170024   -0.9041042   -0.1299005
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.1868477   -0.5907998    0.2171043
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.8147566   -1.7292218    0.0997087
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0184207   -1.2618057    1.2249643
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.7883333   -1.6262808    0.0496141
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.8185000   -1.6265579   -0.0104421
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.7275568   -1.2704003   -0.1847133
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.4593750   -1.1557523    0.2370023
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.6740493   -1.0081696   -0.3399289
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.5814048   -0.8838984   -0.2789112
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.1993529   -0.3374755    0.7361813
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.3336708   -0.7479504    0.0806088
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.3838418   -0.9162944    0.1486107
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.4033484   -0.8623631    0.0556663
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.8708903   -1.3841522   -0.3576284
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.5574871   -1.0917001   -0.0232740
24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.2064119   -0.4358018    0.0229780
24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0572264   -0.2866616    0.1722087
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.6296862   -1.1898334   -0.0695389
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.4762275   -1.1300296    0.1775746
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.3614749   -0.6062838   -0.1166659
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.3568312   -0.5946885   -0.1189740
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.5889982   -0.8040756   -0.3739208
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.1935988   -0.4186356    0.0314379
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.3196918   -0.5606889   -0.0786946
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.1823377   -0.4325809    0.0679055
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.2776428   -0.4493422   -0.1059434
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.2397418   -0.3761638   -0.1033197
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.4260439   -0.6799482   -0.1721396
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3257200   -0.6040059   -0.0474341
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.1885991   -0.5099702    0.1327720
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.2887578   -0.4382857   -0.1392300
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.2469564   -0.0645502    0.5584631
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0089677   -0.3608189    0.3428834
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.3839498   -0.5934987   -0.1744009
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.1804952   -0.3373221   -0.0236684
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.5257380   -0.6027788   -0.4486973
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.2658685   -0.3439247   -0.1878122
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.4013436   -0.4954978   -0.3071895
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.1706094   -0.2536725   -0.0875463
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.4333336   -0.5598575   -0.3068097
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.1788008   -0.3086802   -0.0489214
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.2645494   -0.3471450   -0.1819539
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0702576   -0.1650613    0.0245460


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.2312673   -0.0902837    0.5528184
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0645537   -0.2549950    0.3841024
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.3431111   -0.0993435    0.7855657
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0397115   -0.5703614    0.4909384
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.2081132   -0.0157391    0.4319656
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1714651   -0.1238661    0.4667964
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.4024006    0.1021268    0.7026745
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.2105580   -0.7946564    0.3735404
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                 1.0206947    0.7741722    1.2672172
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.5368445   -0.0799023    1.1535914
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.5124359   -0.0740458    1.0989177
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2757192    0.1125855    0.4388529
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2169786    0.0464494    0.3875078
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0280832   -0.1100297    0.1661961
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.2178722    0.0719347    0.3638098
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.3572217    0.2952688    0.4191747
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2491544    0.0664190    0.4318898
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0545408    0.0298875    0.0791941
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.6039518    0.5665762    0.6413274
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.3881999    0.2904853    0.4859145
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.2464099    0.1931884    0.2996314
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.3782102    0.3205078    0.4359125
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.2894761    0.2304470    0.3485053
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.2775769    0.0530845    0.5020692
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.2150870   -0.5856417    0.1554678
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.2163936   -0.5662482    0.1334611
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0857368   -0.5470478    0.7185213
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.1191186   -0.5907705    0.3525333
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0155724   -0.2721486    0.2410039
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.1931861   -0.5361941    0.1498219
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.3498405   -0.6851798   -0.0145013
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.6897667   -1.8594560    0.4799226
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0407974   -0.1364763    0.2180711
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0478852   -0.5908586    0.4950882
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0115065   -0.5827791    0.6057922
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.1005526   -0.1745387   -0.0265664
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.1525086   -0.3286981    0.0236809
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.3391556   -0.4905381   -0.1877731
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0849219   -0.2284979    0.0586541
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0454677   -0.1072451    0.0163097
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3024944   -0.4904089   -0.1145800
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0108032   -0.0202156   -0.0013907
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0898686   -0.1297992   -0.0499379
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0764215   -0.1611039    0.0082610
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.2244676   -0.2775836   -0.1713516
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.0469885   -0.1006574    0.0066804
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.1361246   -0.2158889   -0.0563603
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0542813   -0.1182637    0.0097012
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.3100478   -0.6068471   -0.0132485
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.2073842   -0.6532872    0.2385188
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.6786538   -1.3465606   -0.0107471
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.4314904   -0.8201628   -0.0428180
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.5026504   -0.7237975   -0.2815033
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.1255740   -0.3769014    0.1257535
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.3628979   -0.6791263   -0.0466695
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.6735119   -1.0949264   -0.2520973
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0933858   -0.2200272    0.0332557
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.5393247   -1.0441804   -0.0344689
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.2689414   -0.4287848   -0.1090981
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.2725125   -0.4273634   -0.1176616
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.1932574   -0.3593401   -0.0271747
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.1263693   -0.1867168   -0.0660219
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3195856   -0.5225153   -0.1166559
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0253218   -0.0432987   -0.0073449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1351175   -0.1405915    0.4108265
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1411649   -0.2184135   -0.0639163
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.3131299   -0.3682054   -0.2580543
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.1691478   -0.2164198   -0.1218758
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.3483708   -0.4660705   -0.2306710
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.1448217   -0.2016294   -0.0880140

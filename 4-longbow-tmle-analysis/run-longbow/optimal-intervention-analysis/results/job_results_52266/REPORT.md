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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           39     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm           113     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        79     231
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm           30      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm            17      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        18      65
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm            9      47
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm            20      47
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm        18      47
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      27
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm            12      27
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      27
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm           52     233
Birth       ki0047075b-MAL-ED          PERU                           <48 cm            88     233
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm        93     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           44     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            33     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        46     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            42     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            38      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40      92
Birth       ki1000108-IRC              INDIA                          >=50 cm          142     388
Birth       ki1000108-IRC              INDIA                          <48 cm           108     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm       138     388
Birth       ki1000109-EE               PAKISTAN                       >=50 cm           24     240
Birth       ki1000109-EE               PAKISTAN                       <48 cm           162     240
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm        54     240
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm           12      42
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm            16      42
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm        14      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          116    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm           738    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       398    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          139     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm           240     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       229     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          121     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm           196     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       222     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          161     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           287     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       284     732
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm          763    1543
Birth       ki1101329-Keneba           GAMBIA                         <48 cm           285    1543
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm       495    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm          115     696
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm           373     696
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       208     696
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            2      26
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm            16      26
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         8      26
Birth       ki1114097-CONTENT          PERU                           >=50 cm            1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm             1       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm        12623   13890
Birth       ki1119695-PROBIT           BELARUS                        <48 cm           147   13890
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm      1120   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         4125   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          4409   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      5341   13875
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm          437     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm           163     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm       252     852
Birth       ki1135781-COHORTS          INDIA                          >=50 cm         1426    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm          2774    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm      2440    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm         1129    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm           762    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1159    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         3783   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         16979   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      5905   26667
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          178    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1913    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       732    2823
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           16     104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            48     104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     104
6 months    ki1000108-IRC              INDIA                          >=50 cm          142     389
6 months    ki1000108-IRC              INDIA                          <48 cm           109     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm       138     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm           24     236
6 months    ki1000109-EE               PAKISTAN                       <48 cm           160     236
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm        52     236
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm           10      34
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm            13      34
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm        11      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          196    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           709    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       419    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          120     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm           199     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       199     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          143     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           213     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       248     604
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
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm        14296   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm           172   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm      1293   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2538    8577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2680    8577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3359    8577
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          351     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm           133     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm       204     688
6 months    ki1135781-COHORTS          INDIA                          >=50 cm         1330    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm          2530    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm      2275    6135
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm          990    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm           677    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1034    2701
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         2415   16453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         10262   16453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      3776   16453
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1101    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1923    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       996    4020
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
24 months   ki1000109-EE               PAKISTAN                       >=50 cm           10     106
24 months   ki1000109-EE               PAKISTAN                       <48 cm            71     106
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm        25     106
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           99     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           160     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       155     414
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          139     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           206     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       233     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          128     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           200     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       186     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          535    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm           196    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       334    1065
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           84     487
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           249     487
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       154     487
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0      11
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             5      11
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         6      11
24 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm             1       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm         3683    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm            44    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm       308    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          312    1608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           711    1608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       585    1608
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          263     560
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           120     560
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       177     560
24 months   ki1135781-COHORTS          INDIA                          >=50 cm         1047    4758
24 months   ki1135781-COHORTS          INDIA                          <48 cm          1934    4758
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm      1777    4758
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm          897    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm           604    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm       941    2442
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1164    8378
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5247    8378
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      1967    8378
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
![](/tmp/6621eb1d-44d2-4896-ad96-be0ea69f6c3f/959c82a1-3164-4058-8aea-b82a2cf052ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.3243198    0.1982252    0.4504145
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2726146    0.0579464    0.4872829
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0802154   -0.3180269    0.1575961
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1573579   -0.1129423    0.4276582
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2335240    0.0765479    0.3905001
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3604403    0.1751852    0.5456954
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0404316   -0.1266926    0.2075557
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.3475630    0.0608856    0.6342404
Birth       ki1000108-IRC              INDIA                          optimal              observed           1.2510039    1.0682753    1.4337326
Birth       ki1000109-EE               PAKISTAN                       optimal              observed           0.6266740    0.1202287    1.1331193
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed           0.7924315    0.2573322    1.3275308
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.4195312    0.3495308    0.4895317
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.4838741    0.3655552    0.6021930
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.2970625    0.1983695    0.3957555
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.3546919    0.2710160    0.4383678
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.9746425    0.9198329    1.0294520
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.4723921    0.3826066    0.5621777
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.5158431    1.3833241    1.6483622
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.8409896    0.8169329    0.8650463
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           1.0475010    0.9799893    1.1150126
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.8502196    0.8131215    0.8873178
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.7931077    0.7581062    0.8281091
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           1.5625261    1.4921550    1.6328972
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.4407348    0.3406880    0.5407816
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3639247   -0.5927476   -0.1351018
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5741035    0.3431523    0.8050547
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5071316   -0.7708044   -0.2434588
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1921495   -0.4322046    0.0479055
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6931372   -0.9304231   -0.4558513
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.7754910   -1.0858334   -0.4651485
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6796781   -0.9537339   -0.4056224
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3732088   -1.9682920   -0.7781257
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7286103   -0.9454581   -0.5117624
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.8087719   -1.1246421   -0.4929016
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.3393334   -2.0857623   -0.5929045
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5769426   -0.7555469   -0.3983382
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6369869   -0.8142085   -0.4597653
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3300453   -0.4657775   -0.1943132
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3981541   -0.5068027   -0.2895056
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.5362289   -0.6150188   -0.4574390
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5707976   -0.7451758   -0.3964195
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1971179    0.0965670    0.2976688
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4548677   -0.4989408   -0.4107946
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.2378142   -1.3286139   -1.1470144
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1489054   -0.2041583   -0.0936524
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6266484   -0.6894262   -0.5638707
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6006195   -0.6480131   -0.5532259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.9364660   -1.0122208   -0.8607112
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4716030   -1.7379427   -1.2052633
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2928633   -0.1442812    0.7300078
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4272481   -1.8411041   -1.0133921
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0633431   -1.3295012   -0.7971850
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4122500   -1.6886600   -1.1358400
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4767957   -1.9228310   -1.0307604
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.0536650   -2.3434177   -1.7639122
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.2337456   -2.6861026   -1.7813886
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.5986724   -1.7627987   -1.4345461
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -1.7541066   -2.1453007   -1.3629126
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.5891853   -1.7975158   -1.3808549
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0301521   -1.1752313   -0.8850730
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9270159   -1.0514614   -0.8025703
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.2856324   -1.3726249   -1.1986399
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.4260476   -1.6427786   -1.2093167
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0382504   -0.3417993    0.2652985
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.1421400   -1.2641641   -1.0201160
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.5496883   -2.6651648   -2.4342117
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.4045797   -1.4755427   -1.3336167
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.9664465   -2.0365024   -1.8963907
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5058923   -1.5661455   -1.4456390
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4602794   -1.5286339   -1.3919249


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.8533333   -1.2104864   -0.4961803
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       ki1000109-ResPak           PAKISTAN                       observed             observed          -0.9800000   -1.4086438   -0.5513562
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0308036   -0.0328378    0.0944451
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5002724   -0.5208163   -0.4797285
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1729576   -1.2009629   -1.1449523
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2093365   -1.3339992   -1.0846738
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0564407   -0.1984700    0.3113513
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.5092276   -1.7906712   -1.2277841
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6684615   -0.9484552   -0.3884679
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.2982403   -1.4193221   -1.1771585
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0985125   -1.3092915   -0.8877336
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3305226   -1.5032169   -1.1578283
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.2953686   -1.5534398   -1.0372973
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2263582   -1.3620220   -1.0906944
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.1264619   -2.2795142   -1.9734095
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.7077451   -2.2839081   -1.1315821
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4030363   -1.4821426   -1.3239299
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4092745   -1.5003907   -1.3181582
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9034101   -0.9602836   -0.8465366
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3510539   -1.4294158   -1.2726919
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8671231   -0.8928063   -0.8414399
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.7553052   -1.8330182   -1.6775923
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9973610   -1.0266429   -0.9680792
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1429137   -1.1848624   -1.1009651
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3330274   -1.3561002   -1.3099546
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3464316   -1.3887462   -1.3041170
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -2.0010428   -2.1326113   -1.8694743
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.0882143   -0.4282438    0.2518152
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -2.1964103   -2.4711826   -1.9216379
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.5280769   -1.8563546   -1.1997992
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7564687   -1.8887917   -1.6241458
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.5878571   -1.8189768   -1.3567375
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5537500   -2.7412414   -2.3662586
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.4800629   -2.6380751   -2.3220507
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7882863   -1.8843577   -1.6922149
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.6323899   -2.8110257   -2.4537542
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2268619   -2.3322626   -2.1214612
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5564333   -1.6186769   -1.4941898
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8864887   -1.9720856   -1.8008918
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6032245   -1.6608525   -1.5455965
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9426964   -3.0309681   -2.8544248
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.1193232   -2.1537519   -2.0848946
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4157330   -2.4606528   -2.3708132
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0186011   -2.0462424   -1.9909598
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7719162   -1.8104910   -1.7333415


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4424151   -1.6113253   -1.2735049
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.9486146   -1.2346899   -0.6625393
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1234016   -1.4725009   -0.7743022
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0106913   -1.4062877   -0.6150949
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1163137   -1.2844739   -0.9481534
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9921476   -1.2129440   -0.7713512
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1960316   -1.4362365   -0.9558267
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3087586   -1.6326211   -0.9848962
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.5590452   -1.7460536   -1.3720367
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -2.4875490   -2.9833332   -1.9917647
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.7724315   -2.3942193   -1.1506437
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.8509530   -1.9437276   -1.7581784
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.4148938   -1.5396150   -1.2901726
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1821645   -1.2899629   -1.0743662
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2641864   -1.3601202   -1.1682526
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9438389   -1.0085395   -0.8791382
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.5575502   -1.6674243   -1.4476761
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1888986   -0.2319517   -0.1458454
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.3412620   -1.3682968   -1.3142273
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9177709   -1.0076494   -0.8278924
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.5201157   -1.5620122   -1.4782192
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0421569   -1.0857687   -0.9985450
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -2.7354837   -2.8046129   -2.6663545
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.9640256   -2.0718853   -1.8561659
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8454118   -1.0666846   -0.6241390
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5176628   -0.7803783   -0.2549473
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0020961   -1.3532055   -0.6509866
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4763120   -0.7991616   -0.1534625
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6051031   -0.8216101   -0.3885961
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3230216   -0.5909884   -0.0550547
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6508445   -0.9113573   -0.3903316
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0778402   -0.4111871    0.5668675
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4977479   -0.6752755   -0.3202203
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.3176900   -1.6417255   -0.9936545
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3684117   -1.1233167    0.3864933
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.8260937   -1.0036666   -0.6485208
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7722876   -0.9309130   -0.6136621
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7616462   -0.8861189   -0.6371734
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8005242   -0.9087682   -0.6922802
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3671812   -0.4248308   -0.3095316
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7802562   -0.9421143   -0.6183982
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0901193   -0.1141954   -0.0660432
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4122554   -0.4504898   -0.3740210
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5174911   -0.5946566   -0.4403256
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8484557   -0.9005966   -0.7963147
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5162653   -0.5694810   -0.4630495
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7324079   -0.7763229   -0.6884928
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4099655   -0.4743727   -0.3455584
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5294398   -0.7740234   -0.2848561
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3810776   -0.7396429   -0.0225123
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7691622   -1.2143453   -0.3239790
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4647338   -0.8365247   -0.0929429
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3442187   -0.5811109   -0.1073265
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1110614   -0.4457434    0.2236206
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5000850   -0.7722607   -0.2279094
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2463173   -0.6644558    0.1718212
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1896140   -0.3201230   -0.0591049
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.8782833   -1.2792243   -0.4773424
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6376766   -0.8217363   -0.4536168
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5722700   -0.7052236   -0.4393164
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5142487   -0.6365562   -0.3919412
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2708009   -0.3332846   -0.2083172
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4604411   -0.6564319   -0.2644503
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0931544   -0.1299923   -0.0563165
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4610845   -0.5723830   -0.3497860
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3930081   -0.4856535   -0.3003628
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.7147435   -0.7796535   -0.6498336
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4492865   -0.5072522   -0.3913207
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5127088   -0.5682404   -0.4571772
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3116368   -0.3709949   -0.2522788

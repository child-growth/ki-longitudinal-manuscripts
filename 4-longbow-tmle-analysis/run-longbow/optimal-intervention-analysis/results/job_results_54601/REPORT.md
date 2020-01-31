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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1258   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         16109   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      5088   22455
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          827   13924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          9817   13924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      3280   13924
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          404    7184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5067    7184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      1713    7184
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/f30b01d9-eb9f-4286-9e75-5c5c8f64c770/feb5e0da-7c19-42f2-a436-1e1b82fd8146/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.3177053    0.1873842    0.4480265
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2593577    0.0484612    0.4702542
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0022671   -0.2120603    0.2075261
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2129443   -0.0349702    0.4608588
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.3535318    0.1826369    0.5244267
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3757551    0.2015596    0.5499506
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0543004   -0.1094306    0.2180313
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.3615541    0.0482565    0.6748516
Birth       ki1000108-IRC              INDIA                          optimal              observed           1.2667151    1.0859449    1.4474852
Birth       ki1000109-EE               PAKISTAN                       optimal              observed           0.4363049   -0.1815518    1.0541616
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed           0.5056236   -0.0229630    1.0342102
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.4095502    0.3330534    0.4860470
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.4940492    0.3761498    0.6119486
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.2907232    0.1968969    0.3845495
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.3546642    0.2714276    0.4379007
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.9746010    0.9203527    1.0288492
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.4870493    0.3987528    0.5753457
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.5152250    1.3828635    1.6475865
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.8276222    0.8047918    0.8504526
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           1.0599480    0.9956408    1.1242552
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.8408384    0.8047527    0.8769242
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.7890941    0.7545956    0.8235926
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.5872574    0.5367065    0.6378083
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.4157641    0.3238757    0.5076525
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3588626   -0.5855499   -0.1321753
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5678346    0.3366228    0.7990463
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5007304   -0.7721366   -0.2293242
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1587376   -0.3935332    0.0760580
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6217091   -0.8375831   -0.4058351
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6700727   -0.9566466   -0.3834988
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6482462   -0.9168226   -0.3796699
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4572808   -1.9821579   -0.9324038
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7613782   -0.9720861   -0.5506703
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.7636509   -1.0794943   -0.4478075
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -2.1383383   -3.0382450   -1.2384315
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5844597   -0.7599376   -0.4089819
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6309402   -0.8013458   -0.4605345
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3216874   -0.4570664   -0.1863083
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4153380   -0.5244254   -0.3062505
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.5423347   -0.6202816   -0.4643877
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5762999   -0.7514884   -0.4011115
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1955350    0.0669667    0.3241034
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4605756   -0.5049978   -0.4161534
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.2331119   -1.3248865   -1.1413372
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1346829   -0.1883088   -0.0810569
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6216682   -0.6841312   -0.5592052
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0353582   -0.1127339    0.0420175
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.9217353   -0.9931724   -0.8502981
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4779502   -1.7435967   -1.2123037
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3008256   -0.1569220    0.7585731
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4718872   -1.9877214   -0.9560530
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0861613   -1.3642842   -0.8080384
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6141942   -1.8843539   -1.3440346
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6505989   -2.0105644   -1.2906334
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.0768827   -2.3704506   -1.7833149
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.2710881   -2.7037772   -1.8383990
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6006075   -1.7630263   -1.4381888
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.0347154   -2.4494732   -1.6199576
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.5766899   -1.7843898   -1.3689900
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0071586   -1.1548129   -0.8595043
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9308702   -1.0550914   -0.8066491
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.2960067   -1.3821085   -1.2099050
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.3828649   -1.5929789   -1.1727509
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0766627   -0.3802831    0.2269578
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.1921043   -1.3173224   -1.0668861
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.5434929   -2.6586371   -2.4283486
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.3756922   -1.4444997   -1.3068847
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.9608720   -2.0307108   -1.8910332
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1142380   -1.2296593   -0.9988166
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4826363   -1.5527773   -1.4124952


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5894148   -1.6086362   -1.5701935
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2087678   -1.3332048   -1.0843307
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0564689   -0.1983718    0.3113097
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.5092276   -1.7906712   -1.2277841
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6684615   -0.9484552   -0.3884679
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.2930271   -1.4141974   -1.1718569
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3303469   -1.3544501   -1.3062437
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3464316   -1.3887462   -1.3041170
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -2.0004545   -2.1320336   -1.8688755
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.0901587   -0.4299024    0.2495849
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -2.1964103   -2.4711826   -1.9216379
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.5280769   -1.8563546   -1.1997992
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7565208   -1.8888943   -1.6241474
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.5850366   -1.8154417   -1.3546316
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0375014   -2.0671576   -2.0078452
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7719162   -1.8104910   -1.7333415


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4358006   -1.6073806   -1.2642205
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.9353577   -1.2179114   -0.6528041
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2013499   -1.5389200   -0.8637798
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0662776   -1.4611757   -0.6713796
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2363215   -1.4289807   -1.0436623
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0074624   -1.2285884   -0.7863364
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2099004   -1.4492151   -0.9705856
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3227497   -1.6633822   -0.9821172
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.5747563   -1.7610518   -1.3884608
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -2.2971799   -2.9029601   -1.6913997
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.4856236   -2.0412199   -0.9300273
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.8409719   -1.9431651   -1.7387788
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.4250690   -1.5495057   -1.3006322
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1758253   -1.2785275   -1.0731230
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2641587   -1.3596328   -1.1686846
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9437973   -1.0081249   -0.8794698
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.5722073   -1.6825389   -1.4618758
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1882804   -0.2314353   -0.1451256
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.3278946   -1.3533112   -1.3024780
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9302179   -1.0147081   -0.8457278
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.5107345   -1.5513511   -1.4701180
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0381433   -1.0809444   -0.9953422
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -2.1766722   -2.2310960   -2.1222484
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.9390549   -2.0391878   -1.8389220
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8499052   -1.0693730   -0.6304373
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5113656   -0.7764596   -0.2462717
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0084972   -1.3622469   -0.6547475
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5097239   -0.8339494   -0.1854985
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6713180   -0.8758302   -0.4668057
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4284399   -0.6883425   -0.1685373
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6822764   -0.9376327   -0.4269200
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1619122   -0.2761110    0.5999355
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4649800   -0.6394572   -0.2905027
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.3628110   -1.6873344   -1.0382875
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.4305932   -0.4177563    1.2789426
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.8185765   -0.9873684   -0.6497846
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7783343   -0.9310896   -0.6255789
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7700041   -0.8940392   -0.6459690
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7833404   -0.8914702   -0.6752106
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3610754   -0.4179260   -0.3042249
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7747540   -0.9379527   -0.6115553
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0885364   -0.1735658   -0.0035071
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4065475   -0.4449895   -0.3681055
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5221933   -0.5987207   -0.4456660
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8626782   -0.9131262   -0.8122302
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5212455   -0.5740958   -0.4683952
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2949887   -1.3703472   -1.2196301
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4246963   -0.4860867   -0.3633060
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5225043   -0.7664912   -0.2785175
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3909843   -0.7612101   -0.0207585
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7245230   -1.2536958   -0.1953503
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4419156   -0.8203455   -0.0634858
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1423266   -0.3793928    0.0947396
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0655622   -0.2408312    0.3719557
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4768673   -0.7512724   -0.2024621
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2089748   -0.6089516    0.1910020
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1876788   -0.3167989   -0.0585587
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.5976745   -1.0000407   -0.1953084
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6501720   -0.8339813   -0.4663628
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5952635   -0.7305332   -0.4599939
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5103944   -0.6322742   -0.3885145
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2604266   -0.3216881   -0.1991651
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5036238   -0.6938053   -0.3134423
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0547421   -0.1016416   -0.0078427
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4111202   -0.5242550   -0.2979854
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3992036   -0.4916618   -0.3067454
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.7436311   -0.8060510   -0.6812111
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4548610   -0.5124272   -0.3972948
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9232634   -1.0334560   -0.8130708
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2892800   -0.3483431   -0.2302168

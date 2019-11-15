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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/ac0eef59-cbca-46a8-8062-9d5ea99f8238/6498fe14-87a5-4daa-b3a3-412bcc18d949/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ac0eef59-cbca-46a8-8062-9d5ea99f8238/6498fe14-87a5-4daa-b3a3-412bcc18d949/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ac0eef59-cbca-46a8-8062-9d5ea99f8238/6498fe14-87a5-4daa-b3a3-412bcc18d949/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.3277941    0.1999290    0.4556592
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -1.9089521   -2.0498572   -1.7680470
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.6876887   -0.7729314   -0.6024461
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.2606964    0.0444519    0.4769409
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -2.0765393   -2.4655611   -1.6875174
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.8871643   -1.0312766   -0.7430521
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0666667   -0.1235118    0.2568452
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -2.1210000   -2.4586774   -1.7833226
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.8194444   -0.9860051   -0.6528838
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.2687500    0.0580716    0.4794284
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -1.6850000   -1.9901516   -1.3798484
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.7100000   -0.9522102   -0.4677898
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.3162862    0.1382799    0.4942926
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               NA                -1.7884935   -1.9134962   -1.6634908
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.6575100   -0.7285108   -0.5865092
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.3805024    0.2026972    0.5583077
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -1.8550433   -2.1181390   -1.5919475
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.7222092   -0.8181512   -0.6262671
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0255713   -0.1399791    0.1911217
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.4524031   -2.7737511   -2.1310552
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.9150081   -1.0158523   -0.8141639
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.3468508    0.0372183    0.6564832
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.9473993   -2.1889920   -1.7058067
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.4932476   -0.5879905   -0.3985047
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                 1.2828144    1.1010774    1.4645514
Birth       ki1000108-IRC              INDIA                          <48 cm               NA                -2.0639143   -2.2672859   -1.8605427
Birth       ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.5311937   -0.5892054   -0.4731819
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.5916817   -0.0091545    1.1925178
Birth       ki1000109-EE               PAKISTAN                       <48 cm               NA                -2.5874689   -2.7552346   -2.4197031
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.7964038   -0.9016457   -0.6911619
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.7402305    0.1693347    1.3111263
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               NA                -2.3938696   -2.6600813   -2.1276578
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.5041286   -0.7419712   -0.2662859
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.3996890    0.3309893    0.4683888
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -2.1268053   -2.1997711   -2.0538394
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.6633168   -0.6876314   -0.6390021
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.4963301    0.3787216    0.6139387
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -1.9639844   -2.0498762   -1.8780926
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.7113763   -0.7599373   -0.6628152
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.2874881    0.1949961    0.3799800
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.7733256   -1.8371768   -1.7094743
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.7366028   -0.7816221   -0.6915836
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.3596769    0.2777227    0.4416311
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.8501888   -1.9214747   -1.7789029
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.6831616   -0.7283942   -0.6379290
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.9740598    0.9199624    1.0281572
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               NA                -1.7921105   -1.9088505   -1.6753705
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.3585183   -0.3897051   -0.3273314
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.4804734    0.3919857    0.5689611
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -1.8554380   -1.9279874   -1.7828886
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.5772652   -0.6266626   -0.5278678
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 1.5153567    1.3829924    1.6477210
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               NA                -1.6651681   -1.7051849   -1.6251513
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.4343984   -0.4634675   -0.4053292
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.8258222    0.8030717    0.8485726
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.8389611   -1.8641709   -1.8137512
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4168430   -0.4262355   -0.4074505
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 1.0568976    0.9919544    1.1218408
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -1.7047557   -1.8457744   -1.5637371
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2893874   -0.3331077   -0.2456670
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.8367363    0.8023210    0.8711515
Birth       ki1135781-COHORTS          INDIA                          <48 cm               NA                -1.7322456   -1.7617607   -1.7027304
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.3381308   -0.3522651   -0.3239964
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.7897372    0.7552474    0.8242270
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -1.6537005   -1.7080811   -1.5993199
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.3398389   -0.3596241   -0.3200537
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.5584618    0.5172332    0.5996903
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -2.0988462   -2.1151283   -2.0825641
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.4845198   -0.4953749   -0.4736648
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.4192071    0.3338820    0.5045322
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -2.0597665   -2.1014357   -2.0180972
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.5871200   -0.6195061   -0.5547340
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.3767717   -0.6044947   -0.1490486
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -1.6878285   -1.8626053   -1.5130517
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -1.0410752   -1.1948214   -0.8873289
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.6196256    0.3911266    0.8481247
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.4373443   -0.9721921    0.0975035
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.1345446   -0.6989441    0.4298548
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.4658333   -0.7214587   -0.2102080
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.9712963   -2.3236492   -1.6189433
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -1.5112222   -1.9292582   -1.0931863
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.1406250   -0.3527411    0.0714911
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.9272727   -1.3107187   -0.5438267
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.8650000   -1.4941733   -0.2358267
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.5665018   -0.7700397   -0.3629640
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                -1.7772685   -1.9688655   -1.5856714
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -1.1413449   -1.3228394   -0.9598504
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.6553695   -0.9423328   -0.3684063
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -1.7841005   -2.3071756   -1.2610254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -1.0778668   -1.3622616   -0.7934721
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.6512117   -0.9210173   -0.3814060
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -1.9203338   -2.2144067   -1.6262610
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -1.2821666   -1.5110530   -1.0532802
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -1.2574946   -1.9857384   -0.5292508
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.5117381   -1.8897011   -1.1337751
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.9955928   -1.4128410   -0.5783445
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.7411883   -0.9558461   -0.5265306
6 months    ki1000108-IRC              INDIA                          <48 cm               NA                -1.8895524   -2.1617309   -1.6173739
6 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -1.2415567   -1.4457974   -1.0373160
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.7234604   -1.0188048   -0.4281160
6 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                -2.4937017   -2.6684512   -2.3189523
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -1.6276104   -1.8536813   -1.4015394
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -1.1953480   -2.2257121   -0.1649838
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               NA                -2.1579558   -3.0388049   -1.2771066
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -1.0972608   -2.2813439    0.0868223
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.5625840   -0.7535284   -0.3716396
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -1.8831761   -1.9446789   -1.8216733
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.9760545   -1.0708345   -0.8812745
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6268994   -0.7982463   -0.4555525
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -2.0177048   -2.1559211   -1.8794885
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.2663408   -1.3760437   -1.1566379
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.3249625   -0.4587685   -0.1911565
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.7193169   -1.8232222   -1.6154116
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.9921744   -1.0840818   -0.9002669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.4098579   -0.5164673   -0.3032484
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.7524238   -1.8572048   -1.6476428
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -1.1231881   -1.2233525   -1.0230237
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.5396368   -0.6176317   -0.4616419
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -1.5045727   -1.6345857   -1.3745598
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -1.1413260   -1.2289157   -1.0537364
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.5687976   -0.7446914   -0.3929038
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -1.7534519   -1.8532310   -1.6536729
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1037649   -1.2150158   -0.9925140
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.1978784    0.0977954    0.2979614
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                -1.2222593   -1.3678441   -1.0766745
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.7252207   -0.9037382   -0.5467033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4620028   -0.5063814   -0.4176243
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.3051442   -1.3513372   -1.2589511
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.8281969   -0.8678172   -0.7885766
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -1.2389608   -1.3302286   -1.1476930
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -2.6779450   -2.8272247   -2.5286652
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -2.0302258   -2.1544785   -1.9059731
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.1317999   -0.1848152   -0.0787847
6 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -1.6190098   -1.6626927   -1.5753270
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.8074140   -0.8470048   -0.7678231
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.6219534   -0.6843681   -0.5595387
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -1.8363305   -1.9164252   -1.7562359
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -1.1861937   -1.2461640   -1.1262234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.0567234   -0.1315008    0.0180539
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -1.6574417   -1.6816764   -1.6332070
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.6606918   -0.6952809   -0.6261027
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.9211706   -0.9927265   -0.8496146
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -1.7670269   -1.8243014   -1.7097524
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.0191544   -1.0878681   -0.9504406
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.4969430   -1.7525676   -1.2413184
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -2.4017798   -2.6010110   -2.2025485
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -1.8693812   -2.0573572   -1.6814053
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.3144253   -0.1419356    0.7707861
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.6910694   -1.3898858    0.0077470
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.3603704   -1.0309154    0.3101746
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.3825000   -1.7660213   -0.9989787
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -2.5138889   -2.9435277   -2.0842500
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -2.1410000   -2.4856619   -1.7963381
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -1.0575000   -1.3098335   -0.8051665
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -1.6331818   -2.2000387   -1.0663249
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -1.9007143   -2.5143042   -1.2871243
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -1.4522354   -1.7658354   -1.1386355
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -2.1019276   -2.3127046   -1.8911505
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -1.5501094   -1.7460223   -1.3541966
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -1.3907669   -1.7561213   -1.0254125
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -1.8091592   -2.2305294   -1.3877890
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -1.5573700   -1.9796972   -1.1350427
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -2.0881406   -2.3733482   -1.8029331
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.8783201   -3.1839617   -2.5726784
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -2.6827394   -3.0044771   -2.3610017
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -2.1987565   -2.6374763   -1.7600367
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -2.6163107   -2.8350436   -2.3975777
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -2.4723261   -2.7537980   -2.1908541
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -1.5881527   -1.7494418   -1.4268636
24 months   ki1000108-IRC              INDIA                          <48 cm               NA                -2.0895020   -2.2700448   -1.9089593
24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -1.7290192   -1.8801623   -1.5778761
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -1.9311413   -2.3492466   -1.5130360
24 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                -2.8058128   -3.0196991   -2.5919264
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -2.5222976   -2.8718952   -2.1727001
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.5728684   -1.7823751   -1.3633617
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -2.7758523   -2.9325538   -2.6191507
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -2.0695066   -2.2163761   -1.9226371
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -1.0115276   -1.1577658   -0.8652895
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -2.2006308   -2.3263671   -2.0748946
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -1.4312657   -1.5489960   -1.3135355
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.9253164   -1.0496248   -0.8010081
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.8061061   -1.9407205   -1.6714918
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -1.3987913   -1.5366038   -1.2609789
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -1.2938834   -1.3798756   -1.2078912
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -1.9612427   -2.0959260   -1.8265594
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -1.7342988   -1.8397367   -1.6288609
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -1.4092365   -1.6196524   -1.1988207
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -2.1629444   -2.2775413   -2.0483476
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.6959925   -1.8335118   -1.5584733
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0938253   -0.4010773    0.2134267
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                -0.4952448   -0.9014752   -0.0890143
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.5271792   -0.8283330   -0.2260254
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1854193   -1.3097450   -1.0610936
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.9110763   -1.9978227   -1.8243299
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.4589028   -1.5486252   -1.3691803
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -2.5466863   -2.6627172   -2.4306554
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -3.5158050   -3.7019333   -3.3296766
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -3.1332884   -3.2856607   -2.9809160
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.3819477   -1.4500389   -1.3138566
24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                -2.6170053   -2.6676938   -2.5663167
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -2.0133750   -2.0643657   -1.9623843
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.9608615   -2.0307377   -1.8909853
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -2.9648941   -3.0516951   -2.8780930
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -2.4972270   -2.5640533   -2.4304006
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -1.1101114   -1.2256580   -0.9945647
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -2.2803809   -2.3126134   -2.2481483
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -1.5188952   -1.5634555   -1.4743348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -1.4638058   -1.5331854   -1.3944263
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -2.0619370   -2.1165115   -2.0073625
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.5393075   -1.6058529   -1.4727621


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0308036   -0.0328378    0.0944451
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5002724   -0.5208163   -0.4797285
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5894148   -1.6086362   -1.5701935
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2087678   -1.3332048   -1.0843307
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0564689   -0.1983718    0.3113097
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.5092276   -1.7906712   -1.2277841
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.6684615   -0.9484552   -0.3884679
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.2930271   -1.4141974   -1.1718569
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0985125   -1.3092915   -0.8877336
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3305226   -1.5032169   -1.1578283
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.2953686   -1.5534398   -1.0372973
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2263582   -1.3620220   -1.0906944
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.1264619   -2.2795142   -1.9734095
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.7077451   -2.2839081   -1.1315821
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4030363   -1.4821426   -1.3239299
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4092745   -1.5003907   -1.3181582
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9034101   -0.9602836   -0.8465366
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3510539   -1.4294158   -1.2726919
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8671231   -0.8928063   -0.8414399
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.7553052   -1.8330182   -1.6775923
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9973610   -1.0266429   -0.9680792
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1429137   -1.1848624   -1.1009651
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3303469   -1.3544501   -1.3062437
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3464316   -1.3887462   -1.3041170
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -2.0004545   -2.1320336   -1.8688755
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0901587   -0.4299024    0.2495849
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -2.1964103   -2.4711826   -1.9216379
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.5280769   -1.8563546   -1.1997992
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7565208   -1.8888943   -1.6241474
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.5850366   -1.8154417   -1.3546316
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5537500   -2.7412414   -2.3662586
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.4800629   -2.6380751   -2.3220507
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7882863   -1.8843577   -1.6922149
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6323899   -2.8110257   -2.4537542
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2268619   -2.3322626   -2.1214612
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5564333   -1.6186769   -1.4941898
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8864887   -1.9720856   -1.8008918
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6032245   -1.6608525   -1.5455965
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9426964   -3.0309681   -2.8544248
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.1193232   -2.1537519   -2.0848946
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4157330   -2.4606528   -2.3708132
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0375014   -2.0671576   -2.0078452
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7719162   -1.8104910   -1.7333415


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -2.2367462   -2.4269865   -2.0465059
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -1.0154828   -1.1695368   -0.8614288
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -2.3372356   -2.7830538   -1.8914174
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -1.1478607   -1.4143004   -0.8814209
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -2.1876667   -2.5752152   -1.8001181
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.8861111   -1.1389160   -0.6333062
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -1.9537500   -2.3245638   -1.5829362
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.9787500   -1.2997658   -0.6577342
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -2.1047797   -2.3214988   -1.8880607
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.9737962   -1.1635298   -0.7840626
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -2.2355457   -2.5517950   -1.9192964
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -1.1027116   -1.2990210   -0.9064021
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -2.4779744   -2.8397244   -2.1162244
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.9405794   -1.1348715   -0.7462873
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -2.2942501   -2.6891124   -1.8993879
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.8400984   -1.1636183   -0.5165784
Birth       ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -3.3467287   -3.6202537   -3.0732037
Birth       ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -1.8140081   -2.0046608   -1.6233553
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -3.1791505   -3.8013350   -2.5569661
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -1.3880855   -1.9966338   -0.7795373
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm           -3.1341001   -3.7742302   -2.4939699
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -1.2443591   -1.8659498   -0.6227684
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -2.5264943   -2.6040900   -2.4488987
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -1.0630058   -1.1391601   -0.9868515
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -2.4603145   -2.6054212   -2.3152078
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -1.2077064   -1.3346138   -1.0807990
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -2.0608137   -2.1731761   -1.9484512
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -1.0240909   -1.1263639   -0.9218179
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -2.2098657   -2.3181741   -2.1015573
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -1.0428385   -1.1361840   -0.9494930
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -2.7661703   -2.8951195   -2.6372211
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -1.3325781   -1.3947060   -1.2704501
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -2.3359114   -2.4505771   -2.2212458
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -1.0577386   -1.1576255   -0.9578517
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -3.1805248   -3.3245644   -3.0364852
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -1.9497551   -2.0812155   -1.8182947
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -2.6647832   -2.6986202   -2.6309463
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -1.2426651   -1.2671020   -1.2182282
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -2.7616533   -2.9179551   -2.6053515
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -1.3462849   -1.4241108   -1.2684591
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -2.5689818   -2.6140796   -2.5238840
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -1.1748670   -1.2117128   -1.1380213
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -2.4434377   -2.5076328   -2.3792426
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -1.1295761   -1.1691129   -1.0900393
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -2.6573080   -2.7022088   -2.6124071
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -1.0429816   -1.0844717   -1.0014914
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -2.4789735   -2.5738314   -2.3841156
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -1.0063271   -1.0990430   -0.9136112
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -1.3110569   -1.5986295   -1.0234842
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.6643035   -0.9392567   -0.3893504
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -1.0569699   -1.6428667   -0.4710732
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.7541703   -1.3639325   -0.1444081
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -1.5054630   -1.9407754   -1.0701505
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -1.0453889   -1.5353872   -0.5553906
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.7866477   -1.2248532   -0.3484422
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.7243750   -1.3883421   -0.0604079
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -1.2107666   -1.4899210   -0.9316123
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.5748431   -0.8442687   -0.3054174
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -1.1287310   -1.7271302   -0.5303317
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.4224973   -0.8276300   -0.0173646
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -1.2691222   -1.6678521   -0.8703922
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.6309549   -0.9848530   -0.2770568
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.2542435   -1.0775314    0.5690444
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2619019   -0.5776209    1.1014247
6 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -1.1483641   -1.4948693   -0.8018589
6 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.5003684   -0.7964802   -0.2042566
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -1.7702413   -2.1128513   -1.4276313
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.9041499   -1.2760957   -0.5322042
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm           -0.9626078   -2.3185225    0.3933069
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.0980872   -1.5044292    1.7006036
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -1.3205921   -1.5476939   -1.0934903
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.4134705   -0.6609947   -0.1659463
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.3908053   -1.6108411   -1.1707695
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.6394414   -0.8430150   -0.4358678
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -1.3943544   -1.5638773   -1.2248315
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.6672119   -0.8297807   -0.5046430
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -1.3425659   -1.4925632   -1.1925686
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.7133302   -0.8599225   -0.5667379
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.9649359   -1.1164655   -0.8134063
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.6016892   -0.7189492   -0.4844293
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -1.1846544   -1.3866805   -0.9826282
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.5349673   -0.7432348   -0.3266998
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -1.4201377   -1.5664804   -1.2737949
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.9230991   -1.0643338   -0.7818644
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.8431413   -0.9071742   -0.7791084
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.3661941   -0.4256139   -0.3067742
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -1.4389842   -1.6137726   -1.2641957
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.7912650   -0.9448445   -0.6376854
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -1.4872099   -1.5558307   -1.4185891
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6756140   -0.7417500   -0.6094780
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -1.2143771   -1.3157583   -1.1129959
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5642403   -0.6507179   -0.4777627
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -1.6007182   -1.6771753   -1.5242612
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.6039683   -0.6832007   -0.5247360
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.8458564   -0.9370008   -0.7547120
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0979838   -0.1939538   -0.0020138
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.9048367   -1.2298617   -0.5798118
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.3724382   -0.6906235   -0.0542530
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -1.0054946   -1.8336105   -0.1773788
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.6747956   -1.4862185    0.1366272
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -1.1313889   -1.7073039   -0.5554738
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.7585000   -1.2741359   -0.2428641
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.5756818   -1.1961646    0.0448010
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.8432143   -1.5066635   -0.1797651
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.6496921   -1.0279277   -0.2714566
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0978740   -0.4679185    0.2721705
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.4183923   -0.9782533    0.1414687
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.1666031   -0.7282309    0.3950248
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.7901794   -1.2086497   -0.3717091
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.5945988   -1.0270362   -0.1621613
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.4175542   -0.9082684    0.0731601
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.2735696   -0.7967086    0.2495694
24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.5013494   -0.7434244   -0.2592743
24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.1408665   -0.3617339    0.0800009
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.8746715   -1.3433477   -0.4059953
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.5911563   -1.1406294   -0.0416833
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.2029839   -1.4647356   -0.9412322
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.4966382   -0.7525554   -0.2407210
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -1.1891032   -1.3819369   -0.9962696
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.4197381   -0.6073647   -0.2321115
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.8807897   -1.0642622   -0.6973172
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.4734749   -0.6590625   -0.2878873
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.6673593   -0.8257924   -0.5089263
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.4404154   -0.5750562   -0.3057746
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.7537079   -0.9931564   -0.5142593
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.2867560   -0.5377539   -0.0357581
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.4014194   -0.8623991    0.0595602
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.4333539   -0.7249980   -0.1417097
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.7256570   -0.8769784   -0.5743356
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.2734835   -0.4266031   -0.1203638
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.9691186   -1.1887277   -0.7495096
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.5866020   -0.7783604   -0.3948437
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -1.2350575   -1.3199467   -1.1501683
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6314273   -0.7165033   -0.5463512
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -1.0040325   -1.1154636   -0.8926015
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5363654   -0.6330541   -0.4396768
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -1.1702695   -1.2877652   -1.0527738
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.4087838   -0.5322393   -0.2853282
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.5981312   -0.6844875   -0.5117749
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0755017   -0.1681819    0.0171786


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.4458893   -1.6162562   -1.2755225
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.9366964   -1.2230890   -0.6503037
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.2702837   -1.6001172   -0.9404501
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -1.1220833   -1.5037131   -0.7404536
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -1.1990759   -1.3911633   -1.0069886
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -1.0122097   -1.2353119   -0.7891075
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -1.1811713   -1.4208400   -0.9415026
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -1.3080464   -1.6478632   -0.9682296
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                -1.5908556   -1.7788310   -1.4028803
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              NA                -2.4525567   -3.0397268   -1.8653866
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -1.7202305   -2.3261189   -1.1143421
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -1.8311108   -1.9304036   -1.7318180
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.4273499   -1.5515948   -1.3031050
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -1.1725901   -1.2741191   -1.0710611
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -1.2691714   -1.3637828   -1.1745601
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.9432562   -1.0074914   -0.8790209
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -1.5656314   -1.6760794   -1.4551835
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.1884121   -0.2315956   -0.1452287
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3260946   -1.3513570   -1.3008322
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.9271675   -1.0123871   -0.8419480
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.5066324   -1.5455409   -1.4677238
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.0387864   -1.0815545   -0.9960182
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -2.1478766   -2.1928872   -2.1028660
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -1.9424979   -2.0352216   -1.8497741
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.8319961   -1.0522324   -0.6117599
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.5631567   -0.8319712   -0.2943423
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.0433943   -1.3884372   -0.6983515
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.5278365   -0.8371932   -0.2184799
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.7265253   -0.9217761   -0.5312744
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.4431430   -0.7053783   -0.1809077
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.6793109   -0.9357009   -0.4229210
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0378740   -0.7099241    0.6341762
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.4851699   -0.6631927   -0.3071471
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -1.4030015   -1.7099405   -1.0960624
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.5123971   -1.4555882    0.4307940
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.8404522   -1.0343433   -0.6465612
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.7823750   -0.9362429   -0.6285072
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.7667290   -0.8894400   -0.6440180
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.7888204   -0.8951441   -0.6824968
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.3637733   -0.4206246   -0.3069220
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.7822563   -0.9459365   -0.6185761
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0908798   -0.1145468   -0.0672127
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4051203   -0.4435398   -0.3667008
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.5163444   -0.5926570   -0.4400318
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.8655611   -0.9153274   -0.8157947
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.5209603   -0.5737921   -0.4681286
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -1.2736234   -1.3460509   -1.2011960
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.4252610   -0.4868489   -0.3636731
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.5035115   -0.7394431   -0.2675800
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.4045840   -0.7737679   -0.0354001
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.8139103   -1.2350164   -0.3928041
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.4705769   -0.8342465   -0.1069074
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.3042854   -0.5845800   -0.0239908
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.1942697   -0.5079817    0.1194422
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.4656094   -0.7335326   -0.1976861
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.2813064   -0.6858561    0.1232433
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.2001336   -0.3281577   -0.0721095
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.7012486   -1.1249442   -0.2775531
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6539936   -0.8391897   -0.4687974
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.5908945   -0.7251236   -0.4566655
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.5159482   -0.6380261   -0.3938702
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.2625500   -0.3237139   -0.2013860
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.4772522   -0.6676058   -0.2868986
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0375795   -0.0656382   -0.0095207
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4178052   -0.5308349   -0.3047755
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.3960101   -0.4892400   -0.3027801
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.7373755   -0.7990009   -0.6757501
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4548715   -0.5124811   -0.3972619
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.9273900   -1.0378144   -0.8169657
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.3081104   -0.3666523   -0.2495685

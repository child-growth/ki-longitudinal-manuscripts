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
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm            4      13
Birth       ki1101329-Keneba           GAMBIA                         <48 cm             3      13
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm         6      13
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
![](/tmp/5ea4d6b9-7bf1-4e88-bb7e-fc869da67c6c/26495b9d-d2e0-439c-9e14-43f41d2f3675/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5ea4d6b9-7bf1-4e88-bb7e-fc869da67c6c/26495b9d-d2e0-439c-9e14-43f41d2f3675/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5ea4d6b9-7bf1-4e88-bb7e-fc869da67c6c/26495b9d-d2e0-439c-9e14-43f41d2f3675/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.3368059    0.2100097    0.4636020
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -1.9082548   -2.0488648   -1.7676449
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.6849991   -0.7713204   -0.5986777
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.2732743    0.0632166    0.4833320
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -2.0572848   -2.4419351   -1.6726345
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.8317393   -0.9841648   -0.6793137
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0666667   -0.1235118    0.2568452
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -2.1210000   -2.4586774   -1.7833226
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.8194444   -0.9860051   -0.6528838
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.2687500    0.0580716    0.4794284
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -1.6850000   -1.9901516   -1.3798484
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.7100000   -0.9522102   -0.4677898
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.2928705    0.1197461    0.4659950
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               NA                -1.7939552   -1.9185229   -1.6693874
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.6543824   -0.7219652   -0.5867995
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.4150162    0.2307849    0.5992474
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -1.8148042   -2.0656675   -1.5639408
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.6797659   -0.7739292   -0.5856026
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0539823   -0.1163642    0.2243288
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.4115410   -2.7311867   -2.0918953
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.8734755   -0.9715636   -0.7753874
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.3808553    0.0738645    0.6878462
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.9660376   -2.2115107   -1.7205644
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.4944901   -0.5888803   -0.4001000
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                 1.2682745    1.0879210    1.4486281
Birth       ki1000108-IRC              INDIA                          <48 cm               NA                -2.0817512   -2.2837265   -1.8797758
Birth       ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.5398584   -0.5964588   -0.4832580
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.6119167   -0.0069986    1.2308321
Birth       ki1000109-EE               PAKISTAN                       <48 cm               NA                -2.5811967   -2.7492402   -2.4131533
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.7901832   -0.8942017   -0.6861646
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.6718442    0.1586609    1.1850276
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               NA                -2.3482987   -2.6213812   -2.0752162
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.4424123   -0.6939139   -0.1909107
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.3996890    0.3309893    0.4683888
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -2.1268053   -2.1997711   -2.0538394
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.6633168   -0.6876314   -0.6390021
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.4931250    0.3751050    0.6111450
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -1.9662795   -2.0518856   -1.8806735
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.7138804   -0.7625497   -0.6652112
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.2820137    0.1889054    0.3751220
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.7727838   -1.8361548   -1.7094128
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.7361462   -0.7811954   -0.6910971
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.3551779    0.2727421    0.4376137
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.8535565   -1.9243471   -1.7827660
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.6838980   -0.7290571   -0.6387388
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.4697247    0.3792610    0.5601883
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -1.8590040   -1.9333423   -1.7846657
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.5661110   -0.6157400   -0.5164820
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 1.5159544    1.3831359    1.6487729
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               NA                -1.6656607   -1.7050773   -1.6262441
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.4295321   -0.4582370   -0.4008272
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.8268174    0.8040612    0.8495736
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.8402070   -1.8654582   -1.8149558
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4170683   -0.4264594   -0.4076772
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 1.0502073    0.9856239    1.1147907
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -1.7610867   -1.8961806   -1.6259929
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2867021   -0.3315901   -0.2418141
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.8385162    0.8042966    0.8727358
Birth       ki1135781-COHORTS          INDIA                          <48 cm               NA                -1.7324794   -1.7621688   -1.7027900
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.3394099   -0.3535636   -0.3252563
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.7906443    0.7561037    0.8251849
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -1.6573895   -1.7122398   -1.6025392
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.3396218   -0.3594339   -0.3198097
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 1.5720665    1.5176108    1.6265223
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -2.0556239   -2.0717750   -2.0394727
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.4027147   -0.4138708   -0.3915586
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.4357309    0.3568170    0.5146447
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -2.0570079   -2.0988419   -2.0151739
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.5882099   -0.6214794   -0.5549404
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.4058632   -0.6325138   -0.1792127
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -1.6893079   -1.8642211   -1.5143947
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -1.0775219   -1.2330938   -0.9219499
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.5365385    0.3078711    0.7652058
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.7259006   -1.2263520   -0.2254492
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.3224306   -0.8659695    0.2211082
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.4658333   -0.7214587   -0.2102080
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.9712963   -2.3236492   -1.6189433
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -1.5112222   -1.9292582   -1.0931863
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.1406250   -0.3527411    0.0714911
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.9272727   -1.3107187   -0.5438267
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.8650000   -1.4941733   -0.2358267
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.6340370   -0.8510481   -0.4170258
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                -1.8039420   -1.9819475   -1.6259365
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -1.1332585   -1.2988239   -0.9676931
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.7071808   -0.9975904   -0.4167713
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -1.8452261   -2.3334532   -1.3569990
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -1.0871917   -1.3734980   -0.8008853
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.6515116   -0.9122627   -0.3907606
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -1.9362946   -2.2254075   -1.6471818
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -1.2798585   -1.5051577   -1.0545593
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -1.3433294   -1.9973474   -0.6893114
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.5722997   -1.9521372   -1.1924622
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -1.1001244   -1.5333738   -0.6668750
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.7523920   -0.9653970   -0.5393870
6 months    ki1000108-IRC              INDIA                          <48 cm               NA                -1.8508497   -2.1194609   -1.5822386
6 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -1.2184006   -1.4189594   -1.0178418
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.7391932   -1.0486526   -0.4297339
6 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                -2.5013398   -2.6774859   -2.3251937
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -1.6226552   -1.8503649   -1.3949455
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -1.6523412   -2.6435125   -0.6611698
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               NA                -2.3690879   -3.2495137   -1.4886621
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -1.3342876   -2.6114695   -0.0571057
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.5625840   -0.7535284   -0.3716396
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -1.8831761   -1.9446789   -1.8216733
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.9760545   -1.0708345   -0.8812745
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6319270   -0.8081739   -0.4556800
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -2.0192983   -2.1557606   -1.8828360
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.2679927   -1.3773990   -1.1585865
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.3248890   -0.4597796   -0.1899985
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.7161168   -1.8208120   -1.6114216
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.9961688   -1.0878838   -0.9044538
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.4082879   -0.5175924   -0.2989834
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.7526772   -1.8582968   -1.6470576
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -1.1296233   -1.2294780   -1.0297685
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.5394461   -0.6174717   -0.4614204
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -1.4981557   -1.6259848   -1.3703266
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -1.1388934   -1.2263935   -1.0513934
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.5669175   -0.7369926   -0.3968423
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -1.7515624   -1.8519454   -1.6511793
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1005884   -1.2126727   -0.9885042
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.1983416    0.0982216    0.2984617
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                -1.2290061   -1.3736596   -1.0843526
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.7501378   -0.9190558   -0.5812198
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4624524   -0.5065038   -0.4184010
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.3065064   -1.3522896   -1.2607231
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.8277009   -0.8670873   -0.7883146
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -1.2305600   -1.3212641   -1.1398559
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -2.7522562   -2.9045718   -2.5999406
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -2.0503964   -2.1779648   -1.9228279
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.1508374   -0.2041762   -0.0974986
6 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -1.6148431   -1.6587859   -1.5709003
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.8080289   -0.8477746   -0.7682832
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.6204609   -0.6827609   -0.5581609
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -1.8366204   -1.9165195   -1.7567214
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -1.1873118   -1.2475340   -1.1270896
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.6070010   -0.6576102   -0.5563919
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -1.6962009   -1.7195314   -1.6728703
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.7904224   -0.8231256   -0.7577192
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.9214579   -0.9941319   -0.8487839
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -1.7638306   -1.8225394   -1.7051218
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.0172058   -1.0864188   -0.9479929
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.5507359   -1.8257308   -1.2757409
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -2.3960689   -2.5928460   -2.1992918
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -1.8412019   -2.0272124   -1.6551913
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.3150476   -0.1439797    0.7740749
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.6306973   -1.3016363    0.0402417
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.2180535   -0.9849394    0.5488324
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.3825000   -1.7660213   -0.9989787
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -2.5138889   -2.9435277   -2.0842500
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -2.1410000   -2.4856619   -1.7963381
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -1.0575000   -1.3098335   -0.8051665
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -1.6331818   -2.2000387   -1.0663249
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -1.9007143   -2.5143042   -1.2871243
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -1.3938384   -1.7001985   -1.0874784
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -2.0779980   -2.2795750   -1.8764209
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -1.5330588   -1.7252616   -1.3408559
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -1.4377166   -1.7924154   -1.0830179
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -1.8059745   -2.2417520   -1.3701970
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -1.5789672   -1.9989954   -1.1589389
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -1.9588865   -2.2455116   -1.6722614
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.7865770   -3.1022135   -2.4709404
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -2.6043824   -2.9123663   -2.2963985
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -2.4727008   -2.9180262   -2.0273753
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -2.5982417   -2.8151563   -2.3813271
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -2.4980754   -2.7791667   -2.2169842
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -1.5999290   -1.7613863   -1.4384716
24 months   ki1000108-IRC              INDIA                          <48 cm               NA                -2.1022045   -2.2829098   -1.9214993
24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -1.7286714   -1.8795033   -1.5778396
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -1.8224336   -2.2901610   -1.3547063
24 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                -2.8027213   -3.0178208   -2.5876218
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -2.4629435   -2.8127253   -2.1131617
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.5894057   -1.8011647   -1.3776468
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -2.7749575   -2.9310486   -2.6188665
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -2.0702595   -2.2168108   -1.9237083
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -1.0203121   -1.1677927   -0.8728315
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -2.1913688   -2.3183074   -2.0644302
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -1.4281358   -1.5474022   -1.3088694
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.9321075   -1.0571650   -0.8070499
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.8063511   -1.9409435   -1.6717586
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -1.4059617   -1.5442949   -1.2676284
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -1.2952258   -1.3811521   -1.2092995
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -1.9576605   -2.0892513   -1.8260698
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -1.7368307   -1.8419848   -1.6316766
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -1.4140082   -1.6292776   -1.1987388
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -2.1581258   -2.2727586   -2.0434930
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.6920520   -1.8309715   -1.5531325
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0979897   -0.4035525    0.2075730
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                -0.4583738   -0.9176049    0.0008572
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.4981600   -0.8024707   -0.1938493
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1890776   -1.3134002   -1.0647549
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.9043683   -1.9913949   -1.8173417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.4618107   -1.5513724   -1.3722490
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -2.5382750   -2.6535629   -2.4229871
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -3.5449591   -3.7305443   -3.3593740
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -3.1455337   -3.3015618   -2.9895057
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.3968379   -1.4650744   -1.3286015
24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                -2.6108427   -2.6620113   -2.5596741
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -2.0155624   -2.0668593   -1.9642655
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.9597309   -2.0294889   -1.8899730
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -2.9622545   -3.0497096   -2.8747994
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -2.4964806   -2.5634074   -2.4295538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -1.4808234   -1.5507100   -1.4109368
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -2.2860660   -2.3174247   -2.2547072
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -1.6061356   -1.6495057   -1.5627655
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -1.4768637   -1.5452489   -1.4084785
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -2.0545571   -2.1087381   -2.0003760
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.5423852   -1.6079292   -1.4768411


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
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5002724   -0.5208163   -0.4797285
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1729576   -1.2009629   -1.1449523
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2093365   -1.3339992   -1.0846738
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0564407   -0.1984700    0.3113513
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.5092276   -1.7906712   -1.2277841
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.6684615   -0.9484552   -0.3884679
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.2982403   -1.4193221   -1.1771585
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3330274   -1.3561002   -1.3099546
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3464316   -1.3887462   -1.3041170
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -2.0010428   -2.1326113   -1.8694743
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0882143   -0.4282438    0.2518152
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -2.1964103   -2.4711826   -1.9216379
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.5280769   -1.8563546   -1.1997992
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7564687   -1.8887917   -1.6241458
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.5878571   -1.8189768   -1.3567375
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0186011   -2.0462424   -1.9909598
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7719162   -1.8104910   -1.7333415


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -2.2450607   -2.4351114   -2.0550100
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -1.0218049   -1.1750122   -0.8685977
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -2.3305591   -2.7683142   -1.8928040
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -1.1050136   -1.3768579   -0.8331692
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -2.1876667   -2.5752152   -1.8001181
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.8861111   -1.1389160   -0.6333062
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -1.9537500   -2.3245638   -1.5829362
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.9787500   -1.2997658   -0.6577342
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -2.0868257   -2.2985705   -1.8750809
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.9472529   -1.1323367   -0.7621692
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -2.2298203   -2.5443544   -1.9152863
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -1.0947821   -1.3029484   -0.8866157
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -2.4655233   -2.8280935   -2.1029531
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.9274578   -1.1243206   -0.7305950
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -2.3468929   -2.7410829   -1.9527029
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.8753455   -1.1981488   -0.5525422
Birth       ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -3.3500257   -3.6207955   -3.0792559
Birth       ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -1.8081329   -1.9967329   -1.6195330
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -3.1931135   -3.8335993   -2.5526277
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -1.4020999   -2.0288045   -0.7753953
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm           -3.0201429   -3.6035938   -2.4366921
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -1.1142565   -1.6835476   -0.5449655
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -2.5264943   -2.6040900   -2.4488987
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -1.0630058   -1.1391601   -0.9868515
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -2.4594046   -2.6044535   -2.3143557
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -1.2070055   -1.3340977   -1.0799133
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -2.0547975   -2.1671931   -1.9424019
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -1.0181599   -1.1211944   -0.9151254
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -2.2087344   -2.3171807   -2.1002882
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -1.0390759   -1.1327456   -0.9454061
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -2.3287287   -2.4458041   -2.2116533
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -1.0358357   -1.1382076   -0.9334638
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -3.1816151   -3.3283596   -3.0348706
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -1.9454865   -2.0771597   -1.8138133
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -2.6670244   -2.7008853   -2.6331635
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -1.2438857   -1.2683275   -1.2194439
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -2.8112941   -2.9622932   -2.6602950
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -1.3369094   -1.4154020   -1.2584169
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -2.5709956   -2.6161376   -2.5258536
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -1.1779261   -1.2146116   -1.1412407
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -2.4480338   -2.5126324   -2.3834352
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -1.1302662   -1.1698333   -1.0906990
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -3.6276904   -3.6843862   -3.5709946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -1.9747812   -2.0296285   -1.9199339
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -2.4927388   -2.5813455   -2.4041321
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -1.0239408   -1.1114525   -0.9364290
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -1.2834447   -1.5684071   -0.9984823
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.6716586   -0.9469290   -0.3963883
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -1.2624391   -1.8131634   -0.7117147
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.8589691   -1.4625534   -0.2553848
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -1.5054630   -1.9407754   -1.0701505
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -1.0453889   -1.5353872   -0.5553906
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.7866477   -1.2248532   -0.3484422
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.7243750   -1.3883421   -0.0604079
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -1.1699051   -1.4494288   -0.8903814
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.4992216   -0.7707649   -0.2276782
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -1.1380453   -1.7111300   -0.5649605
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.3800108   -0.7882612    0.0282395
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -1.2847830   -1.6742056   -0.8953604
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.6283469   -0.9731752   -0.2835185
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.2289703   -0.9896477    0.5317071
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2432050   -0.5450112    1.0314212
6 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -1.0984578   -1.4410081   -0.7559075
6 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.4660086   -0.7581025   -0.1739147
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -1.7621465   -2.1188056   -1.4054875
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.8834620   -1.2676704   -0.4992536
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm           -0.7167467   -2.0403477    0.6068543
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.3180536   -1.3195291    1.9556363
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -1.3205921   -1.5476939   -1.0934903
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.4134705   -0.6609947   -0.1659463
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.3873714   -1.6101605   -1.1645823
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.6360658   -0.8434947   -0.4286368
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -1.3912278   -1.5618601   -1.2205954
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.6712797   -0.8343727   -0.5081867
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -1.3443893   -1.4967765   -1.1920021
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.7213354   -0.8693291   -0.5733416
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.9587096   -1.1083716   -0.8090476
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.5994474   -0.7166674   -0.4822274
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -1.1846449   -1.3820458   -0.9872440
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.5336710   -0.7374421   -0.3298998
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -1.4273478   -1.5727046   -1.2819909
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.9484794   -1.0801674   -0.8167915
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.8440539   -0.9075648   -0.7805431
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.3652485   -0.4242609   -0.3062361
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -1.5216962   -1.6988899   -1.3445026
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.8198364   -0.9757136   -0.6639592
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -1.4640057   -1.5331818   -1.3948295
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6571915   -0.7237164   -0.5906666
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -1.2161595   -1.3173676   -1.1149514
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5668509   -0.6534279   -0.4802739
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -1.0891998   -1.1418359   -1.0365638
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.1834214   -0.2390704   -0.1277723
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.8423727   -0.9354667   -0.7492787
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0957479   -0.1931170    0.0016212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.8453330   -1.1827475   -0.5079185
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.2904660   -0.6228646    0.0419326
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.9457450   -1.7582118   -0.1332781
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.5331011   -1.4391297    0.3729274
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -1.1313889   -1.7073039   -0.5554738
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.7585000   -1.2741359   -0.2428641
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.5756818   -1.1961646    0.0448010
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.8432143   -1.5066635   -0.1797651
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.6841595   -1.0532166   -0.3151024
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.1392203   -0.5012507    0.2228100
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.3682579   -0.9311082    0.1945924
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.1412506   -0.6914346    0.4089335
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.8276905   -1.2589094   -0.3964715
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.6454959   -1.0672670   -0.2237248
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.1255409   -0.6172322    0.3661503
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0253746   -0.5556200    0.5048707
24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.5022756   -0.7449723   -0.2595789
24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.1287425   -0.3499369    0.0924520
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.9802877   -1.4949512   -0.4656242
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.6405099   -1.2259256   -0.0550942
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.1855518   -1.4488385   -0.9222650
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.4808538   -0.7385392   -0.2231684
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -1.1710567   -1.3655801   -0.9765333
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.4078237   -0.5971376   -0.2185097
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.8742436   -1.0580456   -0.6904416
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.4738542   -0.6605947   -0.2871137
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.6624347   -0.8186319   -0.5062376
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.4416049   -0.5759944   -0.3072154
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.7441176   -0.9879851   -0.5002501
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.2780438   -0.5342819   -0.0218057
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.3603841   -0.8507295    0.1299613
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.4001702   -0.6555473   -0.1447931
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.7152907   -0.8669319   -0.5636495
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.2727331   -0.4255701   -0.1198962
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -1.0066842   -1.2249369   -0.7884314
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.6072588   -0.8009776   -0.4135399
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -1.2140048   -1.2993787   -1.1286308
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6187245   -0.7041277   -0.5333214
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -1.0025236   -1.1143801   -0.8906671
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5367497   -0.6334161   -0.4400833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.8052426   -0.8789722   -0.7315130
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.1253122   -0.2078563   -0.0427682
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.5776934   -0.6630071   -0.4923797
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0655215   -0.1559451    0.0249021


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.4549011   -1.6248597   -1.2849425
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.9492743   -1.2355093   -0.6630393
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.2702837   -1.6001172   -0.9404501
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -1.1220833   -1.5037131   -0.7404536
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -1.1756602   -1.3607024   -0.9906181
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -1.0467235   -1.2770052   -0.8164418
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -1.2095823   -1.4525794   -0.9665852
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -1.3420510   -1.6803310   -1.0037710
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                -1.5763158   -1.7624953   -1.3901362
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              NA                -2.4727917   -3.0760838   -1.8694997
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -1.6518442   -2.2142777   -1.0894108
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -1.8311108   -1.9304036   -1.7318180
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.4241448   -1.5485883   -1.2997012
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -1.1671158   -1.2689409   -1.0652907
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -1.2646724   -1.3595739   -1.1697709
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -1.5548827   -1.6657840   -1.4439814
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.1890098   -0.2320789   -0.1459408
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3270898   -1.3523687   -1.3018110
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.9204773   -1.0056372   -0.8353174
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.5084123   -1.5472853   -1.4695393
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.0396935   -1.0825433   -0.9968437
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -2.7450241   -2.7963447   -2.6937035
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -1.9590217   -2.0450223   -1.8730212
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.8034732   -1.0225743   -0.5843722
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.4800978   -0.7463420   -0.2138536
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.0433943   -1.3884372   -0.6983515
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.5278365   -0.8371932   -0.2184799
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.6642034   -0.8661416   -0.4622651
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.3913317   -0.6590080   -0.1236554
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.6790110   -0.9286909   -0.4293311
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0479608   -0.5568318    0.6527534
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.4739662   -0.6502463   -0.2976861
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -1.3872686   -1.7057883   -1.0687489
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.0554039   -0.9557055    0.8448977
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.8404522   -1.0343433   -0.6465612
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.7773475   -0.9352007   -0.6194943
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.7668025   -0.8903177   -0.6432872
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.7903904   -0.8988378   -0.6819430
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.3639640   -0.4209654   -0.3069626
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.7841364   -0.9426577   -0.6256151
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0913430   -0.1148024   -0.0678836
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4046707   -0.4427447   -0.3665967
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.5247453   -0.6012951   -0.4481954
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.8465236   -0.8965896   -0.7964576
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.5224528   -0.5752349   -0.4696707
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.7260264   -0.7703412   -0.6817116
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.4249737   -0.4873235   -0.3626239
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.4503069   -0.7037158   -0.1968980
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.4032619   -0.7820144   -0.0245094
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.8139103   -1.2350164   -0.3928041
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.4705769   -0.8342465   -0.1069074
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.3626303   -0.6349666   -0.0902940
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.1501405   -0.4589752    0.1586941
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.5948635   -0.8701142   -0.3196129
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0073621   -0.4177026    0.4029784
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.1883574   -0.3166156   -0.0600991
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.8099563   -1.2787610   -0.3411516
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6374562   -0.8244836   -0.4504288
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.5821100   -0.7171602   -0.4470598
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.5091571   -0.6317979   -0.3865164
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.2612075   -0.3222710   -0.2001441
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.4724805   -0.6672616   -0.2776994
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0334151   -0.0592677   -0.0075625
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4141469   -0.5270140   -0.3012799
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.4044214   -0.4971420   -0.3117009
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.7224853   -0.7843449   -0.6606257
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4560021   -0.5135829   -0.3984213
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.5377777   -0.6021874   -0.4733680
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.2950525   -0.3524866   -0.2376185

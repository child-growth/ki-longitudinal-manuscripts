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

agecat      studyid                    country                        birthlen      n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           39     231  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm           113     231  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        79     231  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm           30      65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm            17      65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        18      65  haz              
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm            9      47  haz              
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm            20      47  haz              
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm        18      47  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm            12      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      27  haz              
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm           52     233  haz              
Birth       ki0047075b-MAL-ED          PERU                           <48 cm            88     233  haz              
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm        93     233  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           44     123  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            33     123  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        46     123  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     125  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            42     125  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     125  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            38      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40      92  haz              
Birth       ki1000108-IRC              INDIA                          >=50 cm          142     388  haz              
Birth       ki1000108-IRC              INDIA                          <48 cm           108     388  haz              
Birth       ki1000108-IRC              INDIA                          [48-50) cm       138     388  haz              
Birth       ki1000109-EE               PAKISTAN                       >=50 cm           24     240  haz              
Birth       ki1000109-EE               PAKISTAN                       <48 cm           162     240  haz              
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm        54     240  haz              
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm           12      42  haz              
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm            16      42  haz              
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm        14      42  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          116    1252  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm           738    1252  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       398    1252  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          139     608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm           240     608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       229     608  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          121     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm           196     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       222     539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          161     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           287     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       284     732  haz              
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm          763    1543  haz              
Birth       ki1101329-Keneba           GAMBIA                         <48 cm           285    1543  haz              
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm       495    1543  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm          115     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm           373     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       208     696  haz              
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            2      26  haz              
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm            16      26  haz              
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         8      26  haz              
Birth       ki1114097-CONTENT          PERU                           >=50 cm            1       2  haz              
Birth       ki1114097-CONTENT          PERU                           <48 cm             1       2  haz              
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         0       2  haz              
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm        12623   13890  haz              
Birth       ki1119695-PROBIT           BELARUS                        <48 cm           147   13890  haz              
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm      1120   13890  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         4125   13875  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          4409   13875  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      5341   13875  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm          437     852  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm           163     852  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm       252     852  haz              
Birth       ki1135781-COHORTS          INDIA                          >=50 cm         1426    6640  haz              
Birth       ki1135781-COHORTS          INDIA                          <48 cm          2774    6640  haz              
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm      2440    6640  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm         1129    3050  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm           762    3050  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1159    3050  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1258   22455  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         16109   22455  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      5088   22455  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          178    2823  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1913    2823  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       732    2823  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           39     211  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm            98     211  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        74     211  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm           28      59  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm            15      59  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        16      59  haz              
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            8      41  haz              
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm            18      41  haz              
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      41  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  haz              
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm           48     215  haz              
6 months    ki0047075b-MAL-ED          PERU                           <48 cm            84     215  haz              
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm        83     215  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           34      93  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21      93  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        38      93  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     118  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            39     118  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        48     118  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           16     104  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            48     104  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     104  haz              
6 months    ki1000108-IRC              INDIA                          >=50 cm          142     389  haz              
6 months    ki1000108-IRC              INDIA                          <48 cm           109     389  haz              
6 months    ki1000108-IRC              INDIA                          [48-50) cm       138     389  haz              
6 months    ki1000109-EE               PAKISTAN                       >=50 cm           24     236  haz              
6 months    ki1000109-EE               PAKISTAN                       <48 cm           160     236  haz              
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm        52     236  haz              
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm           10      34  haz              
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm            13      34  haz              
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm        11      34  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          196    1324  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           709    1324  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       419    1324  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          120     518  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm           199     518  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       199     518  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          143     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           213     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       248     604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          164     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           270     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       281     715  haz              
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm          677    1347  haz              
6 months    ki1101329-Keneba           GAMBIA                         <48 cm           234    1347  haz              
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm       436    1347  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm           96     563  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm           296     563  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       171     563  haz              
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            0      12  haz              
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm             6      12  haz              
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         6      12  haz              
6 months    ki1114097-CONTENT          PERU                           >=50 cm            1       2  haz              
6 months    ki1114097-CONTENT          PERU                           <48 cm             1       2  haz              
6 months    ki1114097-CONTENT          PERU                           [48-50) cm         0       2  haz              
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm        14296   15761  haz              
6 months    ki1119695-PROBIT           BELARUS                        <48 cm           172   15761  haz              
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm      1293   15761  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2538    8577  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2680    8577  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3359    8577  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          351     688  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm           133     688  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm       204     688  haz              
6 months    ki1135781-COHORTS          INDIA                          >=50 cm         1330    6135  haz              
6 months    ki1135781-COHORTS          INDIA                          <48 cm          2530    6135  haz              
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm      2275    6135  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm          990    2701  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm           677    2701  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1034    2701  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          827   13924  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          9817   13924  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      3280   13924  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1101    4020  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1923    4020  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       996    4020  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           39     187  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            80     187  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        68     187  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           20      42  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            10      42  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        12      42  haz              
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6      39  haz              
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      39  haz              
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      39  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  haz              
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm           34     160  haz              
24 months   ki0047075b-MAL-ED          PERU                           <48 cm            67     160  haz              
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        59     160  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           32      91  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21      91  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        38      91  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     104  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     104  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        41     104  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           16     106  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            50     106  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     106  haz              
24 months   ki1000108-IRC              INDIA                          >=50 cm          142     390  haz              
24 months   ki1000108-IRC              INDIA                          <48 cm           110     390  haz              
24 months   ki1000108-IRC              INDIA                          [48-50) cm       138     390  haz              
24 months   ki1000109-EE               PAKISTAN                       >=50 cm           10     106  haz              
24 months   ki1000109-EE               PAKISTAN                       <48 cm            71     106  haz              
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm        25     106  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           99     414  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           160     414  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       155     414  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          139     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           206     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       233     578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          128     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           200     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       186     514  haz              
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          535    1065  haz              
24 months   ki1101329-Keneba           GAMBIA                         <48 cm           196    1065  haz              
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       334    1065  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           84     487  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           249     487  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       154     487  haz              
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0      11  haz              
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             5      11  haz              
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         6      11  haz              
24 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2  haz              
24 months   ki1114097-CONTENT          PERU                           <48 cm             1       2  haz              
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2  haz              
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm         3683    4035  haz              
24 months   ki1119695-PROBIT           BELARUS                        <48 cm            44    4035  haz              
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm       308    4035  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          312    1608  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           711    1608  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       585    1608  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          263     560  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           120     560  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       177     560  haz              
24 months   ki1135781-COHORTS          INDIA                          >=50 cm         1047    4758  haz              
24 months   ki1135781-COHORTS          INDIA                          <48 cm          1934    4758  haz              
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm      1777    4758  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm          897    2442  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm           604    2442  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm       941    2442  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          404    7184  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5067    7184  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      1713    7184  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1077    3987  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1944    3987  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       966    3987  haz              


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
![](/tmp/04ebdda1-85ea-4b62-b7b0-6c600ba1b68a/ad95f5ec-b8a8-4574-b35f-a37b24c41c50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/04ebdda1-85ea-4b62-b7b0-6c600ba1b68a/ad95f5ec-b8a8-4574-b35f-a37b24c41c50/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/04ebdda1-85ea-4b62-b7b0-6c600ba1b68a/ad95f5ec-b8a8-4574-b35f-a37b24c41c50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.3448863    0.2193822    0.4703903
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -1.8985882   -2.0389089   -1.7582675
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.6692928   -0.7562098   -0.5823758
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.2542029    0.0436895    0.4647162
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -2.1174409   -2.4944816   -1.7404001
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.9718126   -1.1119967   -0.8316286
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0666667   -0.1235118    0.2568452
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -2.1210000   -2.4586774   -1.7833226
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.8194444   -0.9860051   -0.6528838
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.2687500    0.0580716    0.4794284
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -1.6850000   -1.9901516   -1.3798484
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.7100000   -0.9522102   -0.4677898
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.3163515    0.1454977    0.4872053
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               NA                -1.7718502   -1.9001323   -1.6435682
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.6592963   -0.7310762   -0.5875164
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.3626106    0.1800163    0.5452050
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -1.8551005   -2.1104496   -1.5997514
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.7011190   -0.7931042   -0.6091339
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0177641   -0.1565063    0.1920346
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.4235240   -2.7407339   -2.1063140
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.8880503   -0.9858706   -0.7902301
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.4298545    0.0907102    0.7689989
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.9408619   -2.1889690   -1.6927548
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.4665238   -0.5619522   -0.3710955
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                 1.2635823    1.0828595    1.4443052
Birth       ki1000108-IRC              INDIA                          <48 cm               NA                -2.0963419   -2.2996612   -1.8930227
Birth       ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.5492940   -0.6055729   -0.4930152
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.5459960   -0.0626185    1.1546105
Birth       ki1000109-EE               PAKISTAN                       <48 cm               NA                -2.5850688   -2.7542834   -2.4158541
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.7981010   -0.9038603   -0.6923416
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.4155249   -0.0858092    0.9168590
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               NA                -2.5049709   -2.7628515   -2.2470904
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.7508621   -1.0004114   -0.5013129
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.3996890    0.3309893    0.4683888
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -2.1268053   -2.1997711   -2.0538394
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.6633168   -0.6876314   -0.6390021
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.4856721    0.3678950    0.6034492
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -1.9637979   -2.0497310   -1.8778649
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.7119247   -0.7602863   -0.6635631
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.2895258    0.1950186    0.3840331
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.7732894   -1.8370600   -1.7095189
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.7363325   -0.7817598   -0.6909053
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.3587879    0.2777724    0.4398035
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.8469538   -1.9174102   -1.7764974
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.6812876   -0.7263651   -0.6362101
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.9770166    0.9225195    1.0315136
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               NA                -1.7908725   -1.9087055   -1.6730395
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.3607083   -0.3921985   -0.3292181
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.4761039    0.3890230    0.5631848
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -1.8547551   -1.9283261   -1.7811841
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.5704522   -0.6199394   -0.5209650
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 1.5152230    1.3827300    1.6477161
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               NA                -1.6574781   -1.6944166   -1.6205397
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.4251800   -0.4573407   -0.3930193
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.8274250    0.8046848    0.8501652
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.8403749   -1.8656270   -1.8151227
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4170664   -0.4264517   -0.4076812
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 1.0587730    0.9945505    1.1229956
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -1.6898304   -1.8227625   -1.5568984
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2910189   -0.3350594   -0.2469784
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.8357564    0.8015135    0.8699993
Birth       ki1135781-COHORTS          INDIA                          <48 cm               NA                -1.7322078   -1.7616618   -1.7027538
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.3377639   -0.3518752   -0.3236525
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.7886280    0.7540847    0.8231713
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -1.6519286   -1.7061152   -1.5977421
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.3400837   -0.3598765   -0.3202909
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.5731554    0.5307387    0.6155720
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -2.0984104   -2.1147301   -2.0820907
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.4854583   -0.4963375   -0.4745791
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.4298812    0.3467159    0.5130465
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -2.0608613   -2.1025241   -2.0191985
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.5877021   -0.6200590   -0.5553451
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.4033895   -0.6206075   -0.1861714
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -1.6914530   -1.8631908   -1.5197151
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -1.0598877   -1.2142396   -0.9055358
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.5918750    0.3601945    0.8235555
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.5539268   -1.0336229   -0.0742308
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0997951   -0.6852455    0.4856553
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.4658333   -0.7214587   -0.2102080
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.9712963   -2.3236492   -1.6189433
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -1.5112222   -1.9292582   -1.0931863
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.1406250   -0.3527411    0.0714911
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.9272727   -1.3107187   -0.5438267
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.8650000   -1.4941733   -0.2358267
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.5950749   -0.8156777   -0.3744721
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                -1.7774931   -1.9672009   -1.5877854
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -1.1462198   -1.3284406   -0.9639990
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.6550693   -0.9437638   -0.3663749
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -1.8050643   -2.3148274   -1.2953012
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -1.0938101   -1.3799752   -0.8076451
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.6981650   -0.9710109   -0.4253190
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -1.9551358   -2.2464176   -1.6638540
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -1.3165558   -1.5409996   -1.0921119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -1.4505262   -2.2152646   -0.6857877
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.5666398   -1.9352336   -1.1980460
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -1.1114504   -1.5334060   -0.6894947
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.7518154   -0.9625126   -0.5411182
6 months    ki1000108-IRC              INDIA                          <48 cm               NA                -1.8839685   -2.1570364   -1.6109006
6 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -1.2227316   -1.4258369   -1.0196263
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.7755828   -1.0839909   -0.4671748
6 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                -2.4930275   -2.6687282   -2.3173268
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -1.6172552   -1.8422458   -1.3922647
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -1.4787506   -2.4912264   -0.4662747
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               NA                -2.2354906   -3.1974419   -1.2735394
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -1.2035643   -2.5777108    0.1705822
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.5625840   -0.7535284   -0.3716396
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -1.8831761   -1.9446789   -1.8216733
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.9760545   -1.0708345   -0.8812745
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6371135   -0.8144100   -0.4598170
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -2.0160757   -2.1530631   -1.8790882
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.2738331   -1.3833532   -1.1643130
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.3294367   -0.4633238   -0.1955496
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.7223448   -1.8273949   -1.6172948
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.9985594   -1.0905630   -0.9065557
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.4083184   -0.5144886   -0.3021482
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.7499009   -1.8547030   -1.6450989
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -1.1278055   -1.2275442   -1.0280669
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.5423789   -0.6202489   -0.4645090
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -1.5100028   -1.6384554   -1.3815501
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -1.1403846   -1.2271887   -1.0535805
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.5611683   -0.7335509   -0.3887856
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -1.7520623   -1.8521855   -1.6519391
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1008980   -1.2124617   -0.9893343
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.1982575    0.0982434    0.2982717
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                -1.2339976   -1.3785187   -1.0894765
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.7481828   -0.9175217   -0.5788439
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4603478   -0.5045863   -0.4161093
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.3040039   -1.3502387   -1.2577692
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.8286670   -0.8681921   -0.7891419
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -1.2407281   -1.3326022   -1.1488539
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -2.6733653   -2.8220060   -2.5247246
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -2.0293924   -2.1560968   -1.9026880
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.1378651   -0.1910596   -0.0846705
6 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -1.6192224   -1.6629260   -1.5755187
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.8084145   -0.8479807   -0.7688484
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.6215630   -0.6837224   -0.5594036
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -1.8370524   -1.9167561   -1.7573488
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -1.1861098   -1.2460842   -1.1261354
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.0586033   -0.1384390    0.0212324
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -1.6570498   -1.6812859   -1.6328137
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.6596176   -0.6945294   -0.6247058
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.9184519   -0.9901967   -0.8467071
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -1.7662865   -1.8236151   -1.7089579
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.0202895   -1.0889323   -0.9516467
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.4665124   -1.7371189   -1.1959059
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -2.3810865   -2.5823486   -2.1798244
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -1.8287855   -2.0166283   -1.6409426
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.2789157   -0.1833553    0.7411867
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.7289835   -1.3546023   -0.1033647
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.3078081   -0.9887269    0.3731108
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.3825000   -1.7660213   -0.9989787
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -2.5138889   -2.9435277   -2.0842500
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -2.1410000   -2.4856619   -1.7963381
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -1.0575000   -1.3098335   -0.8051665
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -1.6331818   -2.2000387   -1.0663249
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -1.9007143   -2.5143042   -1.2871243
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -1.4574022   -1.8005934   -1.1142111
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -2.0773574   -2.2906121   -1.8641027
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -1.5394432   -1.7364212   -1.3424651
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -1.3712146   -1.7248721   -1.0175570
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -1.7023324   -2.1419634   -1.2627014
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -1.5991597   -2.0130991   -1.1852203
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -2.1325781   -2.4129831   -1.8521730
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.9427148   -3.2616528   -2.6237767
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -2.6763898   -2.9894049   -2.3633747
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -2.1308894   -2.5760216   -1.6857573
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -2.5840910   -2.8004130   -2.3677690
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -2.4388077   -2.7126206   -2.1649948
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -1.6064041   -1.7687014   -1.4441068
24 months   ki1000108-IRC              INDIA                          <48 cm               NA                -2.1076523   -2.2910273   -1.9242773
24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -1.7514304   -1.9035352   -1.5993255
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -1.7565372   -2.1368424   -1.3762320
24 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                -2.8055174   -3.0201508   -2.5908841
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -2.4735643   -2.8202798   -2.1268488
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.5790074   -1.7881098   -1.3699051
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -2.7746232   -2.9308640   -2.6183825
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -2.0745782   -2.2205169   -1.9286394
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -1.0054219   -1.1538314   -0.8570124
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -2.1907046   -2.3173564   -2.0640528
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -1.4337805   -1.5519382   -1.3156227
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.9397718   -1.0644010   -0.8151425
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.8018816   -1.9368614   -1.6669018
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -1.4027717   -1.5405345   -1.2650089
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -1.2960487   -1.3820214   -1.2100760
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -1.9597630   -2.0917056   -1.8278204
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -1.7374954   -1.8420742   -1.6329166
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -1.4140982   -1.6222795   -1.2059168
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -2.1637070   -2.2780357   -2.0493784
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.6976963   -1.8352408   -1.5601517
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0996744   -0.4066450    0.2072963
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                -0.4753948   -0.9331774   -0.0176122
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.4763657   -0.7914067   -0.1613246
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1806436   -1.3054164   -1.0558708
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.9108339   -1.9977501   -1.8239178
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.4598745   -1.5493473   -1.3704016
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -2.5447907   -2.6603011   -2.4292803
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -3.5268892   -3.7091553   -3.3446232
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -3.1409097   -3.2917203   -2.9900992
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.3815826   -1.4496511   -1.3135141
24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                -2.6156048   -2.6664578   -2.5647518
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -2.0132795   -2.0641361   -1.9624229
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.9604835   -2.0303788   -1.8905883
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -2.9643238   -3.0511125   -2.8775351
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -2.4973734   -2.5642347   -2.4305120
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -1.1275806   -1.2466348   -1.0085265
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -2.2809209   -2.3132097   -2.2486321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -1.5165000   -1.5618432   -1.4711569
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -1.4652147   -1.5342477   -1.3961818
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -2.0624507   -2.1168789   -2.0080225
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.5375767   -1.6043077   -1.4708458


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -2.2434745   -2.4323687   -2.0545803
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -1.0141791   -1.1674707   -0.8608875
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -2.3716438   -2.8022826   -1.9410049
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -1.2260155   -1.4860874   -0.9659436
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -2.1876667   -2.5752152   -1.8001181
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.8861111   -1.1389160   -0.6333062
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -1.9537500   -2.3245638   -1.5829362
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.9787500   -1.2997658   -0.6577342
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -2.0882017   -2.3028274   -1.8735759
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.9756477   -1.1600362   -0.7912592
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -2.2177111   -2.5346079   -1.9008144
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -1.0637297   -1.2627751   -0.8646843
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -2.4412881   -2.8043112   -2.0782650
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.9058145   -1.1060174   -0.7056116
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -2.3707164   -2.7908153   -1.9506176
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.8963784   -1.2502349   -0.5425219
Birth       ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -3.3599242   -3.6317706   -3.0880779
Birth       ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -1.8128764   -2.0021765   -1.6235762
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -3.1310648   -3.7614648   -2.5006649
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -1.3440970   -1.9600539   -0.7281401
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm           -2.9204958   -3.4909755   -2.3500161
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -1.1663870   -1.7364962   -0.5962779
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -2.5264943   -2.6040900   -2.4488987
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -1.0630058   -1.1391601   -0.9868515
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -2.4494701   -2.5949574   -2.3039827
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -1.1975969   -1.3245791   -1.0706147
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -2.0628153   -2.1766522   -1.9489783
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -1.0258584   -1.1302108   -0.9215059
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -2.2057417   -2.3130092   -2.0984743
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -1.0400755   -1.1327658   -0.9473853
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -2.7678891   -2.8980648   -2.6377133
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -1.3377249   -1.4002105   -1.2752392
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -2.3308590   -2.4453879   -2.2163301
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -1.0465561   -1.1451252   -0.9479870
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -3.1727012   -3.3153712   -3.0300311
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -1.9404030   -2.0704697   -1.8103364
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -2.6677999   -2.7016584   -2.6339413
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -1.2444914   -1.2689234   -1.2200595
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -2.7486035   -2.8968661   -2.6003409
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -1.3497920   -1.4272290   -1.2723550
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -2.5679642   -2.6128797   -2.5230486
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -1.1735202   -1.2102111   -1.1368294
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -2.4405566   -2.5046134   -2.3764998
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -1.1287117   -1.1682778   -1.0891456
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -2.6715657   -2.7178990   -2.6252325
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -1.0586136   -1.1013320   -1.0158952
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -2.4907425   -2.5837724   -2.3977125
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -1.0175832   -1.1085831   -0.9265833
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -1.2880635   -1.5663051   -1.0098219
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.6564982   -0.9227055   -0.3902910
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -1.1458018   -1.6727454   -0.6188582
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.6916701   -1.3329304   -0.0504097
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -1.5054630   -1.9407754   -1.0701505
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -1.0453889   -1.5353872   -0.5553906
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.7866477   -1.2248532   -0.3484422
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.7243750   -1.3883421   -0.0604079
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -1.1824183   -1.4723106   -0.8925260
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.5511450   -0.8333874   -0.2689025
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -1.1499950   -1.7372849   -0.5627051
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.4387408   -0.8471742   -0.0303074
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -1.2569709   -1.6577104   -0.8562314
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.6183908   -0.9711278   -0.2656538
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.1161136   -0.9648857    0.7326584
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.3390758   -0.5340871    1.2122387
6 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -1.1321531   -1.4765812   -0.7877250
6 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.4709162   -0.7631785   -0.1786539
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -1.7174447   -2.0723304   -1.3625589
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.8416724   -1.2236902   -0.4596546
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm           -0.7567401   -2.1735123    0.6600321
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.2751863   -1.4646962    2.0150687
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -1.3205921   -1.5476939   -1.0934903
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.4134705   -0.6609947   -0.1659463
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.3789621   -1.6028808   -1.1550435
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.6367196   -0.8451491   -0.4282901
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -1.3929082   -1.5631388   -1.2226775
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.6691227   -0.8316475   -0.5065979
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -1.3415826   -1.4908267   -1.1923385
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.7194871   -0.8654034   -0.5735709
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.9676238   -1.1178212   -0.8174265
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.5980056   -0.7146074   -0.4814038
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -1.1908940   -1.3900858   -0.9917022
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.5397297   -0.7452209   -0.3342386
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -1.4322551   -1.5786379   -1.2858723
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.9464403   -1.0788984   -0.8139823
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.8436561   -0.9075859   -0.7797264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.3683192   -0.4275834   -0.3090551
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -1.4326372   -1.6072388   -1.2580356
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.7886643   -0.9445049   -0.6328238
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -1.4813573   -1.5501500   -1.4125646
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6705495   -0.7367971   -0.6043018
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -1.2154894   -1.3164208   -1.1145581
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5645468   -0.6507898   -0.4783037
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -1.5984465   -1.6802067   -1.5166863
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.6010143   -0.6854338   -0.5165948
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.8478346   -0.9391956   -0.7564737
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.1018376   -0.1979005   -0.0057747
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.9145741   -1.2523113   -0.5768368
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.3622730   -0.6915772   -0.0329689
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -1.0078992   -1.7865274   -0.2292710
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.5867238   -1.4160371    0.2425895
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -1.1313889   -1.7073039   -0.5554738
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.7585000   -1.2741359   -0.2428641
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.5756818   -1.1961646    0.0448010
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.8432143   -1.5066635   -0.1797651
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.6199552   -1.0247339   -0.2151764
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0820409   -0.4737437    0.3096619
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.3311178   -0.8942613    0.2320256
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.2279451   -0.7756106    0.3197204
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.8101367   -1.2382972   -0.3819761
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.5438117   -0.9674572   -0.1201663
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.4532015   -0.9483592    0.0419561
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.3079182   -0.8341860    0.2183495
24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.5012482   -0.7459399   -0.2565564
24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.1450262   -0.3673447    0.0772922
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -1.0489802   -1.4858112   -0.6121493
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.7170271   -1.2332716   -0.2007825
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.1956158   -1.4566287   -0.9346029
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.4955707   -0.7506380   -0.2405034
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -1.1852828   -1.3803076   -0.9902579
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.4283586   -0.6179646   -0.2387525
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.8621098   -1.0459024   -0.6783172
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.4629999   -0.6484903   -0.2775095
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.6637143   -0.8202599   -0.5071688
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.4414467   -0.5753704   -0.3075231
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.7496089   -0.9870205   -0.5121973
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.2835981   -0.5324130   -0.0347832
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.3757204   -0.8694929    0.1180521
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.3766913   -0.6360698   -0.1173128
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.7301903   -0.8821400   -0.5782407
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.2792308   -0.4323755   -0.1260862
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.9820985   -1.1975607   -0.7666363
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.5961190   -0.7860296   -0.4062084
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -1.2340222   -1.3189177   -1.1491267
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6316969   -0.7165904   -0.5468034
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -1.0038403   -1.1152671   -0.8924135
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5368898   -0.6336013   -0.4401784
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -1.1533402   -1.2743909   -1.0322896
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.3889194   -0.5162141   -0.2616247
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.5972360   -0.6831986   -0.5112734
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0723620   -0.1647943    0.0200703


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.4629815   -1.6329344   -1.2930287
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.9302029   -1.2122421   -0.6481637
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.2702837   -1.6001172   -0.9404501
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -1.1220833   -1.5037131   -0.7404536
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -1.1991412   -1.3881155   -1.0101669
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.9943179   -1.2189461   -0.7696898
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -1.1733641   -1.4173303   -0.9293980
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -1.3910502   -1.7551936   -1.0269068
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                -1.5716236   -1.7576628   -1.3855843
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              NA                -2.4068710   -3.0004076   -1.8133344
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -1.3955249   -1.9182400   -0.8728098
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -1.8311108   -1.9304036   -1.7318180
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.4166919   -1.5408910   -1.2924927
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -1.1746279   -1.2776610   -1.0715947
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -1.2682825   -1.3620955   -1.1744694
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.9462129   -1.0108007   -0.8816252
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -1.5612619   -1.6703380   -1.4521859
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.1882785   -0.2314228   -0.1451341
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3276974   -1.3529508   -1.3024441
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.9290430   -1.0135414   -0.8445446
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.5056524   -1.5444509   -1.4668539
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.0376772   -1.0804620   -0.9948923
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -2.1625702   -2.2087371   -2.1164032
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -1.9531720   -2.0444838   -1.8618602
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.8053783   -1.0166072   -0.5941495
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.5354061   -0.8035474   -0.2672647
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.0433943   -1.3884372   -0.6983515
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.5278365   -0.8371932   -0.2184799
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.6979523   -0.9074341   -0.4884704
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.4434432   -0.7059694   -0.1809170
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.6323576   -0.8924213   -0.3722939
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1551576   -0.5512367    0.8615519
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.4745428   -0.6489702   -0.3001153
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -1.3508790   -1.6691555   -1.0326026
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.2289945   -1.1550621    0.6970731
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.8404522   -1.0343433   -0.6465612
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.7721609   -0.9307704   -0.6135514
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.7622548   -0.8850047   -0.6395050
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.7903599   -0.8961947   -0.6845252
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.3610312   -0.4176919   -0.3043704
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.7898856   -0.9504136   -0.6293576
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0912589   -0.1147493   -0.0677685
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4067753   -0.4450614   -0.3684892
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.5145772   -0.5915103   -0.4376441
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.8594960   -0.9093847   -0.8096073
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.5213507   -0.5739639   -0.4687376
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -1.2717436   -1.3496933   -1.1937939
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.4279797   -0.4897019   -0.3662575
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.5339421   -0.7826565   -0.2852278
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.3690744   -0.7441427    0.0059938
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.8139103   -1.2350164   -0.3928041
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.4705769   -0.8342465   -0.1069074
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.2991186   -0.6067163    0.0084791
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.2138221   -0.5189708    0.0913267
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.4211719   -0.6872645   -0.1550793
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3491734   -0.7617575    0.0634106
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.1818822   -0.3107046   -0.0530598
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.8758527   -1.2655154   -0.4861900
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6478545   -0.8326295   -0.4630794
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.5970003   -0.7329592   -0.4610413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.5014928   -0.6235742   -0.3794114
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.2603847   -0.3215396   -0.1992297
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.4723906   -0.6605606   -0.2842205
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0317304   -0.0591409   -0.0043199
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4225809   -0.5359530   -0.3092088
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.3979057   -0.4905096   -0.3053017
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.7377406   -0.7993353   -0.6761460
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4552495   -0.5128670   -0.3976320
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.9099208   -1.0240868   -0.7957547
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.3067015   -0.3648602   -0.2485428

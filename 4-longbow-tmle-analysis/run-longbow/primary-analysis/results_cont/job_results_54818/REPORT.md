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

agecat      studyid                    country                        birthlen      n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           39     215  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm            97     215  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        79     215  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm           30      62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm            14      62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        18      62  whz              
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm            9      45  whz              
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm            18      45  whz              
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm        18      45  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  whz              
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm           52     228  whz              
Birth       ki0047075b-MAL-ED          PERU                           <48 cm            83     228  whz              
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm        93     228  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           43     120  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            31     120  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        46     120  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     115  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            32     115  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     115  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           13      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            33      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40      86  whz              
Birth       ki1000108-IRC              INDIA                          >=50 cm          120     343  whz              
Birth       ki1000108-IRC              INDIA                          <48 cm            87     343  whz              
Birth       ki1000108-IRC              INDIA                          [48-50) cm       136     343  whz              
Birth       ki1000109-EE               PAKISTAN                       >=50 cm           21     177  whz              
Birth       ki1000109-EE               PAKISTAN                       <48 cm           102     177  whz              
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm        54     177  whz              
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm           12      38  whz              
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm            12      38  whz              
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm        14      38  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          116    1103  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm           590    1103  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       397    1103  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          136     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm           211     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       228     575  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          121     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm           189     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       222     532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          160     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           267     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       280     707  whz              
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm          736    1465  whz              
Birth       ki1101329-Keneba           GAMBIA                         <48 cm           240    1465  whz              
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm       489    1465  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm          114     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm           319     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       208     641  whz              
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            2      19  whz              
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm             9      19  whz              
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         8      19  whz              
Birth       ki1114097-CONTENT          PERU                           >=50 cm            1       2  whz              
Birth       ki1114097-CONTENT          PERU                           <48 cm             1       2  whz              
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         0       2  whz              
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm        12570   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        <48 cm           140   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm      1120   13830  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         3997   12917  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          3641   12917  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      5279   12917  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm          396     756  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm           132     756  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm       228     756  whz              
Birth       ki1135781-COHORTS          INDIA                          >=50 cm         1404    6193  whz              
Birth       ki1135781-COHORTS          INDIA                          <48 cm          2354    6193  whz              
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm      2435    6193  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm         1110    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm           651    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1138    2899  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1243   18014  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         11692   18014  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      5079   18014  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          178    2396  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1487    2396  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       731    2396  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           39     211  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm            98     211  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        74     211  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm           28      59  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm            15      59  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        16      59  whz              
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            8      41  whz              
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm            18      41  whz              
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      41  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  whz              
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm           48     215  whz              
6 months    ki0047075b-MAL-ED          PERU                           <48 cm            84     215  whz              
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm        83     215  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           34      93  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21      93  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        38      93  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     118  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            39     118  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        48     118  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           16     105  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            49     105  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     105  whz              
6 months    ki1000108-IRC              INDIA                          >=50 cm          141     389  whz              
6 months    ki1000108-IRC              INDIA                          <48 cm           110     389  whz              
6 months    ki1000108-IRC              INDIA                          [48-50) cm       138     389  whz              
6 months    ki1000109-EE               PAKISTAN                       >=50 cm           24     238  whz              
6 months    ki1000109-EE               PAKISTAN                       <48 cm           162     238  whz              
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm        52     238  whz              
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm           10      34  whz              
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm            13      34  whz              
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm        11      34  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          196    1322  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           708    1322  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       418    1322  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          120     518  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm           199     518  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       199     518  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          143     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           213     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       247     603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          164     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           270     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       281     715  whz              
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm          677    1347  whz              
6 months    ki1101329-Keneba           GAMBIA                         <48 cm           234    1347  whz              
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm       436    1347  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm           96     563  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm           296     563  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       171     563  whz              
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            0      12  whz              
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm             6      12  whz              
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         6      12  whz              
6 months    ki1114097-CONTENT          PERU                           >=50 cm            1       2  whz              
6 months    ki1114097-CONTENT          PERU                           <48 cm             1       2  whz              
6 months    ki1114097-CONTENT          PERU                           [48-50) cm         0       2  whz              
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm        14293   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        <48 cm           172   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm      1293   15758  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2461    8413  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2657    8413  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3295    8413  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          351     689  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm           134     689  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm       204     689  whz              
6 months    ki1135781-COHORTS          INDIA                          >=50 cm         1329    6127  whz              
6 months    ki1135781-COHORTS          INDIA                          <48 cm          2527    6127  whz              
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm      2271    6127  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm          989    2699  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm           677    2699  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1033    2699  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          826   13899  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          9806   13899  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      3267   13899  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1101    4024  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1927    4024  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       996    4024  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           39     187  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            80     187  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        68     187  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           20      42  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            10      42  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        12      42  whz              
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6      39  whz              
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      39  whz              
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      39  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  whz              
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm           34     160  whz              
24 months   ki0047075b-MAL-ED          PERU                           <48 cm            67     160  whz              
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        59     160  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           32      91  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21      91  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        38      91  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     104  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     104  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        41     104  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           16     106  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            50     106  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     106  whz              
24 months   ki1000108-IRC              INDIA                          >=50 cm          142     390  whz              
24 months   ki1000108-IRC              INDIA                          <48 cm           110     390  whz              
24 months   ki1000108-IRC              INDIA                          [48-50) cm       138     390  whz              
24 months   ki1000109-EE               PAKISTAN                       >=50 cm           10     107  whz              
24 months   ki1000109-EE               PAKISTAN                       <48 cm            72     107  whz              
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm        25     107  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           99     413  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           160     413  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       154     413  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          139     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           206     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       234     579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          128     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           200     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       186     514  whz              
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          535    1066  whz              
24 months   ki1101329-Keneba           GAMBIA                         <48 cm           197    1066  whz              
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       334    1066  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           84     486  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           249     486  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       153     486  whz              
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0      11  whz              
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             5      11  whz              
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         6      11  whz              
24 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2  whz              
24 months   ki1114097-CONTENT          PERU                           <48 cm             1       2  whz              
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2  whz              
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm         3624    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        <48 cm            44    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm       304    3972  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm           42     426  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           258     426  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       126     426  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          264     564  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           122     564  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       178     564  whz              
24 months   ki1135781-COHORTS          INDIA                          >=50 cm         1035    4722  whz              
24 months   ki1135781-COHORTS          INDIA                          <48 cm          1928    4722  whz              
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm      1759    4722  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm          895    2446  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm           609    2446  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm       942    2446  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          404    7159  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5050    7159  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      1705    7159  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1074    3974  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1937    3974  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       963    3974  whz              


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
![](/tmp/685eabdd-60c3-4c36-b88c-b600d23bc4ce/5b075ad4-b1ef-4145-a4ba-6021383d5ef0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/685eabdd-60c3-4c36-b88c-b600d23bc4ce/5b075ad4-b1ef-4145-a4ba-6021383d5ef0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/685eabdd-60c3-4c36-b88c-b600d23bc4ce/5b075ad4-b1ef-4145-a4ba-6021383d5ef0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -1.1187594   -1.4886685   -0.7488502
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.8752945   -1.0922535   -0.6583355
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.9034652   -1.1367690   -0.6701613
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.2527962   -0.1637213    0.6693137
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.4977026   -0.2002562    1.1956613
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.2389707   -0.3549535    0.8328948
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -1.2755556   -1.7237003   -0.8274108
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.1033333   -1.5325846   -0.6740821
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.5900000   -1.0271837   -0.1528163
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.7287500   -1.3613469   -0.0961531
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.9354545   -1.5903488   -0.2805603
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.5514286   -0.9073681   -0.1954890
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.1284101   -0.3897760    0.1329558
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0115467   -0.2528191    0.2297257
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.1037403   -0.3087585    0.1012778
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.3568503   -0.7337742    0.0200737
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.2589099   -0.1871383    0.7049580
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.3089162   -0.6322887    0.0144562
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.6047902    0.2686841    0.9408963
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 1.0375767    0.5798646    1.4952887
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.7985615    0.5108526    1.0862703
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0968589   -0.8159839    0.6222660
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.1278219   -0.7583471    0.5027034
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.7275333   -1.0899187   -0.3651480
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                -2.0503206   -2.3392353   -1.7614060
Birth       ki1000108-IRC              INDIA                          <48 cm               NA                -0.1224104   -0.4741096    0.2292888
Birth       ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.6194113   -0.8733096   -0.3655129
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.9057508   -1.6148115   -0.1966901
Birth       ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.2078663   -0.4604974    0.0447648
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.3443283   -0.7014701    0.0128135
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.8841807   -1.5673014   -0.2010600
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               NA                -0.1091888   -0.7082221    0.4898445
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.1194342   -0.8029666    0.5640981
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.9457645   -1.2556662   -0.6358629
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.5860196   -0.8074064   -0.3646327
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.7148057   -0.8106162   -0.6189953
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.5660293   -1.7598261   -1.3722326
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -1.2636705   -1.4313465   -1.0959945
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.2782901   -1.4213071   -1.1352731
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -1.3249194   -1.4805841   -1.1692547
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.3386031   -1.4730530   -1.2041532
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -1.2482479   -1.3695611   -1.1269347
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -1.4560803   -1.6144496   -1.2977109
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -1.0773135   -1.2150491   -0.9395779
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -1.2384813   -1.3763917   -1.1005709
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -1.5919575   -1.6745476   -1.5093674
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.5597862   -0.7268891   -0.3926832
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -1.0155856   -1.1147619   -0.9164094
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -1.3743071   -1.5709638   -1.1776505
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.9812528   -1.1124872   -0.8500184
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1823427   -1.3227971   -1.0418883
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -1.1998895   -1.4120651   -0.9877139
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.1168170    0.0292747    0.2043592
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.6771851   -0.8766365   -0.4777337
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1257387   -1.1692078   -1.0822696
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0606137    0.0110915    0.1101360
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4488972   -0.4863339   -0.4114605
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -1.4541025   -1.5815475   -1.3266576
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.2399010   -0.5026242    0.0228221
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.8679044   -1.0458452   -0.6899636
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                -1.2291781   -1.2879511   -1.1704051
Birth       ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.7724501   -0.8232550   -0.7216453
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -1.0463929   -1.0927344   -1.0000513
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -1.1295919   -1.2002044   -1.0589794
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.3596384   -0.4640359   -0.2552409
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.5835419   -0.6518956   -0.5151882
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -1.0697017   -1.1312549   -1.0081486
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.7227981   -0.7452398   -0.7003565
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.8388936   -0.8710934   -0.8066938
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.9711630   -1.2078120   -0.7345139
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.6315610   -0.6964161   -0.5667058
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.7418821   -0.8372052   -0.6465590
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0858376   -0.3437471    0.5154223
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.2859648   -0.4540921   -0.1178376
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.0020858   -0.2401271    0.2442987
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.9381524    0.5257955    1.3505093
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.3880239   -0.3414823    1.1175302
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.7243379   -0.0127538    1.4614297
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.7502083   -1.4517037   -0.0487129
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.5703704   -1.0696501   -0.0710906
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.7316667   -1.2274927   -0.2358406
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.2881250   -0.8678030    0.2915530
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.6550000   -1.0447672   -0.2652328
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.1540476   -0.7631832    0.4550880
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 1.0765411    0.8049925    1.3480896
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                 1.0739648    0.8121345    1.3357951
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.9944038    0.7814153    1.2073924
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.6292547    0.2047164    1.0537929
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.9672449    0.3738471    1.5606427
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0578202   -0.4942443    0.3786040
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.8365515    0.4272648    1.2458381
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.2764035   -0.0153010    0.5681079
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.4826043    0.2132367    0.7519718
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.4041283   -0.8879351    1.6961917
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.5253525   -0.9411695   -0.1095356
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.5476676   -0.9290601   -0.1662752
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.6850528   -0.8938434   -0.4762622
6 months    ki1000108-IRC              INDIA                          <48 cm               NA                -0.4908612   -0.7631419   -0.2185805
6 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.6951603   -0.9383159   -0.4520048
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.7701860   -1.3214086   -0.2189635
6 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.9190927   -1.0783303   -0.7598550
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.7028332   -1.0039990   -0.4016675
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.1713568   -0.5214462    0.8641598
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               NA                 0.2621254   -0.2377523    0.7620030
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.2981250   -1.3789290    0.7826790
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.5669399   -0.7319608   -0.4019189
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.7436758   -0.8854566   -0.6018950
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.5814021   -0.7289533   -0.4338509
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.3139805   -0.5213385   -0.1066226
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.5568198   -0.7070295   -0.4066101
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.4630214   -0.6023472   -0.3236956
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1378385   -0.0378279    0.3135049
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.4654000   -0.6031883   -0.3276117
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.1675439   -0.2945214   -0.0405664
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1340575   -0.0242376    0.2923526
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0272279   -0.1103490    0.1648048
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.0042396   -0.1182003    0.1266794
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.1523445   -0.2379308   -0.0667582
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.1945152   -0.3349133   -0.0541172
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.2644089   -0.3825991   -0.1462186
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3067858   -0.5147157   -0.0988559
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.6852410   -0.8043024   -0.5661797
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.6264248   -0.7816652   -0.4711843
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.5896096    0.5289252    0.6502939
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.5685702    0.4731113    0.6640290
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.4659879    0.3620737    0.5699022
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3981003    0.3508304    0.4453701
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.2326482    0.1850177    0.2802787
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.2997902    0.2582684    0.3413121
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.2951078    0.1782678    0.4119478
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.0472507   -0.1645934    0.2590949
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1849252    0.0258381    0.3440123
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.4718156   -0.5305129   -0.4131183
6 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.8575098   -0.9044643   -0.8105552
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.6542905   -0.7023597   -0.6062213
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.2469492   -0.3132344   -0.1806639
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.3622669   -0.4476686   -0.2768652
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.2969607   -0.3648669   -0.2290546
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.4739572   -0.5583888   -0.3895256
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -0.6460663   -0.6703542   -0.6217784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.5262780   -0.5669502   -0.4856058
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.3243025   -0.3984960   -0.2501090
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.4190164   -0.4835751   -0.3544576
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.3531789   -0.4276042   -0.2787536
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.5676034   -0.9175361   -0.2176707
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -1.0565192   -1.2323705   -0.8806678
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.7349311   -0.9421820   -0.5276803
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.4409141    0.0111209    0.8707073
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.3415028   -1.1753423    0.4923367
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.2826671   -0.7810943    1.3464286
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.4358333   -1.1701735    0.2985068
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -1.2241667   -1.6277760   -0.8205574
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -1.2543333   -1.5915308   -0.9171358
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.4606250   -0.9226786    0.0014286
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -1.1881818   -1.4731126   -0.9032511
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.9200000   -1.4410066   -0.3989934
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.5514972    0.2976075    0.8053869
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.1056802   -0.3439406    0.1325803
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0298643   -0.2333332    0.1736045
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.3949244    0.1126711    0.6771777
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.5258042    0.0776940    0.9739144
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.1194673   -0.1761357    0.4150704
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.4679184    0.1255222    0.8103147
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0551625   -0.3188842    0.4292093
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.0999710   -0.1862980    0.3862401
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2191643   -0.3059461    0.7442746
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.6353709   -0.9017750   -0.3689668
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.3185858   -0.6152651   -0.0219065
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.6982051   -0.8548489   -0.5415612
24 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.9167933   -1.0815455   -0.7520411
24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.7445474   -0.9065983   -0.5824965
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.4133994   -0.9193222    0.0925235
24 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                -1.0713950   -1.2930220   -0.8497679
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.9324686   -1.3084410   -0.5564961
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6264027   -0.8028680   -0.4499374
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.9992782   -1.1717583   -0.8267981
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.9743091   -1.1384197   -0.8101985
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.6174600   -0.7944370   -0.4404829
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -1.2060011   -1.3255173   -1.0864849
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.8078267   -0.9433526   -0.6723008
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.4249899   -0.6136248   -0.2363549
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.7342129   -0.8785521   -0.5898737
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.6040242   -0.7657172   -0.4423312
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.6676923   -0.7507921   -0.5845926
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.9557686   -1.1035947   -0.8079425
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.9104785   -1.0187956   -0.8021614
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.8213172   -1.0429239   -0.5997104
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -1.2420750   -1.3599684   -1.1241815
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1230201   -1.2873933   -0.9586469
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.7120171    0.6006820    0.8233523
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.5351872    0.1946932    0.8756811
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.4269674    0.2764869    0.5774478
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.4245014   -1.7143533   -1.1346495
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.0762350   -1.1990798   -0.9533902
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.3592070   -1.5609982   -1.1574157
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0620463   -0.1610119    0.0369193
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.4526969   -0.6379348   -0.2674590
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2361692   -0.3588632   -0.1134752
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.2820087   -0.3443662   -0.2196512
24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.8096056   -0.8554966   -0.7637147
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.5455067   -0.5931968   -0.4978166
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4393672   -0.4967323   -0.3820022
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                -0.8405775   -0.9156072   -0.7655479
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.6135386   -0.6736981   -0.5533791
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.9428143   -1.0639966   -0.8216319
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                -1.3892890   -1.4187830   -1.3597950
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -1.1355595   -1.1840596   -1.0870593
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -1.0958567   -1.1624434   -1.0292700
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -1.3619765   -1.4117679   -1.3121852
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -1.1659498   -1.2310914   -1.1008082


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.2434649   -0.1852355    0.6721653
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.2152942   -0.2220939    0.6526823
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.2449064   -0.5708706    1.0606834
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0138255   -0.7369651    0.7093140
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.1722222   -0.4483343    0.7927787
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.6855556    0.0594859    1.3116252
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.2067045   -1.1172348    0.7038257
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1773214   -0.5485380    0.9031808
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.1168634   -0.2400712    0.4737980
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0246698   -0.3065293    0.3558688
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.6157601    0.0336851    1.1978352
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0479341   -0.4496857    0.5455538
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.4327865   -0.1410352    1.0066081
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1937713   -0.2622002    0.6497427
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0309629   -0.9958070    0.9338811
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.6306744   -1.4353819    0.1740331
Birth       ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.9279102    1.4731967    2.3826238
Birth       ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.4309094    1.0462628    1.8155559
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.6978845   -0.0544421    1.4502112
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.5614225   -0.2349366    1.3577816
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.7749919   -0.1459350    1.6959188
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.7647465   -0.1985971    1.7280901
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.3597450    0.1861327    0.5333573
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.2309588   -0.0028097    0.4647273
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.3023588    0.0463539    0.5583637
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.2877392    0.0474034    0.5280749
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0136837   -0.2196681    0.1923007
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0766714   -0.1211256    0.2744685
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.3787667    0.1690323    0.5885011
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.2175989    0.0068508    0.4283471
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            1.0321713    0.8459767    1.2183659
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.5763718    0.4476391    0.7051046
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.3930543    0.1571341    0.6289745
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1919644   -0.0489789    0.4329078
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            1.3167065    1.0894979    1.5439150
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.5227044    0.2962130    0.7491957
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.1863524    1.1206237    1.2520811
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.6768415    0.6197168    0.7339661
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.2142015    0.9226366    1.5057665
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.5861982    0.3673312    0.8050651
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.4567280    0.3791772    0.5342787
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1827852    0.1080526    0.2575179
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.7699535    0.6444669    0.8954401
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            0.5460500    0.4483610    0.6437391
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.3469036    0.2833301    0.4104771
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.2308081    0.1633811    0.2982351
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.3396020    0.0939609    0.5852431
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.2292809   -0.0243662    0.4829279
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.3718024   -0.8333894    0.0897846
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0837518   -0.5783092    0.4108056
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.5501285   -1.3891921    0.2889351
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.2138145   -1.0515042    0.6238752
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.1798380   -0.6811940    1.0408700
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0185417   -0.8404923    0.8775756
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.3668750   -1.0654057    0.3316557
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1340774   -0.7067988    0.9749536
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.0025762   -0.3812374    0.3760849
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0821372   -0.4262088    0.2619344
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.3379903   -0.4015876    1.0775681
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.6870748   -1.3003057   -0.0738440
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.5601480   -1.0639129   -0.0563831
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.3539472   -0.8435505    0.1356560
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.9294809   -2.2835080    0.4245462
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.9517960   -2.2977808    0.3941889
6 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.1941916   -0.1484500    0.5368332
6 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0101075   -0.3303822    0.3101672
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.1489066   -0.7236148    0.4258015
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0673528   -0.5595634    0.6942690
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0907686   -0.7973990    0.9789361
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.4694818   -1.7555545    0.8165909
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.1767359   -0.2495097   -0.1039620
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0144622   -0.1359570    0.1070326
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.2428393   -0.4975388    0.0118603
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.1490408   -0.4000953    0.1020136
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.6032385   -0.8271744   -0.3793025
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.3053824   -0.5234149   -0.0873498
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.1068296   -0.3175038    0.1038447
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.1298179   -0.3312957    0.0716598
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0421707   -0.2064656    0.1221241
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.1120644   -0.2581260    0.0339972
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.3784552   -0.6181933   -0.1387171
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3196389   -0.5793216   -0.0599562
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0210394   -0.1229454    0.0808666
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.1236216   -0.2136300   -0.0336132
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.1654520   -0.2326019   -0.0983022
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0983100   -0.1612484   -0.0353717
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.2478571   -0.4895674   -0.0061468
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.1101826   -0.3077778    0.0874126
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.3856942   -0.4607976   -0.3105907
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.1824749   -0.2582774   -0.1066724
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.1153177   -0.2232149   -0.0074205
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0500116   -0.1448826    0.0448595
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.1721091   -0.2589103   -0.0853078
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0523208   -0.1428246    0.0381831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0947139   -0.1911439    0.0017161
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0288764   -0.1308371    0.0730843
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.4889158   -0.8822622   -0.0955693
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.1673277   -0.5743165    0.2396611
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.7824169   -1.7311491    0.1663153
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.1582470   -1.3166705    1.0001765
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.7883333   -1.6262808    0.0496141
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.8185000   -1.6265579   -0.0104421
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.7275568   -1.2704003   -0.1847133
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.4593750   -1.1557523    0.2370023
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.6571773   -1.0077518   -0.3066029
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.5813615   -0.9094193   -0.2533037
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.1308798   -0.4023722    0.6641318
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.2754571   -0.6856997    0.1347855
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.4127559   -0.9187900    0.0932782
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.3679474   -0.8170046    0.0811098
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.8545351   -1.4449848   -0.2640855
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.5377501   -1.1430405    0.0675403
24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.2185883   -0.4471093    0.0099328
24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0463424   -0.2713600    0.1786753
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.6579956   -1.2126946   -0.1032966
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.5190692   -1.1460776    0.1079392
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.3728755   -0.6196188   -0.1261322
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.3479064   -0.5894212   -0.1063916
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.5885411   -0.8015988   -0.3754835
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.1903667   -0.4133369    0.0326034
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.3092230   -0.5464919   -0.0719541
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.1790343   -0.4262979    0.0682293
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.2880762   -0.4577042   -0.1184483
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.2427861   -0.3792687   -0.1063036
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.4207578   -0.6715220   -0.1699935
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3017029   -0.5788533   -0.0245525
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.1768300   -0.5073930    0.1537331
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.2850497   -0.4337744   -0.1363251
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.3482664    0.0337538    0.6627790
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0652944   -0.2882781    0.4188670
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.3906506   -0.6006837   -0.1806174
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.1741229   -0.3319401   -0.0163057
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.5275970   -0.6048128   -0.4503811
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.2634980   -0.3418118   -0.1851842
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.4012103   -0.4956326   -0.3067880
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.1741713   -0.2572797   -0.0910630
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.4464748   -0.5731289   -0.3198206
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.1927452   -0.3218144   -0.0636760
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.2661198   -0.3483775   -0.1838621
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0700931   -0.1645973    0.0244111


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.1768989   -0.1549403    0.5087381
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.1501070   -0.1836018    0.4838159
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.3431111   -0.0993435    0.7855657
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0397115   -0.5703614    0.4909384
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0763926   -0.1656945    0.3184796
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1642669   -0.1363071    0.4648410
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1576446   -0.1556913    0.4709805
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3679667   -1.0677173    0.3317840
Birth       ki1000108-IRC              INDIA                          >=50 cm              NA                 1.0397375    0.7928041    1.2866709
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.5724457   -0.0962419    1.2411334
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.5178649   -0.0712127    1.1069426
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2757192    0.1125855    0.4388529
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2161076    0.0445954    0.3876198
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0264607   -0.1126904    0.1656119
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.2119289    0.0674781    0.3563797
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.3575957    0.2956144    0.4195770
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2578641    0.0769708    0.4387573
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0550262    0.0308515    0.0792009
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.6102490    0.5730794    0.6474187
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.3919597    0.2941265    0.4897929
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.2444324    0.1914541    0.2974108
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.3868668    0.3296236    0.4441100
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.2918745    0.2336695    0.3500795
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.2825361    0.0572763    0.5077959
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.2316670   -0.6033401    0.1400062
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0801016   -0.4220210    0.2618178
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0857368   -0.5470478    0.7185213
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.1191186   -0.5907705    0.3525333
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0254713   -0.2704072    0.2194646
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.2274625   -0.5860641    0.1311390
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.3254922   -0.6644555    0.0134711
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.8972712   -2.0410252    0.2464828
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0441188   -0.1320207    0.2202583
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0826011   -0.5974775    0.4322753
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0462903   -0.6053765    0.6979570
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.1005526   -0.1745387   -0.0265664
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.1496954   -0.3293840    0.0299931
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.3369291   -0.4903926   -0.1834657
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.1042952   -0.2455194    0.0369289
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0451212   -0.1074438    0.0172014
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.2958992   -0.4847745   -0.1070239
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0103657   -0.0196753   -0.0010561
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0891332   -0.1293144   -0.0489519
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0757174   -0.1609120    0.0094772
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.2265784   -0.2796845   -0.1734723
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.0473969   -0.1011096    0.0063159
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.1332901   -0.2137461   -0.0528341
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0514008   -0.1148402    0.0120386
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.2620222   -0.5632062    0.0391617
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.2061919   -0.6441205    0.2317368
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.6786538   -1.3465606   -0.0107471
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.4314904   -0.8201628   -0.0428180
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.5024555   -0.7477823   -0.2571287
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0029830   -0.2513561    0.2453900
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.3354665   -0.6363115   -0.0346215
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.6720731   -1.1692228   -0.1749233
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0554573   -0.1807117    0.0697970
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.5795446   -1.0749392   -0.0841500
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.2805424   -0.4429494   -0.1181355
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.2754070   -0.4285756   -0.1222385
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.1853603   -0.3470752   -0.0236454
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.1272095   -0.1875937   -0.0668253
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3123728   -0.5126840   -0.1120617
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0245876   -0.0425804   -0.0065948
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.2441962   -0.0350349    0.5234273
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1395849   -0.2167556   -0.0624142
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.3125657   -0.3678355   -0.2572958
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                -0.1709516   -0.2183398   -0.1235635
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.3618428   -0.4795180   -0.2441677
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.1452555   -0.2017658   -0.0887452

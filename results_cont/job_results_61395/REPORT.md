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

agecat      studyid          country                        birthlen      n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -----------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm           13      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          <48 cm            33      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm        40      86  whz              
Birth       CMIN             BANGLADESH                     >=50 cm            2      19  whz              
Birth       CMIN             BANGLADESH                     <48 cm             9      19  whz              
Birth       CMIN             BANGLADESH                     [48-50) cm         8      19  whz              
Birth       COHORTS          GUATEMALA                      >=50 cm          396     756  whz              
Birth       COHORTS          GUATEMALA                      <48 cm           132     756  whz              
Birth       COHORTS          GUATEMALA                      [48-50) cm       228     756  whz              
Birth       COHORTS          INDIA                          >=50 cm         1404    6193  whz              
Birth       COHORTS          INDIA                          <48 cm          2354    6193  whz              
Birth       COHORTS          INDIA                          [48-50) cm      2435    6193  whz              
Birth       COHORTS          PHILIPPINES                    >=50 cm         1110    2899  whz              
Birth       COHORTS          PHILIPPINES                    <48 cm           651    2899  whz              
Birth       COHORTS          PHILIPPINES                    [48-50) cm      1138    2899  whz              
Birth       CONTENT          PERU                           >=50 cm            1       2  whz              
Birth       CONTENT          PERU                           <48 cm             1       2  whz              
Birth       CONTENT          PERU                           [48-50) cm         0       2  whz              
Birth       EE               PAKISTAN                       >=50 cm           21     177  whz              
Birth       EE               PAKISTAN                       <48 cm           102     177  whz              
Birth       EE               PAKISTAN                       [48-50) cm        54     177  whz              
Birth       GMS-Nepal        NEPAL                          >=50 cm          114     641  whz              
Birth       GMS-Nepal        NEPAL                          <48 cm           319     641  whz              
Birth       GMS-Nepal        NEPAL                          [48-50) cm       208     641  whz              
Birth       IRC              INDIA                          >=50 cm          120     343  whz              
Birth       IRC              INDIA                          <48 cm            87     343  whz              
Birth       IRC              INDIA                          [48-50) cm       136     343  whz              
Birth       JiVitA-3         BANGLADESH                     >=50 cm         1243   18014  whz              
Birth       JiVitA-3         BANGLADESH                     <48 cm         11692   18014  whz              
Birth       JiVitA-3         BANGLADESH                     [48-50) cm      5079   18014  whz              
Birth       JiVitA-4         BANGLADESH                     >=50 cm          178    2396  whz              
Birth       JiVitA-4         BANGLADESH                     <48 cm          1487    2396  whz              
Birth       JiVitA-4         BANGLADESH                     [48-50) cm       731    2396  whz              
Birth       Keneba           GAMBIA                         >=50 cm          736    1465  whz              
Birth       Keneba           GAMBIA                         <48 cm           240    1465  whz              
Birth       Keneba           GAMBIA                         [48-50) cm       489    1465  whz              
Birth       MAL-ED           BANGLADESH                     >=50 cm           39     215  whz              
Birth       MAL-ED           BANGLADESH                     <48 cm            97     215  whz              
Birth       MAL-ED           BANGLADESH                     [48-50) cm        79     215  whz              
Birth       MAL-ED           BRAZIL                         >=50 cm           30      62  whz              
Birth       MAL-ED           BRAZIL                         <48 cm            14      62  whz              
Birth       MAL-ED           BRAZIL                         [48-50) cm        18      62  whz              
Birth       MAL-ED           INDIA                          >=50 cm            9      45  whz              
Birth       MAL-ED           INDIA                          <48 cm            18      45  whz              
Birth       MAL-ED           INDIA                          [48-50) cm        18      45  whz              
Birth       MAL-ED           NEPAL                          >=50 cm            8      26  whz              
Birth       MAL-ED           NEPAL                          <48 cm            11      26  whz              
Birth       MAL-ED           NEPAL                          [48-50) cm         7      26  whz              
Birth       MAL-ED           PERU                           >=50 cm           52     228  whz              
Birth       MAL-ED           PERU                           <48 cm            83     228  whz              
Birth       MAL-ED           PERU                           [48-50) cm        93     228  whz              
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm           43     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   <48 cm            31     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm        46     120  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            32     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     115  whz              
Birth       NIH-Birth        BANGLADESH                     >=50 cm          136     575  whz              
Birth       NIH-Birth        BANGLADESH                     <48 cm           211     575  whz              
Birth       NIH-Birth        BANGLADESH                     [48-50) cm       228     575  whz              
Birth       NIH-Crypto       BANGLADESH                     >=50 cm          160     707  whz              
Birth       NIH-Crypto       BANGLADESH                     <48 cm           267     707  whz              
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm       280     707  whz              
Birth       PROBIT           BELARUS                        >=50 cm        12557   13817  whz              
Birth       PROBIT           BELARUS                        <48 cm           140   13817  whz              
Birth       PROBIT           BELARUS                        [48-50) cm      1120   13817  whz              
Birth       PROVIDE          BANGLADESH                     >=50 cm          121     532  whz              
Birth       PROVIDE          BANGLADESH                     <48 cm           189     532  whz              
Birth       PROVIDE          BANGLADESH                     [48-50) cm       222     532  whz              
Birth       ResPak           PAKISTAN                       >=50 cm           12      38  whz              
Birth       ResPak           PAKISTAN                       <48 cm            12      38  whz              
Birth       ResPak           PAKISTAN                       [48-50) cm        14      38  whz              
Birth       SAS-CompFeed     INDIA                          >=50 cm          116    1103  whz              
Birth       SAS-CompFeed     INDIA                          <48 cm           590    1103  whz              
Birth       SAS-CompFeed     INDIA                          [48-50) cm       397    1103  whz              
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm         3997   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       <48 cm          3641   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm      5279   12917  whz              
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm           16     105  whz              
6 months    CMC-V-BCS-2002   INDIA                          <48 cm            49     105  whz              
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm        40     105  whz              
6 months    CMIN             BANGLADESH                     >=50 cm            0      12  whz              
6 months    CMIN             BANGLADESH                     <48 cm             6      12  whz              
6 months    CMIN             BANGLADESH                     [48-50) cm         6      12  whz              
6 months    COHORTS          GUATEMALA                      >=50 cm          351     689  whz              
6 months    COHORTS          GUATEMALA                      <48 cm           134     689  whz              
6 months    COHORTS          GUATEMALA                      [48-50) cm       204     689  whz              
6 months    COHORTS          INDIA                          >=50 cm         1329    6127  whz              
6 months    COHORTS          INDIA                          <48 cm          2527    6127  whz              
6 months    COHORTS          INDIA                          [48-50) cm      2271    6127  whz              
6 months    COHORTS          PHILIPPINES                    >=50 cm          989    2699  whz              
6 months    COHORTS          PHILIPPINES                    <48 cm           677    2699  whz              
6 months    COHORTS          PHILIPPINES                    [48-50) cm      1033    2699  whz              
6 months    CONTENT          PERU                           >=50 cm            1       2  whz              
6 months    CONTENT          PERU                           <48 cm             1       2  whz              
6 months    CONTENT          PERU                           [48-50) cm         0       2  whz              
6 months    EE               PAKISTAN                       >=50 cm           24     238  whz              
6 months    EE               PAKISTAN                       <48 cm           162     238  whz              
6 months    EE               PAKISTAN                       [48-50) cm        52     238  whz              
6 months    GMS-Nepal        NEPAL                          >=50 cm           96     563  whz              
6 months    GMS-Nepal        NEPAL                          <48 cm           296     563  whz              
6 months    GMS-Nepal        NEPAL                          [48-50) cm       171     563  whz              
6 months    IRC              INDIA                          >=50 cm          141     389  whz              
6 months    IRC              INDIA                          <48 cm           110     389  whz              
6 months    IRC              INDIA                          [48-50) cm       138     389  whz              
6 months    JiVitA-3         BANGLADESH                     >=50 cm          826   13899  whz              
6 months    JiVitA-3         BANGLADESH                     <48 cm          9806   13899  whz              
6 months    JiVitA-3         BANGLADESH                     [48-50) cm      3267   13899  whz              
6 months    JiVitA-4         BANGLADESH                     >=50 cm         1101    4024  whz              
6 months    JiVitA-4         BANGLADESH                     <48 cm          1927    4024  whz              
6 months    JiVitA-4         BANGLADESH                     [48-50) cm       996    4024  whz              
6 months    Keneba           GAMBIA                         >=50 cm          677    1347  whz              
6 months    Keneba           GAMBIA                         <48 cm           234    1347  whz              
6 months    Keneba           GAMBIA                         [48-50) cm       436    1347  whz              
6 months    MAL-ED           BANGLADESH                     >=50 cm           39     211  whz              
6 months    MAL-ED           BANGLADESH                     <48 cm            98     211  whz              
6 months    MAL-ED           BANGLADESH                     [48-50) cm        74     211  whz              
6 months    MAL-ED           BRAZIL                         >=50 cm           28      59  whz              
6 months    MAL-ED           BRAZIL                         <48 cm            15      59  whz              
6 months    MAL-ED           BRAZIL                         [48-50) cm        16      59  whz              
6 months    MAL-ED           INDIA                          >=50 cm            8      41  whz              
6 months    MAL-ED           INDIA                          <48 cm            18      41  whz              
6 months    MAL-ED           INDIA                          [48-50) cm        15      41  whz              
6 months    MAL-ED           NEPAL                          >=50 cm            8      26  whz              
6 months    MAL-ED           NEPAL                          <48 cm            11      26  whz              
6 months    MAL-ED           NEPAL                          [48-50) cm         7      26  whz              
6 months    MAL-ED           PERU                           >=50 cm           48     215  whz              
6 months    MAL-ED           PERU                           <48 cm            84     215  whz              
6 months    MAL-ED           PERU                           [48-50) cm        83     215  whz              
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm           34      93  whz              
6 months    MAL-ED           SOUTH AFRICA                   <48 cm            21      93  whz              
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm        38      93  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     118  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            39     118  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        48     118  whz              
6 months    NIH-Birth        BANGLADESH                     >=50 cm          120     518  whz              
6 months    NIH-Birth        BANGLADESH                     <48 cm           199     518  whz              
6 months    NIH-Birth        BANGLADESH                     [48-50) cm       199     518  whz              
6 months    NIH-Crypto       BANGLADESH                     >=50 cm          164     715  whz              
6 months    NIH-Crypto       BANGLADESH                     <48 cm           270     715  whz              
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm       281     715  whz              
6 months    PROBIT           BELARUS                        >=50 cm        14292   15757  whz              
6 months    PROBIT           BELARUS                        <48 cm           172   15757  whz              
6 months    PROBIT           BELARUS                        [48-50) cm      1293   15757  whz              
6 months    PROVIDE          BANGLADESH                     >=50 cm          143     603  whz              
6 months    PROVIDE          BANGLADESH                     <48 cm           213     603  whz              
6 months    PROVIDE          BANGLADESH                     [48-50) cm       247     603  whz              
6 months    ResPak           PAKISTAN                       >=50 cm           10      34  whz              
6 months    ResPak           PAKISTAN                       <48 cm            13      34  whz              
6 months    ResPak           PAKISTAN                       [48-50) cm        11      34  whz              
6 months    SAS-CompFeed     INDIA                          >=50 cm          196    1322  whz              
6 months    SAS-CompFeed     INDIA                          <48 cm           708    1322  whz              
6 months    SAS-CompFeed     INDIA                          [48-50) cm       418    1322  whz              
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm         2461    8413  whz              
6 months    ZVITAMBO         ZIMBABWE                       <48 cm          2657    8413  whz              
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm      3295    8413  whz              
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm           16     106  whz              
24 months   CMC-V-BCS-2002   INDIA                          <48 cm            50     106  whz              
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm        40     106  whz              
24 months   CMIN             BANGLADESH                     >=50 cm            0      11  whz              
24 months   CMIN             BANGLADESH                     <48 cm             5      11  whz              
24 months   CMIN             BANGLADESH                     [48-50) cm         6      11  whz              
24 months   COHORTS          GUATEMALA                      >=50 cm          264     564  whz              
24 months   COHORTS          GUATEMALA                      <48 cm           122     564  whz              
24 months   COHORTS          GUATEMALA                      [48-50) cm       178     564  whz              
24 months   COHORTS          INDIA                          >=50 cm         1035    4722  whz              
24 months   COHORTS          INDIA                          <48 cm          1928    4722  whz              
24 months   COHORTS          INDIA                          [48-50) cm      1759    4722  whz              
24 months   COHORTS          PHILIPPINES                    >=50 cm          895    2446  whz              
24 months   COHORTS          PHILIPPINES                    <48 cm           609    2446  whz              
24 months   COHORTS          PHILIPPINES                    [48-50) cm       942    2446  whz              
24 months   CONTENT          PERU                           >=50 cm            1       2  whz              
24 months   CONTENT          PERU                           <48 cm             1       2  whz              
24 months   CONTENT          PERU                           [48-50) cm         0       2  whz              
24 months   EE               PAKISTAN                       >=50 cm           10     107  whz              
24 months   EE               PAKISTAN                       <48 cm            72     107  whz              
24 months   EE               PAKISTAN                       [48-50) cm        25     107  whz              
24 months   GMS-Nepal        NEPAL                          >=50 cm           84     486  whz              
24 months   GMS-Nepal        NEPAL                          <48 cm           249     486  whz              
24 months   GMS-Nepal        NEPAL                          [48-50) cm       153     486  whz              
24 months   IRC              INDIA                          >=50 cm          142     390  whz              
24 months   IRC              INDIA                          <48 cm           110     390  whz              
24 months   IRC              INDIA                          [48-50) cm       138     390  whz              
24 months   JiVitA-3         BANGLADESH                     >=50 cm          404    7159  whz              
24 months   JiVitA-3         BANGLADESH                     <48 cm          5050    7159  whz              
24 months   JiVitA-3         BANGLADESH                     [48-50) cm      1705    7159  whz              
24 months   JiVitA-4         BANGLADESH                     >=50 cm         1074    3974  whz              
24 months   JiVitA-4         BANGLADESH                     <48 cm          1937    3974  whz              
24 months   JiVitA-4         BANGLADESH                     [48-50) cm       963    3974  whz              
24 months   Keneba           GAMBIA                         >=50 cm          535    1066  whz              
24 months   Keneba           GAMBIA                         <48 cm           197    1066  whz              
24 months   Keneba           GAMBIA                         [48-50) cm       334    1066  whz              
24 months   MAL-ED           BANGLADESH                     >=50 cm           39     187  whz              
24 months   MAL-ED           BANGLADESH                     <48 cm            80     187  whz              
24 months   MAL-ED           BANGLADESH                     [48-50) cm        68     187  whz              
24 months   MAL-ED           BRAZIL                         >=50 cm           20      42  whz              
24 months   MAL-ED           BRAZIL                         <48 cm            10      42  whz              
24 months   MAL-ED           BRAZIL                         [48-50) cm        12      42  whz              
24 months   MAL-ED           INDIA                          >=50 cm            6      39  whz              
24 months   MAL-ED           INDIA                          <48 cm            18      39  whz              
24 months   MAL-ED           INDIA                          [48-50) cm        15      39  whz              
24 months   MAL-ED           NEPAL                          >=50 cm            8      26  whz              
24 months   MAL-ED           NEPAL                          <48 cm            11      26  whz              
24 months   MAL-ED           NEPAL                          [48-50) cm         7      26  whz              
24 months   MAL-ED           PERU                           >=50 cm           34     160  whz              
24 months   MAL-ED           PERU                           <48 cm            67     160  whz              
24 months   MAL-ED           PERU                           [48-50) cm        59     160  whz              
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm           32      91  whz              
24 months   MAL-ED           SOUTH AFRICA                   <48 cm            21      91  whz              
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm        38      91  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     104  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            34     104  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        41     104  whz              
24 months   NIH-Birth        BANGLADESH                     >=50 cm           99     413  whz              
24 months   NIH-Birth        BANGLADESH                     <48 cm           160     413  whz              
24 months   NIH-Birth        BANGLADESH                     [48-50) cm       154     413  whz              
24 months   NIH-Crypto       BANGLADESH                     >=50 cm          128     514  whz              
24 months   NIH-Crypto       BANGLADESH                     <48 cm           200     514  whz              
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm       186     514  whz              
24 months   PROBIT           BELARUS                        >=50 cm         3622    3970  whz              
24 months   PROBIT           BELARUS                        <48 cm            44    3970  whz              
24 months   PROBIT           BELARUS                        [48-50) cm       304    3970  whz              
24 months   PROVIDE          BANGLADESH                     >=50 cm          139     579  whz              
24 months   PROVIDE          BANGLADESH                     <48 cm           206     579  whz              
24 months   PROVIDE          BANGLADESH                     [48-50) cm       234     579  whz              
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm           42     426  whz              
24 months   ZVITAMBO         ZIMBABWE                       <48 cm           258     426  whz              
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm       126     426  whz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/e6ef8a6a-a753-4c4e-88d8-7c26c2972d46/0e7586c6-eb8c-4459-baa2-21d7e8c08947/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e6ef8a6a-a753-4c4e-88d8-7c26c2972d46/0e7586c6-eb8c-4459-baa2-21d7e8c08947/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e6ef8a6a-a753-4c4e-88d8-7c26c2972d46/0e7586c6-eb8c-4459-baa2-21d7e8c08947/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3751395   -0.9341395    0.1838605
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.2055880   -0.8312060    0.4200300
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.7462172   -1.0866617   -0.4057727
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                -1.4466500   -1.5722875   -1.3210125
Birth       COHORTS          GUATEMALA                      <48 cm               NA                -0.2412103   -0.5062741    0.0238534
Birth       COHORTS          GUATEMALA                      [48-50) cm           NA                -0.8606734   -1.0375351   -0.6838117
Birth       COHORTS          INDIA                          >=50 cm              NA                -1.2409749   -1.2999553   -1.1819945
Birth       COHORTS          INDIA                          <48 cm               NA                -0.7682179   -0.8185574   -0.7178783
Birth       COHORTS          INDIA                          [48-50) cm           NA                -1.0450158   -1.0914926   -0.9985391
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                -1.1228433   -1.1935779   -1.0521087
Birth       COHORTS          PHILIPPINES                    <48 cm               NA                -0.3544620   -0.4591605   -0.2497635
Birth       COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.5877119   -0.6565567   -0.5188672
Birth       EE               PAKISTAN                       >=50 cm              NA                -0.7481851   -1.3636115   -0.1327587
Birth       EE               PAKISTAN                       <48 cm               NA                -0.2031183   -0.4461626    0.0399261
Birth       EE               PAKISTAN                       [48-50) cm           NA                -0.3666740   -0.7172798   -0.0160682
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                -1.3557840   -1.5524914   -1.1590767
Birth       GMS-Nepal        NEPAL                          <48 cm               NA                -0.9877442   -1.1192221   -0.8562662
Birth       GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1793415   -1.3194635   -1.0392195
Birth       IRC              INDIA                          >=50 cm              NA                -2.0555440   -2.3451329   -1.7659552
Birth       IRC              INDIA                          <48 cm               NA                -0.1919930   -0.5505909    0.1666050
Birth       IRC              INDIA                          [48-50) cm           NA                -0.6125069   -0.8630797   -0.3619342
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                -1.0790841   -1.1370386   -1.0211296
Birth       JiVitA-3         BANGLADESH                     <48 cm               NA                -0.7221917   -0.7446944   -0.6996889
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.8451643   -0.8782527   -0.8120758
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.9739452   -1.2191795   -0.7287109
Birth       JiVitA-4         BANGLADESH                     <48 cm               NA                -0.6384027   -0.7039339   -0.5728716
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.7277627   -0.8242413   -0.6312840
Birth       Keneba           GAMBIA                         >=50 cm              NA                -1.5900856   -1.6723969   -1.5077742
Birth       Keneba           GAMBIA                         <48 cm               NA                -0.5887046   -0.7499832   -0.4274261
Birth       Keneba           GAMBIA                         [48-50) cm           NA                -1.0076804   -1.1071019   -0.9082589
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                -1.1700728   -1.5274403   -0.8127053
Birth       MAL-ED           BANGLADESH                     <48 cm               NA                -0.9071533   -1.1254363   -0.6888702
Birth       MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.9449097   -1.1769349   -0.7128846
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                 0.4132951   -0.0267523    0.8533424
Birth       MAL-ED           BRAZIL                         <48 cm               NA                 0.7227941   -0.0941982    1.5397864
Birth       MAL-ED           BRAZIL                         [48-50) cm           NA                 0.3311396   -0.3551582    1.0174374
Birth       MAL-ED           INDIA                          >=50 cm              NA                -1.2755556   -1.7237003   -0.8274108
Birth       MAL-ED           INDIA                          <48 cm               NA                -1.1033333   -1.5325846   -0.6740821
Birth       MAL-ED           INDIA                          [48-50) cm           NA                -0.5900000   -1.0271837   -0.1528163
Birth       MAL-ED           NEPAL                          >=50 cm              NA                -0.7287500   -1.3613469   -0.0961531
Birth       MAL-ED           NEPAL                          <48 cm               NA                -0.9354545   -1.5903488   -0.2805603
Birth       MAL-ED           NEPAL                          [48-50) cm           NA                -0.5514286   -0.9073681   -0.1954890
Birth       MAL-ED           PERU                           >=50 cm              NA                -0.1706996   -0.4061476    0.0647485
Birth       MAL-ED           PERU                           <48 cm               NA                 0.0388031   -0.1747408    0.2523469
Birth       MAL-ED           PERU                           [48-50) cm           NA                -0.0805301   -0.2659869    0.1049266
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.4005346   -0.7554878   -0.0455813
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.1232616   -0.2953247    0.5418479
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.4083941   -0.7253085   -0.0914797
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.4796433    0.1595135    0.7997730
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 1.0722083    0.6477388    1.4966778
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.8128600    0.5381716    1.0875485
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.5756464   -1.7634446   -1.3878483
Birth       NIH-Birth        BANGLADESH                     <48 cm               NA                -1.2861039   -1.4533256   -1.1188823
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.2629904   -1.4042962   -1.1216845
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                -1.4738829   -1.6326221   -1.3151437
Birth       NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.0982659   -1.2364976   -0.9600343
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -1.2430208   -1.3800422   -1.1059993
Birth       PROBIT           BELARUS                        >=50 cm              NA                -1.2019553   -1.4154551   -0.9884556
Birth       PROBIT           BELARUS                        <48 cm               NA                 0.0752699   -0.0204598    0.1709996
Birth       PROBIT           BELARUS                        [48-50) cm           NA                -0.6954725   -0.8988772   -0.4920677
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                -1.3335905   -1.4931648   -1.1740162
Birth       PROVIDE          BANGLADESH                     <48 cm               NA                -1.3307134   -1.4629837   -1.1984431
Birth       PROVIDE          BANGLADESH                     [48-50) cm           NA                -1.2517266   -1.3746854   -1.1287678
Birth       ResPak           PAKISTAN                       >=50 cm              NA                -0.7780905   -1.4306936   -0.1254875
Birth       ResPak           PAKISTAN                       <48 cm               NA                -0.1292537   -1.0354595    0.7769522
Birth       ResPak           PAKISTAN                       [48-50) cm           NA                -0.1948374   -0.9288083    0.5391334
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                -0.9445078   -1.2513269   -0.6376887
Birth       SAS-CompFeed     INDIA                          <48 cm               NA                -0.5857132   -0.8168786   -0.3545478
Birth       SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.7154350   -0.8081278   -0.6227423
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1293703   -1.1728667   -1.0858738
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0496341   -0.0006457    0.0999139
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4491534   -0.4867960   -0.4115109
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1277263   -1.0593594    1.3148120
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.5347830   -0.9485058   -0.1210603
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.5926598   -0.9590673   -0.2262523
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.2706862    0.1553360    0.3860364
6 months    COHORTS          GUATEMALA                      <48 cm               NA                 0.0707832   -0.1454127    0.2869791
6 months    COHORTS          GUATEMALA                      [48-50) cm           NA                 0.2188498    0.0546119    0.3830877
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.4842454   -0.5431728   -0.4253180
6 months    COHORTS          INDIA                          <48 cm               NA                -0.8449806   -0.8917403   -0.7982210
6 months    COHORTS          INDIA                          [48-50) cm           NA                -0.6557039   -0.7034299   -0.6079779
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.2472164   -0.3140256   -0.1804073
6 months    COHORTS          PHILIPPINES                    <48 cm               NA                -0.3659020   -0.4512890   -0.2805150
6 months    COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.2956682   -0.3640828   -0.2272537
6 months    EE               PAKISTAN                       >=50 cm              NA                -0.8252390   -1.3575952   -0.2928828
6 months    EE               PAKISTAN                       <48 cm               NA                -0.9157144   -1.0752111   -0.7562177
6 months    EE               PAKISTAN                       [48-50) cm           NA                -0.6806020   -0.9752096   -0.3859944
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3051239   -0.5146666   -0.0955813
6 months    GMS-Nepal        NEPAL                          <48 cm               NA                -0.6827012   -0.8017949   -0.5636074
6 months    GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.6328062   -0.7886022   -0.4770102
6 months    IRC              INDIA                          >=50 cm              NA                -0.6783643   -0.8951622   -0.4615663
6 months    IRC              INDIA                          <48 cm               NA                -0.5012092   -0.7816646   -0.2207537
6 months    IRC              INDIA                          [48-50) cm           NA                -0.6764510   -0.9230606   -0.4298415
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.4955448   -0.5768561   -0.4142336
6 months    JiVitA-3         BANGLADESH                     <48 cm               NA                -0.6392082   -0.6635301   -0.6148862
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.5424575   -0.5830623   -0.5018527
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.3354254   -0.4139110   -0.2569399
6 months    JiVitA-4         BANGLADESH                     <48 cm               NA                -0.4062168   -0.4716843   -0.3407493
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.3590032   -0.4392917   -0.2787147
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.1456385   -0.2301881   -0.0610889
6 months    Keneba           GAMBIA                         <48 cm               NA                -0.1894115   -0.3337857   -0.0450373
6 months    Keneba           GAMBIA                         [48-50) cm           NA                -0.2682918   -0.3867318   -0.1498519
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0321339   -0.3939949    0.4582626
6 months    MAL-ED           BANGLADESH                     <48 cm               NA                -0.3100977   -0.4786729   -0.1415225
6 months    MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.0514190   -0.2892712    0.1864332
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                 1.0035829    0.5858785    1.4212874
6 months    MAL-ED           BRAZIL                         <48 cm               NA                 0.5396032   -0.1337383    1.2129448
6 months    MAL-ED           BRAZIL                         [48-50) cm           NA                 0.8506946    0.1175449    1.5838444
6 months    MAL-ED           INDIA                          >=50 cm              NA                -0.7502083   -1.4517037   -0.0487129
6 months    MAL-ED           INDIA                          <48 cm               NA                -0.5703704   -1.0696501   -0.0710906
6 months    MAL-ED           INDIA                          [48-50) cm           NA                -0.7316667   -1.2274927   -0.2358406
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.2881250   -0.8678030    0.2915530
6 months    MAL-ED           NEPAL                          <48 cm               NA                -0.6550000   -1.0447672   -0.2652328
6 months    MAL-ED           NEPAL                          [48-50) cm           NA                -0.1540476   -0.7631832    0.4550880
6 months    MAL-ED           PERU                           >=50 cm              NA                 1.1129279    0.8172499    1.4086060
6 months    MAL-ED           PERU                           <48 cm               NA                 1.0500706    0.8016552    1.2984861
6 months    MAL-ED           PERU                           [48-50) cm           NA                 1.0182593    0.8061157    1.2304030
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.5594027    0.0604712    1.0583342
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               NA                 1.0521079    0.4918005    1.6124152
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.1332047   -0.5715430    0.3051336
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.9529341    0.5642196    1.3416486
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.3608185    0.0668349    0.6548020
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.5107795    0.2483207    0.7732383
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.3045848   -0.5055296   -0.1036401
6 months    NIH-Birth        BANGLADESH                     <48 cm               NA                -0.5667631   -0.7182264   -0.4152998
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.4583224   -0.5959350   -0.3207098
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1230561   -0.0381299    0.2842421
6 months    NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.0313788   -0.1048773    0.1676348
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.0113375   -0.1335052    0.1108301
6 months    PROBIT           BELARUS                        >=50 cm              NA                 0.5831283    0.5226379    0.6436187
6 months    PROBIT           BELARUS                        <48 cm               NA                 0.5594955    0.4527670    0.6662241
6 months    PROBIT           BELARUS                        [48-50) cm           NA                 0.4829652    0.3789049    0.5870255
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1380874   -0.0391783    0.3153530
6 months    PROVIDE          BANGLADESH                     <48 cm               NA                -0.4521294   -0.5874584   -0.3168004
6 months    PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.1746586   -0.2990924   -0.0502248
6 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.2425110   -0.3218781    0.8069001
6 months    ResPak           PAKISTAN                       <48 cm               NA                 0.3640373   -0.1344847    0.8625592
6 months    ResPak           PAKISTAN                       [48-50) cm           NA                 0.2279539   -0.9858794    1.4417872
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.5396605   -0.7240904   -0.3552306
6 months    SAS-CompFeed     INDIA                          <48 cm               NA                -0.7379995   -0.8785741   -0.5974250
6 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.5984527   -0.7480156   -0.4488899
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3925635    0.3449919    0.4401352
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.2332553    0.1859172    0.2805934
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.3027064    0.2611291    0.3442836
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0810195   -0.5437361    0.3816971
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.6611191   -0.9240708   -0.3981674
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.3524437   -0.6504519   -0.0544355
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0643266   -0.1644612    0.0358081
24 months   COHORTS          GUATEMALA                      <48 cm               NA                -0.4711439   -0.6612566   -0.2810312
24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2295798   -0.3505110   -0.1086486
24 months   COHORTS          INDIA                          >=50 cm              NA                -0.2927535   -0.3552204   -0.2302866
24 months   COHORTS          INDIA                          <48 cm               NA                -0.7930915   -0.8388157   -0.7473672
24 months   COHORTS          INDIA                          [48-50) cm           NA                -0.5555231   -0.6027993   -0.5082469
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4453779   -0.5025719   -0.3881840
24 months   COHORTS          PHILIPPINES                    <48 cm               NA                -0.8426032   -0.9175125   -0.7676940
24 months   COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.6118334   -0.6720421   -0.5516247
24 months   EE               PAKISTAN                       >=50 cm              NA                -0.9364406   -1.5529386   -0.3199426
24 months   EE               PAKISTAN                       <48 cm               NA                -1.1105025   -1.3282082   -0.8927968
24 months   EE               PAKISTAN                       [48-50) cm           NA                -1.1500284   -1.5071193   -0.7929375
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.8094646   -1.0369267   -0.5820026
24 months   GMS-Nepal        NEPAL                          <48 cm               NA                -1.2396165   -1.3578405   -1.1213926
24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1340946   -1.2984471   -0.9697420
24 months   IRC              INDIA                          >=50 cm              NA                -0.6728561   -0.8284736   -0.5172387
24 months   IRC              INDIA                          <48 cm               NA                -0.9008614   -1.0652575   -0.7364654
24 months   IRC              INDIA                          [48-50) cm           NA                -0.7284562   -0.8942982   -0.5626141
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.9386973   -1.0500467   -0.8273479
24 months   JiVitA-3         BANGLADESH                     <48 cm               NA                -1.3918163   -1.4213292   -1.3623033
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           NA                -1.1321247   -1.1805823   -1.0836671
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -1.1008098   -1.1691261   -1.0324934
24 months   JiVitA-4         BANGLADESH                     <48 cm               NA                -1.3541806   -1.4044299   -1.3039313
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                -1.1505772   -1.2201483   -1.0810061
24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.6706567   -0.7536736   -0.5876398
24 months   Keneba           GAMBIA                         <48 cm               NA                -0.9360725   -1.0835509   -0.7885941
24 months   Keneba           GAMBIA                         [48-50) cm           NA                -0.9062641   -1.0150781   -0.7974502
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.7006421   -1.0522914   -0.3489927
24 months   MAL-ED           BANGLADESH                     <48 cm               NA                -1.0278797   -1.2107099   -0.8450494
24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.7970018   -1.0072273   -0.5867762
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.4727581    0.0446015    0.9009146
24 months   MAL-ED           BRAZIL                         <48 cm               NA                -0.1981970   -1.1475310    0.7511369
24 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.3595169   -0.6743441    1.3933778
24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.4358333   -1.1701735    0.2985068
24 months   MAL-ED           INDIA                          <48 cm               NA                -1.2241667   -1.6277760   -0.8205574
24 months   MAL-ED           INDIA                          [48-50) cm           NA                -1.2543333   -1.5915308   -0.9171358
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.4606250   -0.9226786    0.0014286
24 months   MAL-ED           NEPAL                          <48 cm               NA                -1.1881818   -1.4731126   -0.9032511
24 months   MAL-ED           NEPAL                          [48-50) cm           NA                -0.9200000   -1.4410066   -0.3989934
24 months   MAL-ED           PERU                           >=50 cm              NA                 0.5517460    0.2738784    0.8296136
24 months   MAL-ED           PERU                           <48 cm               NA                -0.1204113   -0.3690831    0.1282605
24 months   MAL-ED           PERU                           [48-50) cm           NA                -0.0006068   -0.2091627    0.2079492
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.5072380    0.2274150    0.7870611
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.6418182    0.1932437    1.0903926
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.1718679   -0.1343650    0.4781008
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.4077837    0.0747151    0.7408523
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0066424   -0.3745049    0.3612202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.0565092   -0.2215936    0.3346120
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6305866   -0.8075995   -0.4535738
24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                -0.9920165   -1.1645083   -0.8195248
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.9771561   -1.1389796   -0.8153327
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.4190236   -0.6115465   -0.2265007
24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                -0.7338114   -0.8765317   -0.5910911
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.6109757   -0.7706284   -0.4513231
24 months   PROBIT           BELARUS                        >=50 cm              NA                 0.7217219    0.6079006    0.8355433
24 months   PROBIT           BELARUS                        <48 cm               NA                 0.4943810    0.1666692    0.8220928
24 months   PROBIT           BELARUS                        [48-50) cm           NA                 0.4517234    0.2909660    0.6124808
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.6209387   -0.7988688   -0.4430086
24 months   PROVIDE          BANGLADESH                     <48 cm               NA                -1.1776370   -1.2996712   -1.0556027
24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.8035544   -0.9380412   -0.6690676
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3557979   -1.6599461   -1.0516498
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.0738629   -1.1972187   -0.9505070
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.3355167   -1.5368609   -1.1341725


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
Birth       Keneba           GAMBIA                         NA                   NA                -1.2343618   -1.2966897   -1.1720339
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       MAL-ED           INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED           NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED           PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        NA                   NA                -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ResPak           PAKISTAN                       NA                   NA                -0.3663158   -0.7677415    0.0351099
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4931429   -0.7890257   -0.1972601
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.2193904    0.1338361    0.3049448
6 months    COHORTS          INDIA                          NA                   NA                -0.6983940   -0.7275858   -0.6692022
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2943461   -0.3357404   -0.2529517
6 months    EE               PAKISTAN                       NA                   NA                -0.8527871   -0.9897809   -0.7157933
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6026850   -0.6889114   -0.5164586
6 months    IRC              INDIA                          NA                   NA                -0.6409340   -0.7788045   -0.5030635
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.6072473   -0.6281750   -0.5863195
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3757033   -0.4185197   -0.3328869
6 months    Keneba           GAMBIA                         NA                   NA                -0.1974657   -0.2592285   -0.1357029
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1458294   -0.2842227   -0.0074361
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.8580508    0.5394364    1.1766653
6 months    MAL-ED           INDIA                          NA                   NA                -0.6644715   -0.9812646   -0.3476785
6 months    MAL-ED           NEPAL                          NA                   NA                -0.4072436   -0.7125541   -0.1019331
6 months    MAL-ED           PERU                           NA                   NA                 1.0510698    0.9102569    1.1918826
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4017921    0.1396820    0.6639023
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5110593    0.3321196    0.6899991
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4636760   -0.5549942   -0.3723578
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ResPak           PAKISTAN                       NA                   NA                 0.2176471   -0.1948962    0.6301903
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6674924   -0.8047012   -0.5302836
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3089671    0.2831612    0.3347730
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4529088   -0.6339053   -0.2719123
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2016312   -0.2740358   -0.1292266
24 months   COHORTS          INDIA                          NA                   NA                -0.5945743   -0.6244188   -0.5647299
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6103189   -0.6471371   -0.5735006
24 months   EE               PAKISTAN                       NA                   NA                -0.9929439   -1.1707082   -0.8151796
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1336900   -1.2226955   -1.0446844
24 months   IRC              INDIA                          NA                   NA                -0.7536624   -0.8467166   -0.6606082
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.3046571   -1.3299587   -1.2793555
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2411122   -1.2752162   -1.2070083
24 months   Keneba           GAMBIA                         NA                   NA                -0.7949018   -0.8551887   -0.7346150
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8296257   -0.9583167   -0.7009347
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.2347222   -0.1702799    0.6397243
24 months   MAL-ED           INDIA                          NA                   NA                -1.1144872   -1.3842438   -0.8447305
24 months   MAL-ED           NEPAL                          NA                   NA                -0.8921154   -1.1547051   -0.6295257
24 months   MAL-ED           PERU                           NA                   NA                 0.0490417   -0.0909855    0.1890689
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3919414    0.2031981    0.5806847
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1324519   -0.0568428    0.3217466
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9069451   -1.0069853   -0.8069049
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1803052   -1.2806626   -1.0799477


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.1695515   -0.6708764    1.0099793
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.3710777   -1.0263634    0.2842080
Birth       COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.2054397    0.9124856    1.4983937
Birth       COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.5859766    0.3692178    0.8027354
Birth       COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <48 cm               >=50 cm            0.4727570    0.3953442    0.5501698
Birth       COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1959591    0.1210421    0.2708761
Birth       COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.7683813    0.6425442    0.8942185
Birth       COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            0.5351314    0.4369341    0.6333287
Birth       EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       <48 cm               >=50 cm            0.5450668   -0.1182630    1.2083967
Birth       EE               PAKISTAN                       [48-50) cm           >=50 cm            0.3815111   -0.3276767    1.0906989
Birth       GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.3680399    0.1315858    0.6044939
Birth       GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1764425   -0.0647773    0.4176623
Birth       IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <48 cm               >=50 cm            1.8635511    1.4028114    2.3242907
Birth       IRC              INDIA                          [48-50) cm           >=50 cm            1.4430371    1.0596392    1.8264350
Birth       JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <48 cm               >=50 cm            0.3568924    0.2963353    0.4174495
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            0.2339198    0.1688249    0.2990148
Birth       JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.3355425    0.0814855    0.5895995
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.2461825   -0.0172663    0.5096313
Birth       Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <48 cm               >=50 cm            1.0013809    0.8205634    1.1821985
Birth       Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.5824052    0.4537096    0.7111007
Birth       MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.2629195   -0.1575588    0.6833979
Birth       MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.2251631   -0.2013496    0.6516758
Birth       MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.3094990   -0.6249440    1.2439421
Birth       MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0821555   -0.9146358    0.7503248
Birth       MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <48 cm               >=50 cm            0.1722222   -0.4483343    0.7927787
Birth       MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.6855556    0.0594859    1.3116252
Birth       MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.2067045   -1.1172348    0.7038257
Birth       MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.1773214   -0.5485380    0.9031808
Birth       MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <48 cm               >=50 cm            0.2095026   -0.1100438    0.5290491
Birth       MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0901694   -0.2083932    0.3887321
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.5237962   -0.0272572    1.0748496
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0078595   -0.4865474    0.4708283
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.5925650    0.0605877    1.1245424
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.3332168   -0.0914567    0.7578902
Birth       NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.2895425    0.0381984    0.5408866
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.3126561    0.0778177    0.5474944
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.3756170    0.1649564    0.5862776
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.2308621    0.0211851    0.4405392
Birth       PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <48 cm               >=50 cm            1.2772252    1.0480918    1.5063587
Birth       PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.5064829    0.2794617    0.7335040
Birth       PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0028771   -0.2045582    0.2103124
Birth       PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0818639   -0.1194090    0.2831369
Birth       ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       <48 cm               >=50 cm            0.6488369   -0.4810771    1.7787508
Birth       ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.5832531   -0.3986673    1.5651736
Birth       SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.3587947    0.1922425    0.5253468
Birth       SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.2290728   -0.0061450    0.4642906
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.1790044    1.1126713    1.2453374
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.6802168    0.6229675    0.7374661
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.6625093   -1.9239259    0.5989073
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.7203860   -1.9624962    0.5217241
6 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.1999030   -0.4451396    0.0453336
6 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0518364   -0.2526885    0.1490157
6 months    COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <48 cm               >=50 cm           -0.3607352   -0.4358797   -0.2855907
6 months    COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.1714585   -0.2471633   -0.0957537
6 months    COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.1186856   -0.2270689   -0.0103022
6 months    COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0484518   -0.1442243    0.0473207
6 months    EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       <48 cm               >=50 cm           -0.0904754   -0.6469499    0.4659990
6 months    EE               PAKISTAN                       [48-50) cm           >=50 cm            0.1446370   -0.4643242    0.7535982
6 months    GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.3775773   -0.6184163   -0.1367382
6 months    GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3276823   -0.5886356   -0.0667290
6 months    IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <48 cm               >=50 cm            0.1771551   -0.1783446    0.5326548
6 months    IRC              INDIA                          [48-50) cm           >=50 cm            0.0019132   -0.3306874    0.3345139
6 months    JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -0.1436633   -0.2273010   -0.0600257
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.0469127   -0.1354506    0.0416253
6 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0707913   -0.1714822    0.0298996
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0235778   -0.1329164    0.0857609
6 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0437730   -0.2111486    0.1236026
6 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.1226533   -0.2683251    0.0230185
6 months    MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.3422316   -0.8014329    0.1169698
6 months    MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0835529   -0.5719721    0.4048663
6 months    MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.4639797   -1.2606546    0.3326952
6 months    MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.1528883   -1.0101808    0.7044042
6 months    MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <48 cm               >=50 cm            0.1798380   -0.6811940    1.0408700
6 months    MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0185417   -0.8404923    0.8775756
6 months    MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.3668750   -1.0654057    0.3316557
6 months    MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.1340774   -0.7067988    0.9749536
6 months    MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <48 cm               >=50 cm           -0.0628573   -0.4491204    0.3234058
6 months    MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0946686   -0.4591659    0.2698288
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.4927052   -0.2660750    1.2514854
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.6926074   -1.3559003   -0.0293145
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.5921156   -1.0846990   -0.0995323
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.4421546   -0.9155002    0.0311910
6 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.2621783   -0.5140630   -0.0102936
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.1537376   -0.3975609    0.0900857
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0916773   -0.3030491    0.1196944
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.1343936   -0.3371155    0.0683282
6 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0236328   -0.1327289    0.0854634
6 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.1001631   -0.1897739   -0.0105524
6 months    PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.5902168   -0.8133560   -0.3670776
6 months    PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.3127460   -0.5293283   -0.0961637
6 months    ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       <48 cm               >=50 cm            0.1215263   -0.6394248    0.8824773
6 months    ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.0145571   -1.3459644    1.3168502
6 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.1983390   -0.2933676   -0.1033105
6 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0587922   -0.2012629    0.0836784
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.1593083   -0.2264013   -0.0922152
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0898572   -0.1530364   -0.0266780
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.5800996   -1.1146106   -0.0455886
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.2714242   -0.8262095    0.2833610
24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.4068173   -0.6220260   -0.1916087
24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.1652532   -0.3225783   -0.0079280
24 months   COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <48 cm               >=50 cm           -0.5003380   -0.5773375   -0.4233384
24 months   COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.2627696   -0.3406549   -0.1848843
24 months   COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.3972253   -0.4914346   -0.3030160
24 months   COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.1664555   -0.2495085   -0.0834024
24 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.1740619   -0.8247369    0.4766130
24 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.2135878   -0.9364340    0.5092584
24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.4301519   -0.6866113   -0.1736925
24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3246299   -0.6053621   -0.0438977
24 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <48 cm               >=50 cm           -0.2280053   -0.4556235   -0.0003870
24 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.0556000   -0.2825788    0.1713787
24 months   JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -0.4531190   -0.5693889   -0.3368490
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.1934274   -0.3137902   -0.0730646
24 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.2533708   -0.3379423   -0.1687993
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0497674   -0.1488160    0.0492811
24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.2654158   -0.4346620   -0.0961696
24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.2356074   -0.3725051   -0.0987098
24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.3272376   -0.7278540    0.0733788
24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0963597   -0.5125919    0.3198725
24 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.6709551   -1.7288749    0.3869647
24 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.1132412   -1.2500581    1.0235756
24 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -0.7883333   -1.6262808    0.0496141
24 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.8185000   -1.6265579   -0.0104421
24 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.7275568   -1.2704003   -0.1847133
24 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.4593750   -1.1557523    0.2370023
24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.6721573   -1.0515954   -0.2927193
24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.5523528   -0.9035304   -0.2011752
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.1345801   -0.3949254    0.6640856
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.3353702   -0.7510047    0.0802644
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.4144261   -0.9109332    0.0820810
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.3512745   -0.7852944    0.0827453
24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.3614299   -0.6086432   -0.1142166
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.3465695   -0.5863092   -0.1068298
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.3147878   -0.5539462   -0.0756293
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.1919522   -0.4407189    0.0568145
24 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <48 cm               >=50 cm           -0.2273409   -0.5425035    0.0878216
24 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.2699985   -0.4276624   -0.1123347
24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.5566982   -0.7726033   -0.3407932
24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.1826157   -0.4055500    0.0403187
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.2819351   -0.0461037    0.6099738
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0202812   -0.3449822    0.3855446


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0896861   -0.6494424    0.4700702
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                 0.3845071    0.2881308    0.4808835
Birth       COHORTS          INDIA                          >=50 cm              NA                 0.2562292    0.2030136    0.3094448
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                 0.3801183    0.3227253    0.4375112
Birth       EE               PAKISTAN                       >=50 cm              NA                 0.4148800   -0.1635694    0.9933294
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2393410    0.0583349    0.4203471
Birth       IRC              INDIA                          >=50 cm              NA                 1.0449609    0.7978639    1.2920579
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.3012568    0.2461311    0.3563826
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.2853183    0.0517662    0.5188704
Birth       Keneba           GAMBIA                         >=50 cm              NA                 0.3557238    0.2940874    0.4173602
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                 0.2282123   -0.0925854    0.5490101
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                -0.0103918   -0.3634607    0.3426770
Birth       MAL-ED           INDIA                          >=50 cm              NA                 0.3431111   -0.0993435    0.7855657
Birth       MAL-ED           NEPAL                          >=50 cm              NA                -0.0397115   -0.5703614    0.4909384
Birth       MAL-ED           PERU                           >=50 cm              NA                 0.1186820   -0.0944273    0.3317914
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.2079512   -0.0803469    0.4962493
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2827915   -0.0098194    0.5754024
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2257247    0.0598794    0.3915700
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.2297316    0.0858387    0.3736244
Birth       PROBIT           BELARUS                        >=50 cm              NA                 0.0527771    0.0283147    0.0772395
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0351319   -0.1073414    0.1776051
Birth       ResPak           PAKISTAN                       >=50 cm              NA                 0.4117748   -0.1515235    0.9750730
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                 0.2744625    0.1120072    0.4369178
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.6138806    0.5765131    0.6512481
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.6208691   -1.6621669    0.4204287
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                -0.0512958   -0.1356702    0.0330786
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.2141486   -0.2674284   -0.1608688
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.0471296   -0.1014180    0.0071588
6 months    EE               PAKISTAN                       >=50 cm              NA                -0.0275481   -0.5238899    0.4687937
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.2975611   -0.4876408   -0.1074814
6 months    IRC              INDIA                          >=50 cm              NA                 0.0374302   -0.1461041    0.2209646
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.1117024   -0.1892503   -0.0341546
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0402778   -0.1084324    0.0278767
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.0518272   -0.1135232    0.0098688
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.1779632   -0.5458801    0.1899536
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                -0.1455321   -0.4960487    0.2049845
6 months    MAL-ED           INDIA                          >=50 cm              NA                 0.0857368   -0.5470478    0.7185213
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.1191186   -0.5907705    0.3525333
6 months    MAL-ED           PERU                           >=50 cm              NA                -0.0618582   -0.3239366    0.2002203
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.1576106   -0.5776932    0.2624721
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.4418748   -0.7686083   -0.1151412
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.1590912   -0.3326872    0.0145048
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0932939   -0.2361964    0.0496087
6 months    PROBIT           BELARUS                        >=50 cm              NA                -0.0090184   -0.0180263   -0.0000105
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.3371780   -0.4914233   -0.1829328
6 months    ResPak           PAKISTAN                       >=50 cm              NA                -0.0248639   -0.5695805    0.5198527
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.1278319   -0.2235222   -0.0321417
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0835965   -0.1240975   -0.0430955
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3718893   -0.8079785    0.0641998
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.1373046   -0.2155810   -0.0590282
24 months   COHORTS          INDIA                          >=50 cm              NA                -0.3018208   -0.3570367   -0.2466050
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -0.1649409   -0.2121862   -0.1176957
24 months   EE               PAKISTAN                       >=50 cm              NA                -0.0565033   -0.6608428    0.5478361
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3242253   -0.5297755   -0.1186752
24 months   IRC              INDIA                          >=50 cm              NA                -0.0808062   -0.2050018    0.0433893
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.3659598   -0.4741223   -0.2577972
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.1403025   -0.1994485   -0.0811564
24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.1242451   -0.1846371   -0.0638532
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.1289836   -0.4375287    0.1795614
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.2380358   -0.6829238    0.2068521
24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.6786538   -1.3465606   -0.0107471
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.4314904   -0.8201628   -0.0428180
24 months   MAL-ED           PERU                           >=50 cm              NA                -0.5027043   -0.7680752   -0.2373335
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.1152967   -0.3612615    0.1306682
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.2753318   -0.5674692    0.0168055
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.2763585   -0.4389924   -0.1137246
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.1913266   -0.3562749   -0.0263783
24 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0235813   -0.0424509   -0.0047117
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.2719283   -0.4256130   -0.1182436
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1754928   -0.1172085    0.4681940

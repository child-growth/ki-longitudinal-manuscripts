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
Birth       CMIN             BANGLADESH                     <48 cm            12      19  whz              
Birth       CMIN             BANGLADESH                     [48-50) cm         5      19  whz              
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
Birth       EE               PAKISTAN                       >=50 cm           19     177  whz              
Birth       EE               PAKISTAN                       <48 cm           112     177  whz              
Birth       EE               PAKISTAN                       [48-50) cm        46     177  whz              
Birth       GMS-Nepal        NEPAL                          >=50 cm          103     641  whz              
Birth       GMS-Nepal        NEPAL                          <48 cm           330     641  whz              
Birth       GMS-Nepal        NEPAL                          [48-50) cm       208     641  whz              
Birth       IRC              INDIA                          >=50 cm          120     343  whz              
Birth       IRC              INDIA                          <48 cm            87     343  whz              
Birth       IRC              INDIA                          [48-50) cm       136     343  whz              
Birth       JiVitA-3         BANGLADESH                     >=50 cm         1213   18014  whz              
Birth       JiVitA-3         BANGLADESH                     <48 cm         11719   18014  whz              
Birth       JiVitA-3         BANGLADESH                     [48-50) cm      5082   18014  whz              
Birth       JiVitA-4         BANGLADESH                     >=50 cm          178    2396  whz              
Birth       JiVitA-4         BANGLADESH                     <48 cm          1487    2396  whz              
Birth       JiVitA-4         BANGLADESH                     [48-50) cm       731    2396  whz              
Birth       Keneba           GAMBIA                         >=50 cm          736    1465  whz              
Birth       Keneba           GAMBIA                         <48 cm           240    1465  whz              
Birth       Keneba           GAMBIA                         [48-50) cm       489    1465  whz              
Birth       MAL-ED           BANGLADESH                     >=50 cm           35     215  whz              
Birth       MAL-ED           BANGLADESH                     <48 cm           101     215  whz              
Birth       MAL-ED           BANGLADESH                     [48-50) cm        79     215  whz              
Birth       MAL-ED           BRAZIL                         >=50 cm           23      62  whz              
Birth       MAL-ED           BRAZIL                         <48 cm            15      62  whz              
Birth       MAL-ED           BRAZIL                         [48-50) cm        24      62  whz              
Birth       MAL-ED           INDIA                          >=50 cm            9      45  whz              
Birth       MAL-ED           INDIA                          <48 cm            20      45  whz              
Birth       MAL-ED           INDIA                          [48-50) cm        16      45  whz              
Birth       MAL-ED           NEPAL                          >=50 cm            7      26  whz              
Birth       MAL-ED           NEPAL                          <48 cm            11      26  whz              
Birth       MAL-ED           NEPAL                          [48-50) cm         8      26  whz              
Birth       MAL-ED           PERU                           >=50 cm           41     228  whz              
Birth       MAL-ED           PERU                           <48 cm            87     228  whz              
Birth       MAL-ED           PERU                           [48-50) cm       100     228  whz              
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm           34     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   <48 cm            34     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm        52     120  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           20     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            34     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        61     115  whz              
Birth       NIH-Birth        BANGLADESH                     >=50 cm          121     575  whz              
Birth       NIH-Birth        BANGLADESH                     <48 cm           224     575  whz              
Birth       NIH-Birth        BANGLADESH                     [48-50) cm       230     575  whz              
Birth       NIH-Crypto       BANGLADESH                     >=50 cm          160     707  whz              
Birth       NIH-Crypto       BANGLADESH                     <48 cm           267     707  whz              
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm       280     707  whz              
Birth       PROBIT           BELARUS                        >=50 cm        12557   13817  whz              
Birth       PROBIT           BELARUS                        <48 cm           140   13817  whz              
Birth       PROBIT           BELARUS                        [48-50) cm      1120   13817  whz              
Birth       PROVIDE          BANGLADESH                     >=50 cm          121     532  whz              
Birth       PROVIDE          BANGLADESH                     <48 cm           189     532  whz              
Birth       PROVIDE          BANGLADESH                     [48-50) cm       222     532  whz              
Birth       ResPak           PAKISTAN                       >=50 cm           10      38  whz              
Birth       ResPak           PAKISTAN                       <48 cm            15      38  whz              
Birth       ResPak           PAKISTAN                       [48-50) cm        13      38  whz              
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
6 months    CMIN             BANGLADESH                     <48 cm             7      12  whz              
6 months    CMIN             BANGLADESH                     [48-50) cm         5      12  whz              
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
6 months    EE               PAKISTAN                       >=50 cm           22     238  whz              
6 months    EE               PAKISTAN                       <48 cm           172     238  whz              
6 months    EE               PAKISTAN                       [48-50) cm        44     238  whz              
6 months    GMS-Nepal        NEPAL                          >=50 cm           87     563  whz              
6 months    GMS-Nepal        NEPAL                          <48 cm           305     563  whz              
6 months    GMS-Nepal        NEPAL                          [48-50) cm       171     563  whz              
6 months    IRC              INDIA                          >=50 cm          141     389  whz              
6 months    IRC              INDIA                          <48 cm           110     389  whz              
6 months    IRC              INDIA                          [48-50) cm       138     389  whz              
6 months    JiVitA-3         BANGLADESH                     >=50 cm          806   13899  whz              
6 months    JiVitA-3         BANGLADESH                     <48 cm          9824   13899  whz              
6 months    JiVitA-3         BANGLADESH                     [48-50) cm      3269   13899  whz              
6 months    JiVitA-4         BANGLADESH                     >=50 cm         1101    4024  whz              
6 months    JiVitA-4         BANGLADESH                     <48 cm          1927    4024  whz              
6 months    JiVitA-4         BANGLADESH                     [48-50) cm       996    4024  whz              
6 months    Keneba           GAMBIA                         >=50 cm          677    1347  whz              
6 months    Keneba           GAMBIA                         <48 cm           234    1347  whz              
6 months    Keneba           GAMBIA                         [48-50) cm       436    1347  whz              
6 months    MAL-ED           BANGLADESH                     >=50 cm           35     211  whz              
6 months    MAL-ED           BANGLADESH                     <48 cm           101     211  whz              
6 months    MAL-ED           BANGLADESH                     [48-50) cm        75     211  whz              
6 months    MAL-ED           BRAZIL                         >=50 cm           21      59  whz              
6 months    MAL-ED           BRAZIL                         <48 cm            16      59  whz              
6 months    MAL-ED           BRAZIL                         [48-50) cm        22      59  whz              
6 months    MAL-ED           INDIA                          >=50 cm            8      41  whz              
6 months    MAL-ED           INDIA                          <48 cm            20      41  whz              
6 months    MAL-ED           INDIA                          [48-50) cm        13      41  whz              
6 months    MAL-ED           NEPAL                          >=50 cm            7      26  whz              
6 months    MAL-ED           NEPAL                          <48 cm            11      26  whz              
6 months    MAL-ED           NEPAL                          [48-50) cm         8      26  whz              
6 months    MAL-ED           PERU                           >=50 cm           38     215  whz              
6 months    MAL-ED           PERU                           <48 cm            88     215  whz              
6 months    MAL-ED           PERU                           [48-50) cm        89     215  whz              
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm           29      93  whz              
6 months    MAL-ED           SOUTH AFRICA                   <48 cm            24      93  whz              
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm        40      93  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           19     118  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            41     118  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        58     118  whz              
6 months    NIH-Birth        BANGLADESH                     >=50 cm          106     518  whz              
6 months    NIH-Birth        BANGLADESH                     <48 cm           210     518  whz              
6 months    NIH-Birth        BANGLADESH                     [48-50) cm       202     518  whz              
6 months    NIH-Crypto       BANGLADESH                     >=50 cm          164     715  whz              
6 months    NIH-Crypto       BANGLADESH                     <48 cm           270     715  whz              
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm       281     715  whz              
6 months    PROBIT           BELARUS                        >=50 cm        14292   15757  whz              
6 months    PROBIT           BELARUS                        <48 cm           172   15757  whz              
6 months    PROBIT           BELARUS                        [48-50) cm      1293   15757  whz              
6 months    PROVIDE          BANGLADESH                     >=50 cm          143     603  whz              
6 months    PROVIDE          BANGLADESH                     <48 cm           213     603  whz              
6 months    PROVIDE          BANGLADESH                     [48-50) cm       247     603  whz              
6 months    ResPak           PAKISTAN                       >=50 cm            8      34  whz              
6 months    ResPak           PAKISTAN                       <48 cm            16      34  whz              
6 months    ResPak           PAKISTAN                       [48-50) cm        10      34  whz              
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
24 months   CMIN             BANGLADESH                     <48 cm             6      11  whz              
24 months   CMIN             BANGLADESH                     [48-50) cm         5      11  whz              
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
24 months   EE               PAKISTAN                       <48 cm            75     107  whz              
24 months   EE               PAKISTAN                       [48-50) cm        22     107  whz              
24 months   GMS-Nepal        NEPAL                          >=50 cm           76     486  whz              
24 months   GMS-Nepal        NEPAL                          <48 cm           255     486  whz              
24 months   GMS-Nepal        NEPAL                          [48-50) cm       155     486  whz              
24 months   IRC              INDIA                          >=50 cm          142     390  whz              
24 months   IRC              INDIA                          <48 cm           110     390  whz              
24 months   IRC              INDIA                          [48-50) cm       138     390  whz              
24 months   JiVitA-3         BANGLADESH                     >=50 cm          395    7159  whz              
24 months   JiVitA-3         BANGLADESH                     <48 cm          5058    7159  whz              
24 months   JiVitA-3         BANGLADESH                     [48-50) cm      1706    7159  whz              
24 months   JiVitA-4         BANGLADESH                     >=50 cm         1074    3974  whz              
24 months   JiVitA-4         BANGLADESH                     <48 cm          1937    3974  whz              
24 months   JiVitA-4         BANGLADESH                     [48-50) cm       963    3974  whz              
24 months   Keneba           GAMBIA                         >=50 cm          535    1066  whz              
24 months   Keneba           GAMBIA                         <48 cm           197    1066  whz              
24 months   Keneba           GAMBIA                         [48-50) cm       334    1066  whz              
24 months   MAL-ED           BANGLADESH                     >=50 cm           35     187  whz              
24 months   MAL-ED           BANGLADESH                     <48 cm            83     187  whz              
24 months   MAL-ED           BANGLADESH                     [48-50) cm        69     187  whz              
24 months   MAL-ED           BRAZIL                         >=50 cm           17      42  whz              
24 months   MAL-ED           BRAZIL                         <48 cm            11      42  whz              
24 months   MAL-ED           BRAZIL                         [48-50) cm        14      42  whz              
24 months   MAL-ED           INDIA                          >=50 cm            6      39  whz              
24 months   MAL-ED           INDIA                          <48 cm            20      39  whz              
24 months   MAL-ED           INDIA                          [48-50) cm        13      39  whz              
24 months   MAL-ED           NEPAL                          >=50 cm            7      26  whz              
24 months   MAL-ED           NEPAL                          <48 cm            11      26  whz              
24 months   MAL-ED           NEPAL                          [48-50) cm         8      26  whz              
24 months   MAL-ED           PERU                           >=50 cm           28     160  whz              
24 months   MAL-ED           PERU                           <48 cm            71     160  whz              
24 months   MAL-ED           PERU                           [48-50) cm        61     160  whz              
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm           27      91  whz              
24 months   MAL-ED           SOUTH AFRICA                   <48 cm            24      91  whz              
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm        40      91  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           17     104  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            36     104  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     104  whz              
24 months   NIH-Birth        BANGLADESH                     >=50 cm           89     413  whz              
24 months   NIH-Birth        BANGLADESH                     <48 cm           166     413  whz              
24 months   NIH-Birth        BANGLADESH                     [48-50) cm       158     413  whz              
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
![](/tmp/b4bd84e5-7af5-4cb5-baa1-3e8c3cccb38c/89512aca-5e46-4ff2-932c-0e15fddcabd2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b4bd84e5-7af5-4cb5-baa1-3e8c3cccb38c/89512aca-5e46-4ff2-932c-0e15fddcabd2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b4bd84e5-7af5-4cb5-baa1-3e8c3cccb38c/89512aca-5e46-4ff2-932c-0e15fddcabd2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3765533   -1.0397087    0.2866022
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.1399679   -0.7537966    0.4738608
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.7529085   -1.1008000   -0.4050169
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                -1.4509040   -1.5768762   -1.3249318
Birth       COHORTS          GUATEMALA                      <48 cm               NA                -0.2997682   -0.5667166   -0.0328198
Birth       COHORTS          GUATEMALA                      [48-50) cm           NA                -0.8486706   -1.0273938   -0.6699474
Birth       COHORTS          INDIA                          >=50 cm              NA                -1.2412943   -1.2998479   -1.1827406
Birth       COHORTS          INDIA                          <48 cm               NA                -0.7630826   -0.8134347   -0.7127305
Birth       COHORTS          INDIA                          [48-50) cm           NA                -1.0444416   -1.0908454   -0.9980377
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                -1.1208623   -1.1915117   -1.0502129
Birth       COHORTS          PHILIPPINES                    <48 cm               NA                -0.3552738   -0.4600340   -0.2505137
Birth       COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.5868241   -0.6559232   -0.5177250
Birth       EE               PAKISTAN                       >=50 cm              NA                -0.8589687   -1.5049887   -0.2129487
Birth       EE               PAKISTAN                       <48 cm               NA                -0.1864020   -0.4144128    0.0416088
Birth       EE               PAKISTAN                       [48-50) cm           NA                -0.4819470   -0.8623604   -0.1015336
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                -1.3644920   -1.5721282   -1.1568558
Birth       GMS-Nepal        NEPAL                          <48 cm               NA                -0.9975057   -1.1275372   -0.8674742
Birth       GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1841049   -1.3218203   -1.0463896
Birth       IRC              INDIA                          >=50 cm              NA                -2.0506607   -2.3406305   -1.7606909
Birth       IRC              INDIA                          <48 cm               NA                -0.2066520   -0.5692052    0.1559011
Birth       IRC              INDIA                          [48-50) cm           NA                -0.6465576   -0.8991222   -0.3939930
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                -1.0797673   -1.1382207   -1.0213140
Birth       JiVitA-3         BANGLADESH                     <48 cm               NA                -0.7231790   -0.7457503   -0.7006077
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.8430936   -0.8757355   -0.8104517
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.9750178   -1.2144828   -0.7355527
Birth       JiVitA-4         BANGLADESH                     <48 cm               NA                -0.6412590   -0.7066815   -0.5758365
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.7325656   -0.8305043   -0.6346270
Birth       Keneba           GAMBIA                         >=50 cm              NA                -1.5921885   -1.6745634   -1.5098137
Birth       Keneba           GAMBIA                         <48 cm               NA                -0.5813227   -0.7421361   -0.4205093
Birth       Keneba           GAMBIA                         [48-50) cm           NA                -1.0096761   -1.1089830   -0.9103691
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                -1.2705332   -1.6559348   -0.8851317
Birth       MAL-ED           BANGLADESH                     <48 cm               NA                -0.9097782   -1.1225824   -0.6969740
Birth       MAL-ED           BANGLADESH                     [48-50) cm           NA                -1.0001028   -1.2233732   -0.7768323
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                 0.1017321   -0.4198179    0.6232821
Birth       MAL-ED           BRAZIL                         <48 cm               NA                 0.6399708   -0.1048064    1.3847480
Birth       MAL-ED           BRAZIL                         [48-50) cm           NA                 0.3281210   -0.1678409    0.8240828
Birth       MAL-ED           INDIA                          >=50 cm              NA                -1.2755556   -1.7237003   -0.8274108
Birth       MAL-ED           INDIA                          <48 cm               NA                -1.0595000   -1.4555962   -0.6634038
Birth       MAL-ED           INDIA                          [48-50) cm           NA                -0.5806250   -1.0654625   -0.0957875
Birth       MAL-ED           NEPAL                          >=50 cm              NA                -0.9685714   -1.4785528   -0.4585901
Birth       MAL-ED           NEPAL                          <48 cm               NA                -0.9354545   -1.5903488   -0.2805603
Birth       MAL-ED           NEPAL                          [48-50) cm           NA                -0.3637500   -0.8329303    0.1054303
Birth       MAL-ED           PERU                           >=50 cm              NA                -0.1717148   -0.4364040    0.0929745
Birth       MAL-ED           PERU                           <48 cm               NA                 0.0406785   -0.1628468    0.2442038
Birth       MAL-ED           PERU                           [48-50) cm           NA                -0.0731882   -0.2559057    0.1095293
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.4390577   -0.8224632   -0.0556522
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.2723004   -0.1356980    0.6802988
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.3980035   -0.7165720   -0.0794349
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0072723   -0.3666320    0.3811767
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 1.1294082    0.7503439    1.5084726
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.6740506    0.4209410    0.9271602
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.5595585   -1.7467266   -1.3723905
Birth       NIH-Birth        BANGLADESH                     <48 cm               NA                -1.2907493   -1.4508694   -1.1306292
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.3210235   -1.4646271   -1.1774200
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                -1.4740145   -1.6353920   -1.3126371
Birth       NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.0915332   -1.2302619   -0.9528045
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -1.2384608   -1.3753433   -1.1015783
Birth       PROBIT           BELARUS                        >=50 cm              NA                -1.2024006   -1.4153074   -0.9894938
Birth       PROBIT           BELARUS                        <48 cm               NA                 0.0839271   -0.0142821    0.1821363
Birth       PROBIT           BELARUS                        [48-50) cm           NA                -0.6913949   -0.8893076   -0.4934821
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                -1.3395622   -1.4985976   -1.1805268
Birth       PROVIDE          BANGLADESH                     <48 cm               NA                -1.3351344   -1.4671786   -1.2030903
Birth       PROVIDE          BANGLADESH                     [48-50) cm           NA                -1.2460882   -1.3665241   -1.1256523
Birth       ResPak           PAKISTAN                       >=50 cm              NA                -0.5380282   -1.8434063    0.7673500
Birth       ResPak           PAKISTAN                       <48 cm               NA                -0.4676304   -1.3637091    0.4284483
Birth       ResPak           PAKISTAN                       [48-50) cm           NA                -0.0270986   -0.7474253    0.6932282
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                -0.9445078   -1.2513269   -0.6376887
Birth       SAS-CompFeed     INDIA                          <48 cm               NA                -0.5857132   -0.8168786   -0.3545478
Birth       SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.7154350   -0.8081278   -0.6227423
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1295159   -1.1731860   -1.0858458
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0480225   -0.0022832    0.0983283
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4493931   -0.4871451   -0.4116411
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0342401   -1.2377304    1.1692503
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.5967137   -1.0115758   -0.1818516
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.6629681   -1.0316037   -0.2943325
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.2730092    0.1565067    0.3895118
6 months    COHORTS          GUATEMALA                      <48 cm               NA                 0.0919232   -0.1229630    0.3068094
6 months    COHORTS          GUATEMALA                      [48-50) cm           NA                 0.2063057    0.0423107    0.3703008
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.4800845   -0.5392613   -0.4209077
6 months    COHORTS          INDIA                          <48 cm               NA                -0.8434338   -0.8902179   -0.7966496
6 months    COHORTS          INDIA                          [48-50) cm           NA                -0.6564471   -0.7041187   -0.6087756
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.2440110   -0.3105231   -0.1774989
6 months    COHORTS          PHILIPPINES                    <48 cm               NA                -0.3742684   -0.4597639   -0.2887729
6 months    COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.2942094   -0.3626723   -0.2257465
6 months    EE               PAKISTAN                       >=50 cm              NA                -0.9944410   -1.5880846   -0.4007974
6 months    EE               PAKISTAN                       <48 cm               NA                -0.9166183   -1.0714674   -0.7617692
6 months    EE               PAKISTAN                       [48-50) cm           NA                -0.6470586   -0.9590204   -0.3350967
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.2211296   -0.4434923    0.0012330
6 months    GMS-Nepal        NEPAL                          <48 cm               NA                -0.6945751   -0.8131198   -0.5760305
6 months    GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.6274017   -0.7825366   -0.4722667
6 months    IRC              INDIA                          >=50 cm              NA                -0.6705045   -0.8883272   -0.4526819
6 months    IRC              INDIA                          <48 cm               NA                -0.4972655   -0.7797418   -0.2147891
6 months    IRC              INDIA                          [48-50) cm           NA                -0.6940169   -0.9408716   -0.4471622
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.4897629   -0.5721507   -0.4073750
6 months    JiVitA-3         BANGLADESH                     <48 cm               NA                -0.6395488   -0.6638143   -0.6152833
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.5404501   -0.5807759   -0.5001243
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.3433693   -0.4212563   -0.2654823
6 months    JiVitA-4         BANGLADESH                     <48 cm               NA                -0.4069405   -0.4724755   -0.3414055
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.3542913   -0.4354837   -0.2730989
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.1550660   -0.2402450   -0.0698869
6 months    Keneba           GAMBIA                         <48 cm               NA                -0.1834377   -0.3276315   -0.0392439
6 months    Keneba           GAMBIA                         [48-50) cm           NA                -0.2600593   -0.3790467   -0.1410718
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0963158   -0.5374819    0.3448503
6 months    MAL-ED           BANGLADESH                     <48 cm               NA                -0.3069142   -0.4726558   -0.1411727
6 months    MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.0582763   -0.3019615    0.1854088
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                 1.0514191    0.5821584    1.5206798
6 months    MAL-ED           BRAZIL                         <48 cm               NA                 0.6500168    0.0084858    1.2915478
6 months    MAL-ED           BRAZIL                         [48-50) cm           NA                 1.4764083    0.8895821    2.0632346
6 months    MAL-ED           INDIA                          >=50 cm              NA                -0.7502083   -1.4517037   -0.0487129
6 months    MAL-ED           INDIA                          <48 cm               NA                -0.5310833   -0.9919563   -0.0702103
6 months    MAL-ED           INDIA                          [48-50) cm           NA                -0.8169231   -1.3577064   -0.2761397
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.4421429   -1.0171065    0.1328207
6 months    MAL-ED           NEPAL                          <48 cm               NA                -0.6550000   -1.0447672   -0.2652328
6 months    MAL-ED           NEPAL                          [48-50) cm           NA                -0.0360417   -0.6128967    0.5408133
6 months    MAL-ED           PERU                           >=50 cm              NA                 1.1920574    0.8519254    1.5321894
6 months    MAL-ED           PERU                           <48 cm               NA                 1.0099355    0.7709381    1.2489329
6 months    MAL-ED           PERU                           [48-50) cm           NA                 1.0344606    0.8305618    1.2383594
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.5919792    0.0406810    1.1432773
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               NA                 1.0842169    0.6001246    1.5683093
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.0141896   -0.4142456    0.3858664
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.8482486    0.3334788    1.3630184
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.3099777    0.0305236    0.5894319
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.5593867    0.3026570    0.8161164
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.2650312   -0.4775712   -0.0524912
6 months    NIH-Birth        BANGLADESH                     <48 cm               NA                -0.5673418   -0.7168331   -0.4178505
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.4373550   -0.5717395   -0.3029705
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1111965   -0.0508268    0.2732198
6 months    NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.0257417   -0.1103028    0.1617862
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.0070089   -0.1288660    0.1148481
6 months    PROBIT           BELARUS                        >=50 cm              NA                 0.5831431    0.5228876    0.6433985
6 months    PROBIT           BELARUS                        <48 cm               NA                 0.5462655    0.4353491    0.6571819
6 months    PROBIT           BELARUS                        [48-50) cm           NA                 0.4785771    0.3688304    0.5883238
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1412147   -0.0368069    0.3192362
6 months    PROVIDE          BANGLADESH                     <48 cm               NA                -0.4583020   -0.5931552   -0.3234488
6 months    PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.1764322   -0.3015814   -0.0512830
6 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.5356250   -0.0729181    1.1441681
6 months    ResPak           PAKISTAN                       <48 cm               NA                 0.2707292   -0.1424440    0.6839023
6 months    ResPak           PAKISTAN                       [48-50) cm           NA                -0.1216667   -1.2234928    0.9801595
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.5396605   -0.7240904   -0.3552306
6 months    SAS-CompFeed     INDIA                          <48 cm               NA                -0.7379995   -0.8785741   -0.5974250
6 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.5984527   -0.7480156   -0.4488899
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3948506    0.3472529    0.4424482
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.2358466    0.1887243    0.2829690
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.3052895    0.2637859    0.3467930
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0001722   -0.4576295    0.4579739
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.6470494   -0.9107260   -0.3833728
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.3602545   -0.6668544   -0.0536546
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0578055   -0.1570322    0.0414213
24 months   COHORTS          GUATEMALA                      <48 cm               NA                -0.4552053   -0.6397054   -0.2707052
24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2400363   -0.3614298   -0.1186428
24 months   COHORTS          INDIA                          >=50 cm              NA                -0.2934811   -0.3557552   -0.2312070
24 months   COHORTS          INDIA                          <48 cm               NA                -0.7923201   -0.8379565   -0.7466836
24 months   COHORTS          INDIA                          [48-50) cm           NA                -0.5557962   -0.6030470   -0.5085454
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4482848   -0.5055844   -0.3909851
24 months   COHORTS          PHILIPPINES                    <48 cm               NA                -0.8385716   -0.9137079   -0.7634353
24 months   COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.6061469   -0.6660299   -0.5462640
24 months   EE               PAKISTAN                       >=50 cm              NA                -0.4360321   -0.9714477    0.0993834
24 months   EE               PAKISTAN                       <48 cm               NA                -1.0628991   -1.2785380   -0.8472601
24 months   EE               PAKISTAN                       [48-50) cm           NA                -1.0419404   -1.4703484   -0.6135323
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.7719470   -1.0142225   -0.5296714
24 months   GMS-Nepal        NEPAL                          <48 cm               NA                -1.2413848   -1.3586994   -1.1240703
24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1518275   -1.3144798   -0.9891752
24 months   IRC              INDIA                          >=50 cm              NA                -0.6702371   -0.8282615   -0.5122127
24 months   IRC              INDIA                          <48 cm               NA                -0.8925903   -1.0599287   -0.7252519
24 months   IRC              INDIA                          [48-50) cm           NA                -0.7178777   -0.8866518   -0.5491035
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.9095948   -1.0276593   -0.7915302
24 months   JiVitA-3         BANGLADESH                     <48 cm               NA                -1.3914866   -1.4209722   -1.3620010
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           NA                -1.1268397   -1.1747946   -1.0788849
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -1.1103742   -1.1782200   -1.0425284
24 months   JiVitA-4         BANGLADESH                     <48 cm               NA                -1.3537976   -1.4042166   -1.3033786
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                -1.1523295   -1.2219215   -1.0827376
24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.6727668   -0.7557565   -0.5897771
24 months   Keneba           GAMBIA                         <48 cm               NA                -0.9209152   -1.0654711   -0.7763592
24 months   Keneba           GAMBIA                         [48-50) cm           NA                -0.9056848   -1.0140884   -0.7972811
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.7311925   -1.1120755   -0.3503096
24 months   MAL-ED           BANGLADESH                     <48 cm               NA                -1.0260852   -1.2019950   -0.8501755
24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.7120243   -0.9188712   -0.5051774
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.2255300   -0.2817674    0.7328274
24 months   MAL-ED           BRAZIL                         <48 cm               NA                -0.3530073   -1.2502662    0.5442517
24 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.7239166   -0.3444502    1.7922835
24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.4358333   -1.1701735    0.2985068
24 months   MAL-ED           INDIA                          <48 cm               NA                -1.2385000   -1.6025925   -0.8744075
24 months   MAL-ED           INDIA                          [48-50) cm           NA                -1.2369231   -1.6243487   -0.8494974
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.6178571   -1.0252538   -0.2104604
24 months   MAL-ED           NEPAL                          <48 cm               NA                -1.1881818   -1.4731126   -0.9032511
24 months   MAL-ED           NEPAL                          [48-50) cm           NA                -0.7250000   -1.3087399   -0.1412601
24 months   MAL-ED           PERU                           >=50 cm              NA                 0.5772030    0.2872195    0.8671864
24 months   MAL-ED           PERU                           <48 cm               NA                -0.1486883   -0.3773325    0.0799559
24 months   MAL-ED           PERU                           [48-50) cm           NA                 0.0782518   -0.1302732    0.2867769
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.5481752    0.2147062    0.8816443
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.6274175    0.2408290    1.0140059
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.1766901   -0.1135288    0.4669090
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1799255   -0.3172555    0.6771065
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0045419   -0.3571745    0.3480906
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.2216427   -0.0107237    0.4540092
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.5739603   -0.7551050   -0.3928156
24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                -1.0431012   -1.2140598   -0.8721425
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.9645531   -1.1210862   -0.8080201
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.4364714   -0.6293848   -0.2435581
24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                -0.7512835   -0.8951868   -0.6073801
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.6166814   -0.7766901   -0.4566726
24 months   PROBIT           BELARUS                        >=50 cm              NA                 0.7218515    0.6078378    0.8358653
24 months   PROBIT           BELARUS                        <48 cm               NA                 0.4924883    0.1594476    0.8255289
24 months   PROBIT           BELARUS                        [48-50) cm           NA                 0.4153804    0.2580046    0.5727563
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.6354773   -0.8145095   -0.4564450
24 months   PROVIDE          BANGLADESH                     <48 cm               NA                -1.1816943   -1.3054876   -1.0579011
24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.8091725   -0.9424642   -0.6758809
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3319473   -1.6271775   -1.0367171
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.0813458   -1.2051400   -0.9575516
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.3233105   -1.5286738   -1.1179472


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
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.2365853   -0.6711656    1.1443362
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.3763552   -1.1299409    0.3772305
Birth       COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.1511358    0.8560638    1.4462077
Birth       COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.6022334    0.3839179    0.8205489
Birth       COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <48 cm               >=50 cm            0.4782117    0.4011385    0.5552848
Birth       COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1968527    0.1222799    0.2714255
Birth       COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.7655885    0.6397674    0.8914095
Birth       COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            0.5340382    0.4357687    0.6323077
Birth       EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       <48 cm               >=50 cm            0.6725667   -0.0136313    1.3587647
Birth       EE               PAKISTAN                       [48-50) cm           >=50 cm            0.3770217   -0.3738662    1.1279096
Birth       GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.3669863    0.1223213    0.6116513
Birth       GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1803871   -0.0679395    0.4287137
Birth       IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <48 cm               >=50 cm            1.8440087    1.3797767    2.3082406
Birth       IRC              INDIA                          [48-50) cm           >=50 cm            1.4041031    1.0178591    1.7903470
Birth       JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <48 cm               >=50 cm            0.3565883    0.2956983    0.4174784
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            0.2366737    0.1719405    0.3014070
Birth       JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.3337588    0.0853497    0.5821678
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.2424521   -0.0164627    0.5013670
Birth       Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <48 cm               >=50 cm            1.0108658    0.8303711    1.1913605
Birth       Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.5825125    0.4538683    0.7111566
Birth       MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.3607550   -0.0792672    0.8007772
Birth       MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.2704305   -0.1762233    0.7170842
Birth       MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.5382387   -0.3767937    1.4532711
Birth       MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.2263889   -0.4998664    0.9526441
Birth       MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <48 cm               >=50 cm            0.2160556   -0.3820464    0.8141575
Birth       MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.6949306    0.0347025    1.3551586
Birth       MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <48 cm               >=50 cm            0.0331169   -0.7969237    0.8631575
Birth       MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.6048214   -0.0881513    1.2977941
Birth       MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <48 cm               >=50 cm            0.2123933   -0.1221742    0.5469607
Birth       MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0985266   -0.2235725    0.4206256
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.7113581    0.1526332    1.2700829
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0410542   -0.4582120    0.5403205
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            1.1221359    0.5961735    1.6480982
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.6667783    0.2103060    1.1232505
Birth       NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.2688092    0.0230764    0.5145420
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.2385350    0.0033579    0.4737121
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.3824814    0.1694017    0.5955610
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.2355537    0.0237542    0.4473533
Birth       PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <48 cm               >=50 cm            1.2863277    1.0585541    1.5141013
Birth       PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.5110057    0.2864581    0.7355532
Birth       PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0044277   -0.2022983    0.2111538
Birth       PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0934740   -0.1059950    0.2929430
Birth       ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0703978   -1.5561094    1.6969049
Birth       ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.5109296   -1.0025262    2.0243854
Birth       SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.3587947    0.1922425    0.5253468
Birth       SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.2290728   -0.0061450    0.4642906
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.1775384    1.1110661    1.2440107
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.6801228    0.6226515    0.7375942
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.5624736   -1.8387676    0.7138204
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.6287280   -1.8872140    0.6297580
6 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.1810860   -0.4255606    0.0633885
6 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0667035   -0.2679091    0.1345022
6 months    COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <48 cm               >=50 cm           -0.3633493   -0.4386582   -0.2880403
6 months    COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.1763626   -0.2522254   -0.1004999
6 months    COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.1302574   -0.2384889   -0.0220258
6 months    COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0501983   -0.1457801    0.0453834
6 months    EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       <48 cm               >=50 cm            0.0778227   -0.5352315    0.6908769
6 months    EE               PAKISTAN                       [48-50) cm           >=50 cm            0.3473824   -0.3238092    1.0185741
6 months    GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.4734455   -0.7255132   -0.2213779
6 months    GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.4062720   -0.6775471   -0.1349969
6 months    IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <48 cm               >=50 cm            0.1732391   -0.1831364    0.5296145
6 months    IRC              INDIA                          [48-50) cm           >=50 cm           -0.0235123   -0.3566811    0.3096564
6 months    JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -0.1497859   -0.2345714   -0.0650004
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.0506872   -0.1401968    0.0388224
6 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0635712   -0.1638722    0.0367299
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0109220   -0.1209844    0.0991405
6 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0283717   -0.1955104    0.1387669
6 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.1049933   -0.2512860    0.0412995
6 months    MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.2105984   -0.6840096    0.2628128
6 months    MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0380395   -0.4662026    0.5422815
6 months    MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.4014023   -1.1954803    0.3926757
6 months    MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.4249892   -0.3388806    1.1888590
6 months    MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <48 cm               >=50 cm            0.2191250   -0.6202198    1.0584698
6 months    MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0667147   -0.9524587    0.8190293
6 months    MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.2128571   -0.9074805    0.4817662
6 months    MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.4061012   -0.4083586    1.2205610
6 months    MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <48 cm               >=50 cm           -0.1821219   -0.5990031    0.2347593
6 months    MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.1575968   -0.5537437    0.2385501
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.4922378   -0.2242147    1.2086902
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.6061688   -1.2883581    0.0760205
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.5382709   -1.1248369    0.0482951
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.2888619   -0.8650323    0.2873086
6 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.3023106   -0.5628539   -0.0417673
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.1723238   -0.4237331    0.0790855
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0854548   -0.2972444    0.1263348
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.1182054   -0.3212901    0.0848793
6 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0368776   -0.1500017    0.0762465
6 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.1045660   -0.1976013   -0.0115306
6 months    PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.5995167   -0.8229107   -0.3761226
6 months    PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.3176469   -0.5352997   -0.0999940
6 months    ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       <48 cm               >=50 cm           -0.2648958   -1.0004478    0.4706562
6 months    ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.6572917   -1.9159996    0.6014162
6 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.1983390   -0.2933676   -0.1033105
6 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0587922   -0.2012629    0.0836784
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.1590039   -0.2259795   -0.0920284
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0895611   -0.1527187   -0.0264035
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.6472216   -1.1762659   -0.1181773
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.3604267   -0.9141174    0.1932640
24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.3973998   -0.6071520   -0.1876476
24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.1822308   -0.3392165   -0.0252451
24 months   COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <48 cm               >=50 cm           -0.4988390   -0.5756225   -0.4220555
24 months   COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.2623151   -0.3399919   -0.1846383
24 months   COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.3902869   -0.4847406   -0.2958331
24 months   COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.1578622   -0.2407225   -0.0750018
24 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.6268669   -1.2049029   -0.0488310
24 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.6059082   -1.2914234    0.0796070
24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.4694379   -0.7389894   -0.1998863
24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3798805   -0.6720252   -0.0877358
24 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <48 cm               >=50 cm           -0.2223532   -0.4533718    0.0086654
24 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.0476406   -0.2782182    0.1829370
24 months   JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -0.4818918   -0.6044286   -0.3593550
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.2172450   -0.3439300   -0.0905599
24 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.2434234   -0.3273964   -0.1594505
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0419553   -0.1406908    0.0567801
24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.2481484   -0.4149423   -0.0813545
24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.2329180   -0.3695325   -0.0963034
24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.2948927   -0.7163352    0.1265498
24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0191682   -0.4138638    0.4522003
24 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.5785373   -1.6014506    0.4443761
24 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.4983866   -0.6732504    1.6700236
24 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -0.8026667   -1.6223122    0.0169789
24 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.8010897   -1.6313633    0.0291838
24 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.5703247   -1.0674741   -0.0731752
24 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.1071429   -0.8189886    0.6047029
24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.7258912   -1.1002723   -0.3515102
24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.4989511   -0.8532758   -0.1446265
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0792422   -0.4316544    0.5901389
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.3714851   -0.8135645    0.0705942
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.1844674   -0.7968284    0.4278935
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0417172   -0.5042647    0.5876992
24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.4691408   -0.7183387   -0.2199430
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.3905928   -0.6299141   -0.1512715
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.3148120   -0.5551067   -0.0745174
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.1802099   -0.4297623    0.0693424
24 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <48 cm               >=50 cm           -0.2293633   -0.5548719    0.0961454
24 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.3064711   -0.4715505   -0.1413918
24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.5462171   -0.7644546   -0.3279795
24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.1736953   -0.3968705    0.0494799
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.2506015   -0.0704356    0.5716386
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0086368   -0.3509260    0.3681997


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0882723   -0.7409440    0.5643994
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                 0.3887611    0.2916305    0.4858918
Birth       COHORTS          INDIA                          >=50 cm              NA                 0.2565486    0.2037138    0.3093833
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                 0.3781372    0.3208174    0.4354570
Birth       EE               PAKISTAN                       >=50 cm              NA                 0.5256636   -0.0815754    1.1329026
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2480490    0.0560615    0.4400364
Birth       IRC              INDIA                          >=50 cm              NA                 1.0400776    0.7919584    1.2881969
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.3019401    0.2465058    0.3573744
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.2863909    0.0585079    0.5142739
Birth       Keneba           GAMBIA                         >=50 cm              NA                 0.3578267    0.2961389    0.4195146
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                 0.3286728   -0.0215219    0.6788674
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                 0.3011711   -0.1284191    0.7307613
Birth       MAL-ED           INDIA                          >=50 cm              NA                 0.3431111   -0.0993435    0.7855657
Birth       MAL-ED           NEPAL                          >=50 cm              NA                 0.2001099   -0.2975966    0.6978164
Birth       MAL-ED           PERU                           >=50 cm              NA                 0.1196972   -0.1259614    0.3653558
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.2464744   -0.0872047    0.5801534
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.7551624    0.3855970    1.1247279
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2096368    0.0398258    0.3794478
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.2298632    0.0836215    0.3761049
Birth       PROBIT           BELARUS                        >=50 cm              NA                 0.0532224    0.0287411    0.0777036
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0411035   -0.1006449    0.1828520
Birth       ResPak           PAKISTAN                       >=50 cm              NA                 0.1717124   -1.0247697    1.3681944
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                 0.2744625    0.1120072    0.4369178
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.6140262    0.5764748    0.6515776
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.4589028   -1.5174783    0.5996727
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                -0.0536188   -0.1386075    0.0313699
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.2183095   -0.2718226   -0.1647964
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.0503350   -0.1043592    0.0036892
6 months    EE               PAKISTAN                       >=50 cm              NA                 0.1416539   -0.4156374    0.6989451
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3815554   -0.5866228   -0.1764880
6 months    IRC              INDIA                          >=50 cm              NA                 0.0295705   -0.1549168    0.2140578
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.1174844   -0.1963029   -0.0386659
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0323340   -0.1000635    0.0353955
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.0423997   -0.1043490    0.0195495
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0495136   -0.4359241    0.3368970
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                -0.1933683   -0.6131088    0.2263722
6 months    MAL-ED           INDIA                          >=50 cm              NA                 0.0857368   -0.5470478    0.7185213
6 months    MAL-ED           NEPAL                          >=50 cm              NA                 0.0348993   -0.4608742    0.5306727
6 months    MAL-ED           PERU                           >=50 cm              NA                -0.1409876   -0.4484527    0.1664774
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.1901871   -0.6582693    0.2778952
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.3371893   -0.8002580    0.1258794
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.1986448   -0.3857956   -0.0114939
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0814342   -0.2248924    0.0620239
6 months    PROBIT           BELARUS                        >=50 cm              NA                -0.0090331   -0.0180910    0.0000247
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.3403053   -0.4952884   -0.1853222
6 months    ResPak           PAKISTAN                       >=50 cm              NA                -0.3179779   -0.9231607    0.2872048
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.1278319   -0.2235222   -0.0321417
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0858835   -0.1264316   -0.0453354
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.4530810   -0.8836397   -0.0225223
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.1438257   -0.2213833   -0.0662682
24 months   COHORTS          INDIA                          >=50 cm              NA                -0.3010933   -0.3561523   -0.2460343
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -0.1620341   -0.2093473   -0.1147210
24 months   EE               PAKISTAN                       >=50 cm              NA                -0.5569118   -1.0813637   -0.0324599
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3617430   -0.5826788   -0.1408073
24 months   IRC              INDIA                          >=50 cm              NA                -0.0834253   -0.2096560    0.0428053
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.3950623   -0.5098972   -0.2802274
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.1307380   -0.1891999   -0.0722762
24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.1221350   -0.1826854   -0.0615846
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0984331   -0.4320950    0.2352287
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.0091922   -0.4757757    0.4941601
24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.6786538   -1.3465606   -0.0107471
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.2742582   -0.6557761    0.1072596
24 months   MAL-ED           PERU                           >=50 cm              NA                -0.5281613   -0.8092187   -0.2471039
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.1562338   -0.4503254    0.1378577
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0474736   -0.5014126    0.4064655
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.3329848   -0.5030574   -0.1629122
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.1738788   -0.3393236   -0.0084339
24 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0237109   -0.0429814   -0.0044405
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.2573897   -0.4123209   -0.1024585
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1516421   -0.1330035    0.4362878

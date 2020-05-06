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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->

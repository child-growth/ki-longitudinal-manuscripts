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

agecat      studyid          country                        birthlen      n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -----------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm           14      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          <48 cm            38      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm        40      92  haz              
Birth       CMIN             BANGLADESH                     >=50 cm            2      26  haz              
Birth       CMIN             BANGLADESH                     <48 cm            16      26  haz              
Birth       CMIN             BANGLADESH                     [48-50) cm         8      26  haz              
Birth       COHORTS          GUATEMALA                      >=50 cm          437     852  haz              
Birth       COHORTS          GUATEMALA                      <48 cm           163     852  haz              
Birth       COHORTS          GUATEMALA                      [48-50) cm       252     852  haz              
Birth       COHORTS          INDIA                          >=50 cm         1426    6640  haz              
Birth       COHORTS          INDIA                          <48 cm          2774    6640  haz              
Birth       COHORTS          INDIA                          [48-50) cm      2440    6640  haz              
Birth       COHORTS          PHILIPPINES                    >=50 cm         1129    3050  haz              
Birth       COHORTS          PHILIPPINES                    <48 cm           762    3050  haz              
Birth       COHORTS          PHILIPPINES                    [48-50) cm      1159    3050  haz              
Birth       CONTENT          PERU                           >=50 cm            1       2  haz              
Birth       CONTENT          PERU                           <48 cm             1       2  haz              
Birth       CONTENT          PERU                           [48-50) cm         0       2  haz              
Birth       EE               PAKISTAN                       >=50 cm           24     240  haz              
Birth       EE               PAKISTAN                       <48 cm           162     240  haz              
Birth       EE               PAKISTAN                       [48-50) cm        54     240  haz              
Birth       GMS-Nepal        NEPAL                          >=50 cm          115     696  haz              
Birth       GMS-Nepal        NEPAL                          <48 cm           373     696  haz              
Birth       GMS-Nepal        NEPAL                          [48-50) cm       208     696  haz              
Birth       IRC              INDIA                          >=50 cm          142     388  haz              
Birth       IRC              INDIA                          <48 cm           108     388  haz              
Birth       IRC              INDIA                          [48-50) cm       138     388  haz              
Birth       JiVitA-3         BANGLADESH                     >=50 cm         1258   22455  haz              
Birth       JiVitA-3         BANGLADESH                     <48 cm         16109   22455  haz              
Birth       JiVitA-3         BANGLADESH                     [48-50) cm      5088   22455  haz              
Birth       JiVitA-4         BANGLADESH                     >=50 cm          178    2823  haz              
Birth       JiVitA-4         BANGLADESH                     <48 cm          1913    2823  haz              
Birth       JiVitA-4         BANGLADESH                     [48-50) cm       732    2823  haz              
Birth       Keneba           GAMBIA                         >=50 cm          763    1543  haz              
Birth       Keneba           GAMBIA                         <48 cm           285    1543  haz              
Birth       Keneba           GAMBIA                         [48-50) cm       495    1543  haz              
Birth       MAL-ED           BANGLADESH                     >=50 cm           39     231  haz              
Birth       MAL-ED           BANGLADESH                     <48 cm           113     231  haz              
Birth       MAL-ED           BANGLADESH                     [48-50) cm        79     231  haz              
Birth       MAL-ED           BRAZIL                         >=50 cm           30      65  haz              
Birth       MAL-ED           BRAZIL                         <48 cm            17      65  haz              
Birth       MAL-ED           BRAZIL                         [48-50) cm        18      65  haz              
Birth       MAL-ED           INDIA                          >=50 cm            9      47  haz              
Birth       MAL-ED           INDIA                          <48 cm            20      47  haz              
Birth       MAL-ED           INDIA                          [48-50) cm        18      47  haz              
Birth       MAL-ED           NEPAL                          >=50 cm            8      27  haz              
Birth       MAL-ED           NEPAL                          <48 cm            12      27  haz              
Birth       MAL-ED           NEPAL                          [48-50) cm         7      27  haz              
Birth       MAL-ED           PERU                           >=50 cm           52     233  haz              
Birth       MAL-ED           PERU                           <48 cm            88     233  haz              
Birth       MAL-ED           PERU                           [48-50) cm        93     233  haz              
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm           44     123  haz              
Birth       MAL-ED           SOUTH AFRICA                   <48 cm            33     123  haz              
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm        46     123  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     125  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            42     125  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     125  haz              
Birth       NIH-Birth        BANGLADESH                     >=50 cm          139     608  haz              
Birth       NIH-Birth        BANGLADESH                     <48 cm           240     608  haz              
Birth       NIH-Birth        BANGLADESH                     [48-50) cm       229     608  haz              
Birth       NIH-Crypto       BANGLADESH                     >=50 cm          161     732  haz              
Birth       NIH-Crypto       BANGLADESH                     <48 cm           287     732  haz              
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm       284     732  haz              
Birth       PROBIT           BELARUS                        >=50 cm        12626   13893  haz              
Birth       PROBIT           BELARUS                        <48 cm           147   13893  haz              
Birth       PROBIT           BELARUS                        [48-50) cm      1120   13893  haz              
Birth       PROVIDE          BANGLADESH                     >=50 cm          121     539  haz              
Birth       PROVIDE          BANGLADESH                     <48 cm           196     539  haz              
Birth       PROVIDE          BANGLADESH                     [48-50) cm       222     539  haz              
Birth       ResPak           PAKISTAN                       >=50 cm           12      42  haz              
Birth       ResPak           PAKISTAN                       <48 cm            16      42  haz              
Birth       ResPak           PAKISTAN                       [48-50) cm        14      42  haz              
Birth       SAS-CompFeed     INDIA                          >=50 cm          116    1252  haz              
Birth       SAS-CompFeed     INDIA                          <48 cm           738    1252  haz              
Birth       SAS-CompFeed     INDIA                          [48-50) cm       398    1252  haz              
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm         4125   13875  haz              
Birth       ZVITAMBO         ZIMBABWE                       <48 cm          4409   13875  haz              
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm      5341   13875  haz              
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm           16     104  haz              
6 months    CMC-V-BCS-2002   INDIA                          <48 cm            48     104  haz              
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm        40     104  haz              
6 months    CMIN             BANGLADESH                     >=50 cm            0      12  haz              
6 months    CMIN             BANGLADESH                     <48 cm             6      12  haz              
6 months    CMIN             BANGLADESH                     [48-50) cm         6      12  haz              
6 months    COHORTS          GUATEMALA                      >=50 cm          351     688  haz              
6 months    COHORTS          GUATEMALA                      <48 cm           133     688  haz              
6 months    COHORTS          GUATEMALA                      [48-50) cm       204     688  haz              
6 months    COHORTS          INDIA                          >=50 cm         1330    6135  haz              
6 months    COHORTS          INDIA                          <48 cm          2530    6135  haz              
6 months    COHORTS          INDIA                          [48-50) cm      2275    6135  haz              
6 months    COHORTS          PHILIPPINES                    >=50 cm          990    2701  haz              
6 months    COHORTS          PHILIPPINES                    <48 cm           677    2701  haz              
6 months    COHORTS          PHILIPPINES                    [48-50) cm      1034    2701  haz              
6 months    CONTENT          PERU                           >=50 cm            1       2  haz              
6 months    CONTENT          PERU                           <48 cm             1       2  haz              
6 months    CONTENT          PERU                           [48-50) cm         0       2  haz              
6 months    EE               PAKISTAN                       >=50 cm           24     236  haz              
6 months    EE               PAKISTAN                       <48 cm           160     236  haz              
6 months    EE               PAKISTAN                       [48-50) cm        52     236  haz              
6 months    GMS-Nepal        NEPAL                          >=50 cm           96     563  haz              
6 months    GMS-Nepal        NEPAL                          <48 cm           296     563  haz              
6 months    GMS-Nepal        NEPAL                          [48-50) cm       171     563  haz              
6 months    IRC              INDIA                          >=50 cm          142     389  haz              
6 months    IRC              INDIA                          <48 cm           109     389  haz              
6 months    IRC              INDIA                          [48-50) cm       138     389  haz              
6 months    JiVitA-3         BANGLADESH                     >=50 cm          827   13924  haz              
6 months    JiVitA-3         BANGLADESH                     <48 cm          9817   13924  haz              
6 months    JiVitA-3         BANGLADESH                     [48-50) cm      3280   13924  haz              
6 months    JiVitA-4         BANGLADESH                     >=50 cm         1101    4020  haz              
6 months    JiVitA-4         BANGLADESH                     <48 cm          1923    4020  haz              
6 months    JiVitA-4         BANGLADESH                     [48-50) cm       996    4020  haz              
6 months    Keneba           GAMBIA                         >=50 cm          677    1347  haz              
6 months    Keneba           GAMBIA                         <48 cm           234    1347  haz              
6 months    Keneba           GAMBIA                         [48-50) cm       436    1347  haz              
6 months    MAL-ED           BANGLADESH                     >=50 cm           39     211  haz              
6 months    MAL-ED           BANGLADESH                     <48 cm            98     211  haz              
6 months    MAL-ED           BANGLADESH                     [48-50) cm        74     211  haz              
6 months    MAL-ED           BRAZIL                         >=50 cm           28      59  haz              
6 months    MAL-ED           BRAZIL                         <48 cm            15      59  haz              
6 months    MAL-ED           BRAZIL                         [48-50) cm        16      59  haz              
6 months    MAL-ED           INDIA                          >=50 cm            8      41  haz              
6 months    MAL-ED           INDIA                          <48 cm            18      41  haz              
6 months    MAL-ED           INDIA                          [48-50) cm        15      41  haz              
6 months    MAL-ED           NEPAL                          >=50 cm            8      26  haz              
6 months    MAL-ED           NEPAL                          <48 cm            11      26  haz              
6 months    MAL-ED           NEPAL                          [48-50) cm         7      26  haz              
6 months    MAL-ED           PERU                           >=50 cm           48     215  haz              
6 months    MAL-ED           PERU                           <48 cm            84     215  haz              
6 months    MAL-ED           PERU                           [48-50) cm        83     215  haz              
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm           34      93  haz              
6 months    MAL-ED           SOUTH AFRICA                   <48 cm            21      93  haz              
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm        38      93  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     118  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            39     118  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        48     118  haz              
6 months    NIH-Birth        BANGLADESH                     >=50 cm          120     518  haz              
6 months    NIH-Birth        BANGLADESH                     <48 cm           199     518  haz              
6 months    NIH-Birth        BANGLADESH                     [48-50) cm       199     518  haz              
6 months    NIH-Crypto       BANGLADESH                     >=50 cm          164     715  haz              
6 months    NIH-Crypto       BANGLADESH                     <48 cm           270     715  haz              
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm       281     715  haz              
6 months    PROBIT           BELARUS                        >=50 cm        14295   15760  haz              
6 months    PROBIT           BELARUS                        <48 cm           172   15760  haz              
6 months    PROBIT           BELARUS                        [48-50) cm      1293   15760  haz              
6 months    PROVIDE          BANGLADESH                     >=50 cm          143     604  haz              
6 months    PROVIDE          BANGLADESH                     <48 cm           213     604  haz              
6 months    PROVIDE          BANGLADESH                     [48-50) cm       248     604  haz              
6 months    ResPak           PAKISTAN                       >=50 cm           10      34  haz              
6 months    ResPak           PAKISTAN                       <48 cm            13      34  haz              
6 months    ResPak           PAKISTAN                       [48-50) cm        11      34  haz              
6 months    SAS-CompFeed     INDIA                          >=50 cm          196    1324  haz              
6 months    SAS-CompFeed     INDIA                          <48 cm           709    1324  haz              
6 months    SAS-CompFeed     INDIA                          [48-50) cm       419    1324  haz              
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm         2538    8577  haz              
6 months    ZVITAMBO         ZIMBABWE                       <48 cm          2680    8577  haz              
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm      3359    8577  haz              
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm           16     106  haz              
24 months   CMC-V-BCS-2002   INDIA                          <48 cm            50     106  haz              
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm        40     106  haz              
24 months   CMIN             BANGLADESH                     >=50 cm            0      11  haz              
24 months   CMIN             BANGLADESH                     <48 cm             5      11  haz              
24 months   CMIN             BANGLADESH                     [48-50) cm         6      11  haz              
24 months   COHORTS          GUATEMALA                      >=50 cm          263     560  haz              
24 months   COHORTS          GUATEMALA                      <48 cm           120     560  haz              
24 months   COHORTS          GUATEMALA                      [48-50) cm       177     560  haz              
24 months   COHORTS          INDIA                          >=50 cm         1047    4758  haz              
24 months   COHORTS          INDIA                          <48 cm          1934    4758  haz              
24 months   COHORTS          INDIA                          [48-50) cm      1777    4758  haz              
24 months   COHORTS          PHILIPPINES                    >=50 cm          897    2442  haz              
24 months   COHORTS          PHILIPPINES                    <48 cm           604    2442  haz              
24 months   COHORTS          PHILIPPINES                    [48-50) cm       941    2442  haz              
24 months   CONTENT          PERU                           >=50 cm            1       2  haz              
24 months   CONTENT          PERU                           <48 cm             1       2  haz              
24 months   CONTENT          PERU                           [48-50) cm         0       2  haz              
24 months   EE               PAKISTAN                       >=50 cm           10     106  haz              
24 months   EE               PAKISTAN                       <48 cm            71     106  haz              
24 months   EE               PAKISTAN                       [48-50) cm        25     106  haz              
24 months   GMS-Nepal        NEPAL                          >=50 cm           84     487  haz              
24 months   GMS-Nepal        NEPAL                          <48 cm           249     487  haz              
24 months   GMS-Nepal        NEPAL                          [48-50) cm       154     487  haz              
24 months   IRC              INDIA                          >=50 cm          142     390  haz              
24 months   IRC              INDIA                          <48 cm           110     390  haz              
24 months   IRC              INDIA                          [48-50) cm       138     390  haz              
24 months   JiVitA-3         BANGLADESH                     >=50 cm          404    7184  haz              
24 months   JiVitA-3         BANGLADESH                     <48 cm          5067    7184  haz              
24 months   JiVitA-3         BANGLADESH                     [48-50) cm      1713    7184  haz              
24 months   JiVitA-4         BANGLADESH                     >=50 cm         1077    3987  haz              
24 months   JiVitA-4         BANGLADESH                     <48 cm          1944    3987  haz              
24 months   JiVitA-4         BANGLADESH                     [48-50) cm       966    3987  haz              
24 months   Keneba           GAMBIA                         >=50 cm          535    1065  haz              
24 months   Keneba           GAMBIA                         <48 cm           196    1065  haz              
24 months   Keneba           GAMBIA                         [48-50) cm       334    1065  haz              
24 months   MAL-ED           BANGLADESH                     >=50 cm           39     187  haz              
24 months   MAL-ED           BANGLADESH                     <48 cm            80     187  haz              
24 months   MAL-ED           BANGLADESH                     [48-50) cm        68     187  haz              
24 months   MAL-ED           BRAZIL                         >=50 cm           20      42  haz              
24 months   MAL-ED           BRAZIL                         <48 cm            10      42  haz              
24 months   MAL-ED           BRAZIL                         [48-50) cm        12      42  haz              
24 months   MAL-ED           INDIA                          >=50 cm            6      39  haz              
24 months   MAL-ED           INDIA                          <48 cm            18      39  haz              
24 months   MAL-ED           INDIA                          [48-50) cm        15      39  haz              
24 months   MAL-ED           NEPAL                          >=50 cm            8      26  haz              
24 months   MAL-ED           NEPAL                          <48 cm            11      26  haz              
24 months   MAL-ED           NEPAL                          [48-50) cm         7      26  haz              
24 months   MAL-ED           PERU                           >=50 cm           34     160  haz              
24 months   MAL-ED           PERU                           <48 cm            67     160  haz              
24 months   MAL-ED           PERU                           [48-50) cm        59     160  haz              
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm           32      91  haz              
24 months   MAL-ED           SOUTH AFRICA                   <48 cm            21      91  haz              
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm        38      91  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     104  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            34     104  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        41     104  haz              
24 months   NIH-Birth        BANGLADESH                     >=50 cm           99     414  haz              
24 months   NIH-Birth        BANGLADESH                     <48 cm           160     414  haz              
24 months   NIH-Birth        BANGLADESH                     [48-50) cm       155     414  haz              
24 months   NIH-Crypto       BANGLADESH                     >=50 cm          128     514  haz              
24 months   NIH-Crypto       BANGLADESH                     <48 cm           200     514  haz              
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm       186     514  haz              
24 months   PROBIT           BELARUS                        >=50 cm         3683    4035  haz              
24 months   PROBIT           BELARUS                        <48 cm            44    4035  haz              
24 months   PROBIT           BELARUS                        [48-50) cm       308    4035  haz              
24 months   PROVIDE          BANGLADESH                     >=50 cm          139     578  haz              
24 months   PROVIDE          BANGLADESH                     <48 cm           206     578  haz              
24 months   PROVIDE          BANGLADESH                     [48-50) cm       233     578  haz              
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm          312    1608  haz              
24 months   ZVITAMBO         ZIMBABWE                       <48 cm           711    1608  haz              
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm       585    1608  haz              


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
![](/tmp/706f4e85-6f21-483d-b940-5759d58a5101/db00710d-7f4b-41a7-bb17-e409379025bf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/706f4e85-6f21-483d-b940-5759d58a5101/db00710d-7f4b-41a7-bb17-e409379025bf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/706f4e85-6f21-483d-b940-5759d58a5101/db00710d-7f4b-41a7-bb17-e409379025bf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.3794522    0.1026493    0.6562551
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.9441494   -2.2021153   -1.6861836
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.4962798   -0.5930324   -0.3995271
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                 1.0585587    0.9937946    1.1233229
Birth       COHORTS          GUATEMALA                      <48 cm               NA                -1.6913559   -1.8231810   -1.5595308
Birth       COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2938938   -0.3379491   -0.2498386
Birth       COHORTS          INDIA                          >=50 cm              NA                 0.8422163    0.8072715    0.8771610
Birth       COHORTS          INDIA                          <48 cm               NA                -1.7336746   -1.7630949   -1.7042544
Birth       COHORTS          INDIA                          [48-50) cm           NA                -0.3380949   -0.3522345   -0.3239553
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                 0.7920750    0.7575797    0.8265703
Birth       COHORTS          PHILIPPINES                    <48 cm               NA                -1.6574326   -1.7123644   -1.6025007
Birth       COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.3394563   -0.3592753   -0.3196373
Birth       EE               PAKISTAN                       >=50 cm              NA                 0.5948605    0.0809877    1.1087334
Birth       EE               PAKISTAN                       <48 cm               NA                -2.5667757   -2.7378503   -2.3957011
Birth       EE               PAKISTAN                       [48-50) cm           NA                -0.8654122   -0.9784592   -0.7523651
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                 0.4839535    0.3988113    0.5690956
Birth       GMS-Nepal        NEPAL                          <48 cm               NA                -1.8602205   -1.9342926   -1.7861483
Birth       GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.5650260   -0.6151933   -0.5148587
Birth       IRC              INDIA                          >=50 cm              NA                 1.2560020    1.0743630    1.4376409
Birth       IRC              INDIA                          <48 cm               NA                -2.0775027   -2.2855746   -1.8694308
Birth       IRC              INDIA                          [48-50) cm           NA                -0.5337089   -0.5887205   -0.4786973
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.6441270    0.5998239    0.6884301
Birth       JiVitA-3         BANGLADESH                     <48 cm               NA                -2.0928159   -2.1092823   -2.0763495
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.4829131   -0.4945159   -0.4713103
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.3923948    0.3039472    0.4808425
Birth       JiVitA-4         BANGLADESH                     <48 cm               NA                -2.0567875   -2.0986238   -2.0149512
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.5863067   -0.6182204   -0.5543931
Birth       Keneba           GAMBIA                         >=50 cm              NA                 0.9760122    0.9210849    1.0309395
Birth       Keneba           GAMBIA                         <48 cm               NA                -1.7992880   -1.9191583   -1.6794177
Birth       Keneba           GAMBIA                         [48-50) cm           NA                -0.3614641   -0.3933573   -0.3295709
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                 0.3114762    0.1799721    0.4429803
Birth       MAL-ED           BANGLADESH                     <48 cm               NA                -1.9020410   -2.0441943   -1.7598877
Birth       MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.6941735   -0.7809627   -0.6073843
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                 0.2502878    0.0380290    0.4625465
Birth       MAL-ED           BRAZIL                         <48 cm               NA                -2.1021056   -2.4665084   -1.7377029
Birth       MAL-ED           BRAZIL                         [48-50) cm           NA                -1.0135704   -1.1916896   -0.8354511
Birth       MAL-ED           INDIA                          >=50 cm              NA                 0.0666667   -0.1235118    0.2568452
Birth       MAL-ED           INDIA                          <48 cm               NA                -2.1210000   -2.4586774   -1.7833226
Birth       MAL-ED           INDIA                          [48-50) cm           NA                -0.8194444   -0.9860051   -0.6528838
Birth       MAL-ED           NEPAL                          >=50 cm              NA                 0.2687500    0.0580716    0.4794284
Birth       MAL-ED           NEPAL                          <48 cm               NA                -1.6850000   -1.9901516   -1.3798484
Birth       MAL-ED           NEPAL                          [48-50) cm           NA                -0.7100000   -0.9522102   -0.4677898
Birth       MAL-ED           PERU                           >=50 cm              NA                 0.2358728    0.0832033    0.3885423
Birth       MAL-ED           PERU                           <48 cm               NA                -1.7832514   -1.9001212   -1.6663816
Birth       MAL-ED           PERU                           [48-50) cm           NA                -0.6565162   -0.7225118   -0.5905205
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.3740280    0.1896672    0.5583889
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               NA                -1.8744940   -2.2102853   -1.5387027
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.6851785   -0.7740987   -0.5962583
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0643833   -0.0999386    0.2287053
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.4039212   -2.7229862   -2.0848562
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.8722864   -0.9717687   -0.7728042
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.4920717    0.3735461    0.6105972
Birth       NIH-Birth        BANGLADESH                     <48 cm               NA                -1.9619995   -2.0490514   -1.8749475
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.7080164   -0.7567663   -0.6592666
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.3728532    0.2891983    0.4565082
Birth       NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.8418094   -1.9134851   -1.7701337
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.6822398   -0.7276168   -0.6368627
Birth       PROBIT           BELARUS                        >=50 cm              NA                 1.4952119    1.3591939    1.6312299
Birth       PROBIT           BELARUS                        <48 cm               NA                -1.5927082   -1.6324675   -1.5529488
Birth       PROBIT           BELARUS                        [48-50) cm           NA                -0.3900209   -0.4173278   -0.3627139
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                 0.2855665    0.1915511    0.3795819
Birth       PROVIDE          BANGLADESH                     <48 cm               NA                -1.7748513   -1.8382275   -1.7114752
Birth       PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.7368977   -0.7821748   -0.6916205
Birth       ResPak           PAKISTAN                       >=50 cm              NA                 0.7049003    0.2590139    1.1507867
Birth       ResPak           PAKISTAN                       <48 cm               NA                -2.4385695   -2.7182277   -2.1589113
Birth       ResPak           PAKISTAN                       [48-50) cm           NA                -0.6552504   -0.9154774   -0.3950234
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                 0.4130264    0.3455310    0.4805217
Birth       SAS-CompFeed     INDIA                          <48 cm               NA                -2.1273082   -2.1994174   -2.0551991
Birth       SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.6685305   -0.6931748   -0.6438863
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.8422410    0.8188913    0.8655906
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.8451359   -1.8713835   -1.8188883
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4178470   -0.4273185   -0.4083754
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.8995245   -1.6777774   -0.1212716
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.5213146   -1.8980987   -1.1445304
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -1.0519097   -1.4597075   -0.6441119
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                -1.2375579   -1.3291316   -1.1459841
6 months    COHORTS          GUATEMALA                      <48 cm               NA                -2.6808596   -2.8306908   -2.5310284
6 months    COHORTS          GUATEMALA                      [48-50) cm           NA                -2.0458520   -2.1734330   -1.9182710
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.1447774   -0.1984648   -0.0910900
6 months    COHORTS          INDIA                          <48 cm               NA                -1.6170192   -1.6608979   -1.5731404
6 months    COHORTS          INDIA                          [48-50) cm           NA                -0.8105882   -0.8500009   -0.7711756
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.6243711   -0.6869265   -0.5618157
6 months    COHORTS          PHILIPPINES                    <48 cm               NA                -1.8258745   -1.9058963   -1.7458528
6 months    COHORTS          PHILIPPINES                    [48-50) cm           NA                -1.1862672   -1.2465852   -1.1259492
6 months    EE               PAKISTAN                       >=50 cm              NA                -0.7110813   -1.0131302   -0.4090323
6 months    EE               PAKISTAN                       <48 cm               NA                -2.5011251   -2.6772113   -2.3250390
6 months    EE               PAKISTAN                       [48-50) cm           NA                -1.6197829   -1.8464628   -1.3931029
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.5679242   -0.7402533   -0.3955951
6 months    GMS-Nepal        NEPAL                          <48 cm               NA                -1.7432149   -1.8431327   -1.6432972
6 months    GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1198976   -1.2294141   -1.0103811
6 months    IRC              INDIA                          >=50 cm              NA                -0.7439609   -0.9593593   -0.5285626
6 months    IRC              INDIA                          <48 cm               NA                -1.8649929   -2.1335570   -1.5964289
6 months    IRC              INDIA                          [48-50) cm           NA                -1.2193597   -1.4252997   -1.0134197
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.0178376   -0.0918644    0.0561893
6 months    JiVitA-3         BANGLADESH                     <48 cm               NA                -1.6511967   -1.6757412   -1.6266521
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.6642407   -0.7002814   -0.6282000
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.9437510   -1.0184151   -0.8690869
6 months    JiVitA-4         BANGLADESH                     <48 cm               NA                -1.7664530   -1.8253824   -1.7075237
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                -1.0088801   -1.0809069   -0.9368533
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.5385705   -0.6169336   -0.4602075
6 months    Keneba           GAMBIA                         <48 cm               NA                -1.5148488   -1.6441997   -1.3854978
6 months    Keneba           GAMBIA                         [48-50) cm           NA                -1.1409133   -1.2291497   -1.0526769
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.3520482   -0.5790831   -0.1250132
6 months    MAL-ED           BANGLADESH                     <48 cm               NA                -1.6726125   -1.8465650   -1.4986601
6 months    MAL-ED           BANGLADESH                     [48-50) cm           NA                -1.0415394   -1.1964120   -0.8866668
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                 0.6153033    0.3686241    0.8619824
6 months    MAL-ED           BRAZIL                         <48 cm               NA                -0.5531856   -1.0276781   -0.0786932
6 months    MAL-ED           BRAZIL                         [48-50) cm           NA                -0.1102296   -0.7184670    0.4980077
6 months    MAL-ED           INDIA                          >=50 cm              NA                -0.4658333   -0.7214587   -0.2102080
6 months    MAL-ED           INDIA                          <48 cm               NA                -1.9712963   -2.3236492   -1.6189433
6 months    MAL-ED           INDIA                          [48-50) cm           NA                -1.5112222   -1.9292582   -1.0931863
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.1406250   -0.3527411    0.0714911
6 months    MAL-ED           NEPAL                          <48 cm               NA                -0.9272727   -1.3107187   -0.5438267
6 months    MAL-ED           NEPAL                          [48-50) cm           NA                -0.8650000   -1.4941733   -0.2358267
6 months    MAL-ED           PERU                           >=50 cm              NA                -0.7181352   -0.9465962   -0.4896741
6 months    MAL-ED           PERU                           <48 cm               NA                -1.8316995   -2.0097323   -1.6536667
6 months    MAL-ED           PERU                           [48-50) cm           NA                -1.1353501   -1.3010226   -0.9696777
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.6689804   -0.9597732   -0.3781876
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               NA                -1.8185434   -2.3696599   -1.2674268
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -1.0972725   -1.3871478   -0.8073971
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.6913251   -0.9564535   -0.4261967
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -1.9673419   -2.2545862   -1.6800977
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -1.3074812   -1.5394791   -1.0754834
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6383380   -0.8154173   -0.4612587
6 months    NIH-Birth        BANGLADESH                     <48 cm               NA                -2.0149723   -2.1516618   -1.8782828
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.2737539   -1.3825671   -1.1649408
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.4075281   -0.5146335   -0.3004227
6 months    NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.7513479   -1.8573342   -1.6453616
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -1.1285175   -1.2283872   -1.0286478
6 months    PROBIT           BELARUS                        >=50 cm              NA                 0.1778395    0.0817715    0.2739076
6 months    PROBIT           BELARUS                        <48 cm               NA                -1.0717730   -1.1865092   -0.9570367
6 months    PROBIT           BELARUS                        [48-50) cm           NA                -0.6409779   -0.8011045   -0.4808513
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.3168794   -0.4484929   -0.1852658
6 months    PROVIDE          BANGLADESH                     <48 cm               NA                -1.7159596   -1.8213376   -1.6105816
6 months    PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.9993491   -1.0909970   -0.9077013
6 months    ResPak           PAKISTAN                       >=50 cm              NA                -1.2143940   -2.0926901   -0.3360979
6 months    ResPak           PAKISTAN                       <48 cm               NA                -2.4262535   -3.4339472   -1.4185597
6 months    ResPak           PAKISTAN                       [48-50) cm           NA                -1.5200066   -2.9365719   -0.1034414
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.5651429   -0.7583030   -0.3719828
6 months    SAS-CompFeed     INDIA                          <48 cm               NA                -1.8790901   -1.9421103   -1.8160699
6 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.9843791   -1.0800339   -0.8887243
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4570455   -0.5011549   -0.4129361
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.3026532   -1.3482917   -1.2570147
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.8317214   -0.8713791   -0.7920637
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -2.1395685   -2.5768813   -1.7022557
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                -2.5824459   -2.7978876   -2.3670043
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -2.4089863   -2.6902241   -2.1277486
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -2.5411979   -2.6565825   -2.4258133
24 months   COHORTS          GUATEMALA                      <48 cm               NA                -3.5455380   -3.7258893   -3.3651867
24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                -3.1474828   -3.2993577   -2.9956080
24 months   COHORTS          INDIA                          >=50 cm              NA                -1.3992828   -1.4681151   -1.3304504
24 months   COHORTS          INDIA                          <48 cm               NA                -2.6040890   -2.6552362   -2.5529418
24 months   COHORTS          INDIA                          [48-50) cm           NA                -2.0178886   -2.0688781   -1.9668991
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -1.9634608   -2.0334019   -1.8935197
24 months   COHORTS          PHILIPPINES                    <48 cm               NA                -2.9581376   -3.0454244   -2.8708509
24 months   COHORTS          PHILIPPINES                    [48-50) cm           NA                -2.4942328   -2.5611461   -2.4273196
24 months   EE               PAKISTAN                       >=50 cm              NA                -2.0421505   -2.3676968   -1.7166042
24 months   EE               PAKISTAN                       <48 cm               NA                -2.8338847   -3.0498128   -2.6179566
24 months   EE               PAKISTAN                       [48-50) cm           NA                -2.6480936   -2.9958819   -2.3003054
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -1.4367155   -1.6490987   -1.2243324
24 months   GMS-Nepal        NEPAL                          <48 cm               NA                -2.1608926   -2.2756993   -2.0460859
24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.6997311   -1.8378631   -1.5615991
24 months   IRC              INDIA                          >=50 cm              NA                -1.6089411   -1.7709400   -1.4469423
24 months   IRC              INDIA                          <48 cm               NA                -2.1183484   -2.2970237   -1.9396730
24 months   IRC              INDIA                          [48-50) cm           NA                -1.7443960   -1.8947325   -1.5940596
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -1.1526613   -1.2558070   -1.0495156
24 months   JiVitA-3         BANGLADESH                     <48 cm               NA                -2.2658512   -2.2984977   -2.2332047
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           NA                -1.5333103   -1.5791411   -1.4874795
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -1.4900154   -1.5583345   -1.4216964
24 months   JiVitA-4         BANGLADESH                     <48 cm               NA                -2.0464802   -2.1015387   -1.9914217
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                -1.5482015   -1.6179923   -1.4784108
24 months   Keneba           GAMBIA                         >=50 cm              NA                -1.2890379   -1.3750986   -1.2029772
24 months   Keneba           GAMBIA                         <48 cm               NA                -1.9270647   -2.0584872   -1.7956421
24 months   Keneba           GAMBIA                         [48-50) cm           NA                -1.7376791   -1.8461559   -1.6292023
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -1.4600661   -1.7188211   -1.2013110
24 months   MAL-ED           BANGLADESH                     <48 cm               NA                -2.3903482   -2.5898849   -2.1908115
24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                -1.8532697   -2.0375688   -1.6689705
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.2425321   -0.2255593    0.7106234
24 months   MAL-ED           BRAZIL                         <48 cm               NA                -0.4214286   -1.1687090    0.3258518
24 months   MAL-ED           BRAZIL                         [48-50) cm           NA                -0.4068137   -1.1132787    0.2996514
24 months   MAL-ED           INDIA                          >=50 cm              NA                -1.3825000   -1.7660213   -0.9989787
24 months   MAL-ED           INDIA                          <48 cm               NA                -2.5138889   -2.9435277   -2.0842500
24 months   MAL-ED           INDIA                          [48-50) cm           NA                -2.1410000   -2.4856619   -1.7963381
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -1.0575000   -1.3098335   -0.8051665
24 months   MAL-ED           NEPAL                          <48 cm               NA                -1.6331818   -2.2000387   -1.0663249
24 months   MAL-ED           NEPAL                          [48-50) cm           NA                -1.9007143   -2.5143042   -1.2871243
24 months   MAL-ED           PERU                           >=50 cm              NA                -1.3874900   -1.6955266   -1.0794535
24 months   MAL-ED           PERU                           <48 cm               NA                -2.0760557   -2.2772573   -1.8748541
24 months   MAL-ED           PERU                           [48-50) cm           NA                -1.5579413   -1.7434914   -1.3723912
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -1.4780903   -1.8460899   -1.1100908
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                -1.7212877   -2.1316206   -1.3109548
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -1.6301165   -2.0890586   -1.1711743
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -2.0611653   -2.3507166   -1.7716141
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.8455899   -3.1790404   -2.5121393
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -2.6481195   -2.9626061   -2.3336328
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.5878928   -1.7947278   -1.3810578
24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                -2.7733804   -2.9292245   -2.6175363
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                -2.0788713   -2.2246747   -1.9330679
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.9233991   -1.0456589   -0.8011394
24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.8026057   -1.9370798   -1.6681316
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -1.3922606   -1.5300694   -1.2544518
24 months   PROBIT           BELARUS                        >=50 cm              NA                -0.1144612   -0.4016917    0.1727693
24 months   PROBIT           BELARUS                        <48 cm               NA                -0.4682902   -0.9517476    0.0151673
24 months   PROBIT           BELARUS                        [48-50) cm           NA                -0.4525258   -0.7524653   -0.1525863
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -1.0356710   -1.1785253   -0.8928167
24 months   PROVIDE          BANGLADESH                     <48 cm               NA                -2.1901783   -2.3154805   -2.0648762
24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                -1.4340807   -1.5526662   -1.3154952
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1378703   -1.2592189   -1.0165216
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.9038000   -1.9902983   -1.8173016
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.4621495   -1.5532215   -1.3710775


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          NA                   NA                -0.6698961   -0.6980556   -0.6417365
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5894148   -1.6086362   -1.5701935
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
Birth       Keneba           GAMBIA                         NA                   NA                 0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5002724   -0.5208163   -0.4797285
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.2953686   -1.5534398   -1.0372973
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.7553052   -1.8330182   -1.6775923
6 months    COHORTS          INDIA                          NA                   NA                -0.9973610   -1.0266429   -0.9680792
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1429137   -1.1848624   -1.1009651
6 months    EE               PAKISTAN                       NA                   NA                -2.1264619   -2.2795142   -1.9734095
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3510539   -1.4294158   -1.2726919
6 months    IRC              INDIA                          NA                   NA                -1.2263582   -1.3620220   -1.0906944
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3303469   -1.3544501   -1.3062437
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3464316   -1.3887462   -1.3041170
6 months    Keneba           GAMBIA                         NA                   NA                -0.9034101   -0.9602836   -0.8465366
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2087678   -1.3332048   -1.0843307
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0564689   -0.1983718    0.3113097
6 months    MAL-ED           INDIA                          NA                   NA                -1.5092276   -1.7906712   -1.2277841
6 months    MAL-ED           NEPAL                          NA                   NA                -0.6684615   -0.9484552   -0.3884679
6 months    MAL-ED           PERU                           NA                   NA                -1.2930271   -1.4141974   -1.1718569
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0985125   -1.3092915   -0.8877336
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3305226   -1.5032169   -1.1578283
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4092745   -1.5003907   -1.3181582
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       NA                   NA                -1.7077451   -2.2839081   -1.1315821
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4030363   -1.4821426   -1.3239299
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8671231   -0.8928063   -0.8414399
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.4800629   -2.6380751   -2.3220507
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9426964   -3.0309681   -2.8544248
24 months   COHORTS          INDIA                          NA                   NA                -2.1193232   -2.1537519   -2.0848946
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4157330   -2.4606528   -2.3708132
24 months   EE               PAKISTAN                       NA                   NA                -2.6323899   -2.8110257   -2.4537542
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8864887   -1.9720856   -1.8008918
24 months   IRC              INDIA                          NA                   NA                -1.7882863   -1.8843577   -1.6922149
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0375014   -2.0671576   -2.0078452
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7719162   -1.8104910   -1.7333415
24 months   Keneba           GAMBIA                         NA                   NA                -1.5564333   -1.6186769   -1.4941898
24 months   MAL-ED           BANGLADESH                     NA                   NA                -2.0004545   -2.1320336   -1.8688755
24 months   MAL-ED           BRAZIL                         NA                   NA                -0.0901587   -0.4299024    0.2495849
24 months   MAL-ED           INDIA                          NA                   NA                -2.1964103   -2.4711826   -1.9216379
24 months   MAL-ED           NEPAL                          NA                   NA                -1.5280769   -1.8563546   -1.1997992
24 months   MAL-ED           PERU                           NA                   NA                -1.7565208   -1.8888943   -1.6241474
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.5850366   -1.8154417   -1.3546316
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5537500   -2.7412414   -2.3662586
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2268619   -2.3322626   -2.1214612
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6032245   -1.6608525   -1.5455965


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -2.3236016   -2.7032518   -1.9439514
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.8757320   -1.1685064   -0.5829575
Birth       COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <48 cm               >=50 cm           -2.7499146   -2.8976472   -2.6021820
Birth       COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -1.3524526   -1.4303423   -1.2745628
Birth       COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <48 cm               >=50 cm           -2.5758909   -2.6214572   -2.5303247
Birth       COHORTS          INDIA                          [48-50) cm           >=50 cm           -1.1803111   -1.2176903   -1.1429320
Birth       COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -2.4495075   -2.5142219   -2.3847932
Birth       COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -1.1315313   -1.1710348   -1.0920278
Birth       EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       <48 cm               >=50 cm           -3.1616362   -3.7033984   -2.6198740
Birth       EE               PAKISTAN                       [48-50) cm           >=50 cm           -1.4602727   -1.9879642   -0.9325813
Birth       GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -2.3441739   -2.4574452   -2.2309026
Birth       GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -1.0489795   -1.1470085   -0.9509505
Birth       IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <48 cm               >=50 cm           -3.3335046   -3.6096004   -3.0574089
Birth       IRC              INDIA                          [48-50) cm           >=50 cm           -1.7897109   -1.9789634   -1.6004583
Birth       JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -2.7369429   -2.7848342   -2.6890516
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -1.1270401   -1.1723481   -1.0817321
Birth       JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -2.4491823   -2.5473396   -2.3510250
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.9787016   -1.0745529   -0.8828503
Birth       Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <48 cm               >=50 cm           -2.7753002   -2.9072995   -2.6433010
Birth       Keneba           GAMBIA                         [48-50) cm           >=50 cm           -1.3374763   -1.4004979   -1.2744547
Birth       MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -2.2135172   -2.4074013   -2.0196332
Birth       MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -1.0056497   -1.1632284   -0.8480710
Birth       MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <48 cm               >=50 cm           -2.3523934   -2.7729319   -1.9318549
Birth       MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -1.2638581   -1.5385432   -0.9891731
Birth       MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <48 cm               >=50 cm           -2.1876667   -2.5752152   -1.8001181
Birth       MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.8861111   -1.1389160   -0.6333063
Birth       MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <48 cm               >=50 cm           -1.9537500   -2.3245638   -1.5829362
Birth       MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.9787500   -1.2997658   -0.6577342
Birth       MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <48 cm               >=50 cm           -2.0191242   -2.2108202   -1.8274283
Birth       MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.8923890   -1.0579357   -0.7268423
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -2.2485220   -2.6327120   -1.8643320
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -1.0592065   -1.2655690   -0.8528441
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -2.4683045   -2.8285999   -2.1080091
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.9366697   -1.1282520   -0.7450875
Birth       NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -2.4540711   -2.6007977   -2.3073446
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -1.2000881   -1.3279552   -1.0722210
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -2.2146626   -2.3247446   -2.1045806
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -1.0550930   -1.1494970   -0.9606889
Birth       PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <48 cm               >=50 cm           -3.0879201   -3.2428871   -2.9329530
Birth       PROBIT           BELARUS                        [48-50) cm           >=50 cm           -1.8852328   -2.0203318   -1.7501338
Birth       PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -2.0604178   -2.1735651   -1.9472705
Birth       PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -1.0224642   -1.1262324   -0.9186960
Birth       ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       <48 cm               >=50 cm           -3.1434698   -3.6601178   -2.6268217
Birth       ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -1.3601507   -1.8926907   -0.8276107
Birth       SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -2.5403346   -2.6071348   -2.4735343
Birth       SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -1.0815569   -1.1529197   -1.0101941
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -2.6873769   -2.7226117   -2.6521421
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -1.2600879   -1.2850098   -1.2351661
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.6217901   -1.4902934    0.2467132
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.1523852   -1.0360985    0.7313281
6 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm           -1.4433017   -1.6190684   -1.2675351
6 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.8082941   -0.9646609   -0.6519273
6 months    COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <48 cm               >=50 cm           -1.4722418   -1.5416876   -1.4027960
6 months    COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6658109   -0.7324618   -0.5991599
6 months    COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -1.2015034   -1.3030472   -1.0999596
6 months    COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5618961   -0.6487493   -0.4750430
6 months    EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       <48 cm               >=50 cm           -1.7900439   -2.1403700   -1.4397177
6 months    EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.9087016   -1.2864042   -0.5309990
6 months    GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -1.1752907   -1.3745567   -0.9760248
6 months    GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.5519734   -0.7565204   -0.3474263
6 months    IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <48 cm               >=50 cm           -1.1210320   -1.4636561   -0.7784079
6 months    IRC              INDIA                          [48-50) cm           >=50 cm           -0.4753987   -0.7719176   -0.1788799
6 months    JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -1.6333591   -1.7094208   -1.5572974
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.6464031   -0.7259989   -0.5668074
6 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.8227020   -0.9181540   -0.7272501
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0651291   -0.1656928    0.0354346
6 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <48 cm               >=50 cm           -0.9762782   -1.1274890   -0.8250674
6 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.6023428   -0.7203376   -0.4843480
6 months    MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -1.3205644   -1.6067399   -1.0343888
6 months    MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.6894912   -0.9643991   -0.4145833
6 months    MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <48 cm               >=50 cm           -1.1684889   -1.7095354   -0.6274424
6 months    MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.7255329   -1.3882054   -0.0628604
6 months    MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <48 cm               >=50 cm           -1.5054630   -1.9407754   -1.0701505
6 months    MAL-ED           INDIA                          [48-50) cm           >=50 cm           -1.0453889   -1.5353872   -0.5553906
6 months    MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.7866477   -1.2248532   -0.3484422
6 months    MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.7243750   -1.3883421   -0.0604079
6 months    MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <48 cm               >=50 cm           -1.1135644   -1.4034248   -0.8237040
6 months    MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.4172150   -0.6986215   -0.1358084
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -1.1495630   -1.7729377   -0.5261883
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.4282921   -0.8392460   -0.0173381
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -1.2760168   -1.6684529   -0.8835807
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.6161561   -0.9684743   -0.2638379
6 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.3766343   -1.6001790   -1.1530896
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.6354159   -0.8431236   -0.4277083
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -1.3438199   -1.4947801   -1.1928596
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.7209894   -0.8674840   -0.5744949
6 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <48 cm               >=50 cm           -1.2496125   -1.3679860   -1.1312390
6 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.8188174   -0.9433912   -0.6942435
6 months    PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -1.3990802   -1.5677910   -1.2303694
6 months    PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.6824698   -0.8427851   -0.5221545
6 months    ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       <48 cm               >=50 cm           -1.2118594   -2.5681631    0.1444443
6 months    ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.3056126   -1.9860956    1.3748704
6 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -1.3139472   -1.5431565   -1.0847378
6 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.4192362   -0.6689208   -0.1695516
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.8456076   -0.9089389   -0.7822764
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.3746759   -0.4338938   -0.3154579
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.4428775   -0.9325483    0.0467934
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.2694179   -0.7911471    0.2523113
24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -1.0043401   -1.2177821   -0.7908982
24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.6062850   -0.7964195   -0.4161504
24 months   COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <48 cm               >=50 cm           -1.2048063   -1.2905894   -1.1190231
24 months   COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6186058   -0.7042031   -0.5330086
24 months   COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.9946768   -1.1065021   -0.8828516
24 months   COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5307721   -0.6276119   -0.4339322
24 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.7917342   -1.1865822   -0.3968862
24 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.6059432   -1.0927985   -0.1190878
24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.7241771   -0.9659327   -0.4824215
24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.2630155   -0.5163435   -0.0096876
24 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <48 cm               >=50 cm           -0.5094072   -0.7510053   -0.2678092
24 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.1354549   -0.3565282    0.0856185
24 months   JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -1.1131899   -1.2202505   -1.0061292
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.3806490   -0.4936276   -0.2676704
24 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.5564648   -0.6424158   -0.4705138
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0581861   -0.1527757    0.0364035
24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.6380267   -0.7940085   -0.4820450
24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.4486412   -0.5863086   -0.3109739
24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.9302821   -1.2573326   -0.6032316
24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.3932036   -0.7110175   -0.0753897
24 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.6639607   -1.5464947    0.2185734
24 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.6493458   -1.5023364    0.2036448
24 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -1.1313889   -1.7073039   -0.5554738
24 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.7585000   -1.2741359   -0.2428641
24 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.5756818   -1.1961646    0.0448010
24 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.8432143   -1.5066635   -0.1797651
24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.6885657   -1.0561880   -0.3209434
24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.1704512   -0.5312345    0.1903320
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.2431974   -0.8012410    0.3148463
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.1520261   -0.7428050    0.4387527
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.7844245   -1.2287330   -0.3401161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.5869541   -1.0171759   -0.1567324
24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.1854876   -1.4442197   -0.9267556
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.4909785   -0.7434330   -0.2385240
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.8792066   -1.0611044   -0.6973088
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.4688615   -0.6529441   -0.2847790
24 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <48 cm               >=50 cm           -0.3538290   -0.8739203    0.1662623
24 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.3380646   -0.6004166   -0.0757126
24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -1.1545073   -1.3447203   -0.9642943
24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.3984096   -0.5835181   -0.2133011
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.7659297   -0.9144702   -0.6173892
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.3242793   -0.4757383   -0.1728203


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -1.3406478   -1.6553831   -1.0259126
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                -0.9288287   -1.0137851   -0.8438723
Birth       COHORTS          INDIA                          >=50 cm              NA                -1.5121123   -1.5516695   -1.4725552
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                -1.0411242   -1.0840802   -0.9981681
Birth       EE               PAKISTAN                       >=50 cm              NA                -2.4557355   -2.9585351   -1.9529360
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                -1.5691115   -1.6765879   -1.4616352
Birth       IRC              INDIA                          >=50 cm              NA                -1.5640432   -1.7505266   -1.3775598
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                -2.2335418   -2.2823208   -2.1847628
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                -1.9156857   -2.0105219   -1.8208494
Birth       Keneba           GAMBIA                         >=50 cm              NA                -0.9452086   -1.0102130   -0.8802042
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                -1.4295715   -1.6020265   -1.2571164
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                -0.9262878   -1.2071169   -0.6454586
Birth       MAL-ED           INDIA                          >=50 cm              NA                -1.2702837   -1.6001173   -0.9404501
Birth       MAL-ED           NEPAL                          >=50 cm              NA                -1.1220833   -1.5037131   -0.7404536
Birth       MAL-ED           PERU                           >=50 cm              NA                -1.1186625   -1.2841724   -0.9531527
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -1.0057353   -1.2282103   -0.7832604
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -1.2199833   -1.4602723   -0.9796943
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.4230914   -1.5480861   -1.2980967
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                -1.2823478   -1.3788614   -1.1858341
Birth       PROBIT           BELARUS                        >=50 cm              NA                -0.1837702   -0.2236611   -0.1438793
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                -1.1706685   -1.2737291   -1.0676080
Birth       ResPak           PAKISTAN                       >=50 cm              NA                -1.6849003   -2.2270331   -1.1427676
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                -1.8444481   -1.9376852   -1.7512110
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3425134   -1.3688262   -1.3162006
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3958441   -1.1250633    0.3333751
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                -0.5177474   -0.5945557   -0.4409390
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.8525837   -0.9030629   -0.8021045
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.5185426   -0.5716688   -0.4654165
6 months    EE               PAKISTAN                       >=50 cm              NA                -1.4153806   -1.7263689   -1.1043923
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.7831297   -0.9439983   -0.6222611
6 months    IRC              INDIA                          >=50 cm              NA                -0.4823972   -0.6609141   -0.3038804
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -1.3125093   -1.3843746   -1.2406441
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.4026806   -0.4675091   -0.3378521
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.3648396   -0.4219957   -0.3076834
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.8567196   -1.0763626   -0.6370766
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                -0.5588343   -0.8378188   -0.2798499
6 months    MAL-ED           INDIA                          >=50 cm              NA                -1.0433943   -1.3884372   -0.6983515
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.5278365   -0.8371932   -0.2184799
6 months    MAL-ED           PERU                           >=50 cm              NA                -0.5748920   -0.7832370   -0.3665470
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.4295322   -0.6931522   -0.1659121
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.6391975   -0.8915686   -0.3868265
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.7709365   -0.9293206   -0.6125524
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.7911502   -0.8977577   -0.6845428
6 months    PROBIT           BELARUS                        >=50 cm              NA                -0.0798321   -0.0963062   -0.0633581
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.7748121   -0.8958556   -0.6537687
6 months    ResPak           PAKISTAN                       >=50 cm              NA                -0.4933511   -1.3196965    0.3329944
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.8378933   -1.0320430   -0.6437437
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4100776   -0.4483308   -0.3718244
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3404944   -0.7460943    0.0651054
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.4014986   -0.4938487   -0.3091484
24 months   COHORTS          INDIA                          >=50 cm              NA                -0.7200405   -0.7824339   -0.6576470
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4522722   -0.5100743   -0.3944702
24 months   EE               PAKISTAN                       >=50 cm              NA                -0.5902394   -0.9363297   -0.2441492
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.4497732   -0.6419733   -0.2575731
24 months   IRC              INDIA                          >=50 cm              NA                -0.1793452   -0.3080900   -0.0506004
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.8848401   -0.9844517   -0.7852285
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.2819008   -0.3400539   -0.2237477
24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.2673954   -0.3293069   -0.2054839
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.5403885   -0.7781447   -0.3026322
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.3326908   -0.7085343    0.0431527
24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.8139103   -1.2350164   -0.3928041
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.4705769   -0.8342465   -0.1069074
24 months   MAL-ED           PERU                           >=50 cm              NA                -0.3690308   -0.6430770   -0.0949846
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.1069463   -0.4280138    0.2141212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.4925847   -0.7656881   -0.2194813
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6389691   -0.8215804   -0.4563578
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.5178655   -0.6382744   -0.3974565
24 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0298279   -0.0544708   -0.0051851
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.5667511   -0.6978747   -0.4356276
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4653542   -0.5763290   -0.3543794

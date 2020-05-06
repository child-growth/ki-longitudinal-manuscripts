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
Birth       CMIN             BANGLADESH                     <48 cm            19      26  haz              
Birth       CMIN             BANGLADESH                     [48-50) cm         5      26  haz              
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
Birth       EE               PAKISTAN                       >=50 cm           22     240  haz              
Birth       EE               PAKISTAN                       <48 cm           172     240  haz              
Birth       EE               PAKISTAN                       [48-50) cm        46     240  haz              
Birth       GMS-Nepal        NEPAL                          >=50 cm          104     696  haz              
Birth       GMS-Nepal        NEPAL                          <48 cm           384     696  haz              
Birth       GMS-Nepal        NEPAL                          [48-50) cm       208     696  haz              
Birth       IRC              INDIA                          >=50 cm          142     388  haz              
Birth       IRC              INDIA                          <48 cm           108     388  haz              
Birth       IRC              INDIA                          [48-50) cm       138     388  haz              
Birth       JiVitA-3         BANGLADESH                     >=50 cm         1228   22455  haz              
Birth       JiVitA-3         BANGLADESH                     <48 cm         16136   22455  haz              
Birth       JiVitA-3         BANGLADESH                     [48-50) cm      5091   22455  haz              
Birth       JiVitA-4         BANGLADESH                     >=50 cm          178    2823  haz              
Birth       JiVitA-4         BANGLADESH                     <48 cm          1913    2823  haz              
Birth       JiVitA-4         BANGLADESH                     [48-50) cm       732    2823  haz              
Birth       Keneba           GAMBIA                         >=50 cm          763    1543  haz              
Birth       Keneba           GAMBIA                         <48 cm           285    1543  haz              
Birth       Keneba           GAMBIA                         [48-50) cm       495    1543  haz              
Birth       MAL-ED           BANGLADESH                     >=50 cm           35     231  haz              
Birth       MAL-ED           BANGLADESH                     <48 cm           117     231  haz              
Birth       MAL-ED           BANGLADESH                     [48-50) cm        79     231  haz              
Birth       MAL-ED           BRAZIL                         >=50 cm           23      65  haz              
Birth       MAL-ED           BRAZIL                         <48 cm            18      65  haz              
Birth       MAL-ED           BRAZIL                         [48-50) cm        24      65  haz              
Birth       MAL-ED           INDIA                          >=50 cm            9      47  haz              
Birth       MAL-ED           INDIA                          <48 cm            22      47  haz              
Birth       MAL-ED           INDIA                          [48-50) cm        16      47  haz              
Birth       MAL-ED           NEPAL                          >=50 cm            7      27  haz              
Birth       MAL-ED           NEPAL                          <48 cm            12      27  haz              
Birth       MAL-ED           NEPAL                          [48-50) cm         8      27  haz              
Birth       MAL-ED           PERU                           >=50 cm           41     233  haz              
Birth       MAL-ED           PERU                           <48 cm            92     233  haz              
Birth       MAL-ED           PERU                           [48-50) cm       100     233  haz              
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm           35     123  haz              
Birth       MAL-ED           SOUTH AFRICA                   <48 cm            36     123  haz              
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm        52     123  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           20     125  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            44     125  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        61     125  haz              
Birth       NIH-Birth        BANGLADESH                     >=50 cm          124     608  haz              
Birth       NIH-Birth        BANGLADESH                     <48 cm           253     608  haz              
Birth       NIH-Birth        BANGLADESH                     [48-50) cm       231     608  haz              
Birth       NIH-Crypto       BANGLADESH                     >=50 cm          161     732  haz              
Birth       NIH-Crypto       BANGLADESH                     <48 cm           287     732  haz              
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm       284     732  haz              
Birth       PROBIT           BELARUS                        >=50 cm        12626   13893  haz              
Birth       PROBIT           BELARUS                        <48 cm           147   13893  haz              
Birth       PROBIT           BELARUS                        [48-50) cm      1120   13893  haz              
Birth       PROVIDE          BANGLADESH                     >=50 cm          121     539  haz              
Birth       PROVIDE          BANGLADESH                     <48 cm           196     539  haz              
Birth       PROVIDE          BANGLADESH                     [48-50) cm       222     539  haz              
Birth       ResPak           PAKISTAN                       >=50 cm           10      42  haz              
Birth       ResPak           PAKISTAN                       <48 cm            19      42  haz              
Birth       ResPak           PAKISTAN                       [48-50) cm        13      42  haz              
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
6 months    CMIN             BANGLADESH                     <48 cm             7      12  haz              
6 months    CMIN             BANGLADESH                     [48-50) cm         5      12  haz              
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
6 months    EE               PAKISTAN                       >=50 cm           22     236  haz              
6 months    EE               PAKISTAN                       <48 cm           170     236  haz              
6 months    EE               PAKISTAN                       [48-50) cm        44     236  haz              
6 months    GMS-Nepal        NEPAL                          >=50 cm           87     563  haz              
6 months    GMS-Nepal        NEPAL                          <48 cm           305     563  haz              
6 months    GMS-Nepal        NEPAL                          [48-50) cm       171     563  haz              
6 months    IRC              INDIA                          >=50 cm          142     389  haz              
6 months    IRC              INDIA                          <48 cm           109     389  haz              
6 months    IRC              INDIA                          [48-50) cm       138     389  haz              
6 months    JiVitA-3         BANGLADESH                     >=50 cm          807   13924  haz              
6 months    JiVitA-3         BANGLADESH                     <48 cm          9835   13924  haz              
6 months    JiVitA-3         BANGLADESH                     [48-50) cm      3282   13924  haz              
6 months    JiVitA-4         BANGLADESH                     >=50 cm         1101    4020  haz              
6 months    JiVitA-4         BANGLADESH                     <48 cm          1923    4020  haz              
6 months    JiVitA-4         BANGLADESH                     [48-50) cm       996    4020  haz              
6 months    Keneba           GAMBIA                         >=50 cm          677    1347  haz              
6 months    Keneba           GAMBIA                         <48 cm           234    1347  haz              
6 months    Keneba           GAMBIA                         [48-50) cm       436    1347  haz              
6 months    MAL-ED           BANGLADESH                     >=50 cm           35     211  haz              
6 months    MAL-ED           BANGLADESH                     <48 cm           101     211  haz              
6 months    MAL-ED           BANGLADESH                     [48-50) cm        75     211  haz              
6 months    MAL-ED           BRAZIL                         >=50 cm           21      59  haz              
6 months    MAL-ED           BRAZIL                         <48 cm            16      59  haz              
6 months    MAL-ED           BRAZIL                         [48-50) cm        22      59  haz              
6 months    MAL-ED           INDIA                          >=50 cm            8      41  haz              
6 months    MAL-ED           INDIA                          <48 cm            20      41  haz              
6 months    MAL-ED           INDIA                          [48-50) cm        13      41  haz              
6 months    MAL-ED           NEPAL                          >=50 cm            7      26  haz              
6 months    MAL-ED           NEPAL                          <48 cm            11      26  haz              
6 months    MAL-ED           NEPAL                          [48-50) cm         8      26  haz              
6 months    MAL-ED           PERU                           >=50 cm           38     215  haz              
6 months    MAL-ED           PERU                           <48 cm            88     215  haz              
6 months    MAL-ED           PERU                           [48-50) cm        89     215  haz              
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm           29      93  haz              
6 months    MAL-ED           SOUTH AFRICA                   <48 cm            24      93  haz              
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm        40      93  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           19     118  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            41     118  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        58     118  haz              
6 months    NIH-Birth        BANGLADESH                     >=50 cm          106     518  haz              
6 months    NIH-Birth        BANGLADESH                     <48 cm           210     518  haz              
6 months    NIH-Birth        BANGLADESH                     [48-50) cm       202     518  haz              
6 months    NIH-Crypto       BANGLADESH                     >=50 cm          164     715  haz              
6 months    NIH-Crypto       BANGLADESH                     <48 cm           270     715  haz              
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm       281     715  haz              
6 months    PROBIT           BELARUS                        >=50 cm        14295   15760  haz              
6 months    PROBIT           BELARUS                        <48 cm           172   15760  haz              
6 months    PROBIT           BELARUS                        [48-50) cm      1293   15760  haz              
6 months    PROVIDE          BANGLADESH                     >=50 cm          143     604  haz              
6 months    PROVIDE          BANGLADESH                     <48 cm           213     604  haz              
6 months    PROVIDE          BANGLADESH                     [48-50) cm       248     604  haz              
6 months    ResPak           PAKISTAN                       >=50 cm            8      34  haz              
6 months    ResPak           PAKISTAN                       <48 cm            16      34  haz              
6 months    ResPak           PAKISTAN                       [48-50) cm        10      34  haz              
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
24 months   CMIN             BANGLADESH                     <48 cm             6      11  haz              
24 months   CMIN             BANGLADESH                     [48-50) cm         5      11  haz              
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
24 months   EE               PAKISTAN                       <48 cm            74     106  haz              
24 months   EE               PAKISTAN                       [48-50) cm        22     106  haz              
24 months   GMS-Nepal        NEPAL                          >=50 cm           76     487  haz              
24 months   GMS-Nepal        NEPAL                          <48 cm           255     487  haz              
24 months   GMS-Nepal        NEPAL                          [48-50) cm       156     487  haz              
24 months   IRC              INDIA                          >=50 cm          142     390  haz              
24 months   IRC              INDIA                          <48 cm           110     390  haz              
24 months   IRC              INDIA                          [48-50) cm       138     390  haz              
24 months   JiVitA-3         BANGLADESH                     >=50 cm          395    7184  haz              
24 months   JiVitA-3         BANGLADESH                     <48 cm          5075    7184  haz              
24 months   JiVitA-3         BANGLADESH                     [48-50) cm      1714    7184  haz              
24 months   JiVitA-4         BANGLADESH                     >=50 cm         1077    3987  haz              
24 months   JiVitA-4         BANGLADESH                     <48 cm          1944    3987  haz              
24 months   JiVitA-4         BANGLADESH                     [48-50) cm       966    3987  haz              
24 months   Keneba           GAMBIA                         >=50 cm          535    1065  haz              
24 months   Keneba           GAMBIA                         <48 cm           196    1065  haz              
24 months   Keneba           GAMBIA                         [48-50) cm       334    1065  haz              
24 months   MAL-ED           BANGLADESH                     >=50 cm           35     187  haz              
24 months   MAL-ED           BANGLADESH                     <48 cm            83     187  haz              
24 months   MAL-ED           BANGLADESH                     [48-50) cm        69     187  haz              
24 months   MAL-ED           BRAZIL                         >=50 cm           17      42  haz              
24 months   MAL-ED           BRAZIL                         <48 cm            11      42  haz              
24 months   MAL-ED           BRAZIL                         [48-50) cm        14      42  haz              
24 months   MAL-ED           INDIA                          >=50 cm            6      39  haz              
24 months   MAL-ED           INDIA                          <48 cm            20      39  haz              
24 months   MAL-ED           INDIA                          [48-50) cm        13      39  haz              
24 months   MAL-ED           NEPAL                          >=50 cm            7      26  haz              
24 months   MAL-ED           NEPAL                          <48 cm            11      26  haz              
24 months   MAL-ED           NEPAL                          [48-50) cm         8      26  haz              
24 months   MAL-ED           PERU                           >=50 cm           28     160  haz              
24 months   MAL-ED           PERU                           <48 cm            71     160  haz              
24 months   MAL-ED           PERU                           [48-50) cm        61     160  haz              
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm           27      91  haz              
24 months   MAL-ED           SOUTH AFRICA                   <48 cm            24      91  haz              
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm        40      91  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           17     104  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            36     104  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     104  haz              
24 months   NIH-Birth        BANGLADESH                     >=50 cm           89     414  haz              
24 months   NIH-Birth        BANGLADESH                     <48 cm           166     414  haz              
24 months   NIH-Birth        BANGLADESH                     [48-50) cm       159     414  haz              
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
![](/tmp/3c195a09-6f63-4b16-aea9-0cdb3ae13cca/a637f949-8ece-46b3-9796-a59a10ad5a7f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3c195a09-6f63-4b16-aea9-0cdb3ae13cca/a637f949-8ece-46b3-9796-a59a10ad5a7f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3c195a09-6f63-4b16-aea9-0cdb3ae13cca/a637f949-8ece-46b3-9796-a59a10ad5a7f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.3130172   -0.0030557    0.6290902
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.9441387   -2.1919275   -1.6963499
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.5055830   -0.6039149   -0.4072511
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                 1.0545755    0.9901961    1.1189550
Birth       COHORTS          GUATEMALA                      <48 cm               NA                -1.6870770   -1.8229346   -1.5512194
Birth       COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2905062   -0.3347339   -0.2462784
Birth       COHORTS          INDIA                          >=50 cm              NA                 0.8367096    0.8010539    0.8723653
Birth       COHORTS          INDIA                          <48 cm               NA                -1.7319030   -1.7612679   -1.7025380
Birth       COHORTS          INDIA                          [48-50) cm           NA                -0.3381335   -0.3522415   -0.3240255
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                 0.7906621    0.7562293    0.8250949
Birth       COHORTS          PHILIPPINES                    <48 cm               NA                -1.6563050   -1.7109980   -1.6016121
Birth       COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.3389635   -0.3587738   -0.3191532
Birth       EE               PAKISTAN                       >=50 cm              NA                 0.7670766    0.1721280    1.3620253
Birth       EE               PAKISTAN                       <48 cm               NA                -2.4837084   -2.6504809   -2.3169360
Birth       EE               PAKISTAN                       [48-50) cm           NA                -0.6862822   -0.8012421   -0.5713223
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                 0.5302780    0.4395304    0.6210257
Birth       GMS-Nepal        NEPAL                          <48 cm               NA                -1.8337458   -1.9071988   -1.7602928
Birth       GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.5147321   -0.5644822   -0.4649819
Birth       IRC              INDIA                          >=50 cm              NA                 1.2661411    1.0854664    1.4468158
Birth       IRC              INDIA                          <48 cm               NA                -2.0649724   -2.2725084   -1.8574364
Birth       IRC              INDIA                          [48-50) cm           NA                -0.5341743   -0.5917386   -0.4766099
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.6401494    0.5951843    0.6851145
Birth       JiVitA-3         BANGLADESH                     <48 cm               NA                -2.0908372   -2.1071451   -2.0745293
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.4766331   -0.4879184   -0.4653478
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.4036720    0.3117569    0.4955871
Birth       JiVitA-4         BANGLADESH                     <48 cm               NA                -2.0553169   -2.0972172   -2.0134166
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.5868697   -0.6186238   -0.5551156
Birth       Keneba           GAMBIA                         >=50 cm              NA                 0.9726336    0.9177015    1.0275657
Birth       Keneba           GAMBIA                         <48 cm               NA                -1.8079822   -1.9278626   -1.6881018
Birth       Keneba           GAMBIA                         [48-50) cm           NA                -0.3583700   -0.3898943   -0.3268456
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                 0.3395583    0.2010504    0.4780662
Birth       MAL-ED           BANGLADESH                     <48 cm               NA                -1.8924008   -2.0324989   -1.7523026
Birth       MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.6552880   -0.7446029   -0.5659732
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                 0.3150922    0.0452451    0.5849393
Birth       MAL-ED           BRAZIL                         <48 cm               NA                -2.0563723   -2.4025065   -1.7102380
Birth       MAL-ED           BRAZIL                         [48-50) cm           NA                -0.6671973   -0.8571829   -0.4772117
Birth       MAL-ED           INDIA                          >=50 cm              NA                 0.0666667   -0.1235118    0.2568452
Birth       MAL-ED           INDIA                          <48 cm               NA                -2.0327273   -2.3615708   -1.7038838
Birth       MAL-ED           INDIA                          [48-50) cm           NA                -0.7781250   -0.9551622   -0.6010878
Birth       MAL-ED           NEPAL                          >=50 cm              NA                 0.2942857    0.0597652    0.5288063
Birth       MAL-ED           NEPAL                          <48 cm               NA                -1.6850000   -1.9901516   -1.3798484
Birth       MAL-ED           NEPAL                          [48-50) cm           NA                -0.6100000   -0.8925271   -0.3274729
Birth       MAL-ED           PERU                           >=50 cm              NA                 0.3282155    0.1457609    0.5106701
Birth       MAL-ED           PERU                           <48 cm               NA                -1.7449498   -1.8642575   -1.6256422
Birth       MAL-ED           PERU                           [48-50) cm           NA                -0.5832576   -0.6514091   -0.5151060
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.4636432    0.2612408    0.6660455
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               NA                -1.8033798   -2.1220924   -1.4846671
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.5616160   -0.6661043   -0.4571277
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1385272   -0.1281428    0.4051972
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.3394904   -2.6597840   -2.0191968
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.7057520   -0.8178565   -0.5936475
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.5663292    0.4411081    0.6915503
Birth       NIH-Birth        BANGLADESH                     <48 cm               NA                -1.9151586   -2.0007607   -1.8295566
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.6457698   -0.6958922   -0.5956474
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.3672191    0.2856606    0.4487775
Birth       NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.8462782   -1.9190346   -1.7735217
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.6826756   -0.7281952   -0.6371560
Birth       PROBIT           BELARUS                        >=50 cm              NA                 1.4940675    1.3577810    1.6303540
Birth       PROBIT           BELARUS                        <48 cm               NA                -1.5885976   -1.6279116   -1.5492835
Birth       PROBIT           BELARUS                        [48-50) cm           NA                -0.3863079   -0.4142516   -0.3583641
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                 0.2948964    0.2000078    0.3897851
Birth       PROVIDE          BANGLADESH                     <48 cm               NA                -1.7803962   -1.8443041   -1.7164884
Birth       PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.7383058   -0.7837427   -0.6928689
Birth       ResPak           PAKISTAN                       >=50 cm              NA                 1.0719963    0.5668157    1.5771768
Birth       ResPak           PAKISTAN                       <48 cm               NA                -2.2855876   -2.6227528   -1.9484225
Birth       ResPak           PAKISTAN                       [48-50) cm           NA                -0.5837009   -0.9083259   -0.2590759
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                 0.4130264    0.3455310    0.4805217
Birth       SAS-CompFeed     INDIA                          <48 cm               NA                -2.1273082   -2.1994174   -2.0551991
Birth       SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.6685305   -0.6931748   -0.6438863
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.8359291    0.8126566    0.8592015
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.8481296   -1.8740687   -1.8221905
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4174481   -0.4269109   -0.4079854
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -1.0193006   -1.7291975   -0.3094037
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.5397662   -1.9242269   -1.1553055
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -1.0897897   -1.5054150   -0.6741645
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                -1.2403979   -1.3322175   -1.1485783
6 months    COHORTS          GUATEMALA                      <48 cm               NA                -2.6835504   -2.8304595   -2.5366414
6 months    COHORTS          GUATEMALA                      [48-50) cm           NA                -2.0400785   -2.1683471   -1.9118098
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.1447768   -0.1987042   -0.0908493
6 months    COHORTS          INDIA                          <48 cm               NA                -1.6147795   -1.6586046   -1.5709543
6 months    COHORTS          INDIA                          [48-50) cm           NA                -0.8103636   -0.8499293   -0.7707980
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.6253436   -0.6879312   -0.5627560
6 months    COHORTS          PHILIPPINES                    <48 cm               NA                -1.8328727   -1.9127469   -1.7529984
6 months    COHORTS          PHILIPPINES                    [48-50) cm           NA                -1.1842813   -1.2443758   -1.1241868
6 months    EE               PAKISTAN                       >=50 cm              NA                -0.7147195   -1.0353551   -0.3940838
6 months    EE               PAKISTAN                       <48 cm               NA                -2.4662632   -2.6365378   -2.2959887
6 months    EE               PAKISTAN                       [48-50) cm           NA                -1.5106418   -1.7256253   -1.2956583
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.5244309   -0.7042691   -0.3445926
6 months    GMS-Nepal        NEPAL                          <48 cm               NA                -1.7329733   -1.8309661   -1.6349804
6 months    GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.0954284   -1.2053074   -0.9855494
6 months    IRC              INDIA                          >=50 cm              NA                -0.7442596   -0.9547027   -0.5338166
6 months    IRC              INDIA                          <48 cm               NA                -1.8726063   -2.1373703   -1.6078424
6 months    IRC              INDIA                          [48-50) cm           NA                -1.2219537   -1.4219318   -1.0219756
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.0130007   -0.0842722    0.0582708
6 months    JiVitA-3         BANGLADESH                     <48 cm               NA                -1.6489906   -1.6736987   -1.6242826
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.6628664   -0.6988071   -0.6269256
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.9410284   -1.0143166   -0.8677401
6 months    JiVitA-4         BANGLADESH                     <48 cm               NA                -1.7661932   -1.8250287   -1.7073576
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                -1.0132710   -1.0841988   -0.9423433
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.5406415   -0.6200726   -0.4612104
6 months    Keneba           GAMBIA                         <48 cm               NA                -1.5155259   -1.6469727   -1.3840791
6 months    Keneba           GAMBIA                         [48-50) cm           NA                -1.1432261   -1.2319520   -1.0545002
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.2896743   -0.5096569   -0.0696917
6 months    MAL-ED           BANGLADESH                     <48 cm               NA                -1.6606500   -1.8302663   -1.4910337
6 months    MAL-ED           BANGLADESH                     [48-50) cm           NA                -1.0179293   -1.1754732   -0.8603853
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                 0.6288535    0.3415992    0.9161077
6 months    MAL-ED           BRAZIL                         <48 cm               NA                -0.4682948   -0.9953477    0.0587580
6 months    MAL-ED           BRAZIL                         [48-50) cm           NA                -0.0749804   -0.5217707    0.3718099
6 months    MAL-ED           INDIA                          >=50 cm              NA                -0.4658333   -0.7214587   -0.2102080
6 months    MAL-ED           INDIA                          <48 cm               NA                -1.9657500   -2.2958370   -1.6356630
6 months    MAL-ED           INDIA                          [48-50) cm           NA                -1.4489744   -1.9007715   -0.9971772
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.1350000   -0.3771203    0.1071203
6 months    MAL-ED           NEPAL                          <48 cm               NA                -0.9272727   -1.3107187   -0.5438267
6 months    MAL-ED           NEPAL                          [48-50) cm           NA                -0.7793750   -1.3527065   -0.2060435
6 months    MAL-ED           PERU                           >=50 cm              NA                -0.6368670   -0.9073412   -0.3663927
6 months    MAL-ED           PERU                           <48 cm               NA                -1.7632513   -1.9291574   -1.5973453
6 months    MAL-ED           PERU                           [48-50) cm           NA                -1.0276319   -1.1978355   -0.8574284
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.6004034   -0.9333593   -0.2674476
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               NA                -1.6444540   -2.1122599   -1.1766482
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -1.0418938   -1.3183153   -0.7654722
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.5595262   -0.8928359   -0.2262166
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -1.8816786   -2.1713207   -1.5920364
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -1.1596718   -1.3665840   -0.9527595
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.5911397   -0.7822789   -0.4000006
6 months    NIH-Birth        BANGLADESH                     <48 cm               NA                -1.9980787   -2.1306225   -1.8655349
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.2557672   -1.3645005   -1.1470338
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.4082124   -0.5158444   -0.3005803
6 months    NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.7452655   -1.8510693   -1.6394618
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -1.1335174   -1.2339729   -1.0330620
6 months    PROBIT           BELARUS                        >=50 cm              NA                 0.1770510    0.0808452    0.2732568
6 months    PROBIT           BELARUS                        <48 cm               NA                -1.0785693   -1.1965214   -0.9606172
6 months    PROBIT           BELARUS                        [48-50) cm           NA                -0.6267391   -0.7861036   -0.4673746
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.3153963   -0.4493558   -0.1814369
6 months    PROVIDE          BANGLADESH                     <48 cm               NA                -1.7190488   -1.8238995   -1.6141981
6 months    PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.9976955   -1.0888301   -0.9065609
6 months    ResPak           PAKISTAN                       >=50 cm              NA                -1.6393750   -2.7319479   -0.5468021
6 months    ResPak           PAKISTAN                       <48 cm               NA                -2.1923958   -2.9881302   -1.3966615
6 months    ResPak           PAKISTAN                       [48-50) cm           NA                -0.9870000   -2.0342463    0.0602463
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.5651429   -0.7583030   -0.3719828
6 months    SAS-CompFeed     INDIA                          <48 cm               NA                -1.8790901   -1.9421103   -1.8160699
6 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.9843791   -1.0800339   -0.8887243
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4561225   -0.5000487   -0.4121964
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.3023539   -1.3482012   -1.2565067
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.8314408   -0.8711876   -0.7916940
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -2.1729572   -2.6447455   -1.7011688
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                -2.5921431   -2.8102534   -2.3740328
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -2.4345063   -2.7089966   -2.1600160
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -2.5374856   -2.6534731   -2.4214981
24 months   COHORTS          GUATEMALA                      <48 cm               NA                -3.5323229   -3.7153946   -3.3492511
24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                -3.1537486   -3.3053826   -3.0021146
24 months   COHORTS          INDIA                          >=50 cm              NA                -1.3926417   -1.4614223   -1.3238611
24 months   COHORTS          INDIA                          <48 cm               NA                -2.6052718   -2.6565011   -2.5540426
24 months   COHORTS          INDIA                          [48-50) cm           NA                -2.0191689   -2.0703306   -1.9680072
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -1.9642710   -2.0343304   -1.8942116
24 months   COHORTS          PHILIPPINES                    <48 cm               NA                -2.9565237   -3.0442217   -2.8688256
24 months   COHORTS          PHILIPPINES                    [48-50) cm           NA                -2.4931276   -2.5599014   -2.4263538
24 months   EE               PAKISTAN                       >=50 cm              NA                -1.7272343   -2.0982102   -1.3562585
24 months   EE               PAKISTAN                       <48 cm               NA                -2.8009400   -3.0112498   -2.5906303
24 months   EE               PAKISTAN                       [48-50) cm           NA                -2.3944647   -2.8000925   -1.9888368
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -1.3836661   -1.6039162   -1.1634161
24 months   GMS-Nepal        NEPAL                          <48 cm               NA                -2.1682290   -2.2815223   -2.0549358
24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.6988268   -1.8324673   -1.5651862
24 months   IRC              INDIA                          >=50 cm              NA                -1.5944972   -1.7584810   -1.4305134
24 months   IRC              INDIA                          <48 cm               NA                -2.1122895   -2.3006360   -1.9239430
24 months   IRC              INDIA                          [48-50) cm           NA                -1.7183415   -1.8691651   -1.5675178
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -1.1645103   -1.2711255   -1.0578951
24 months   JiVitA-3         BANGLADESH                     <48 cm               NA                -2.2655487   -2.2980966   -2.2330008
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           NA                -1.5348129   -1.5798613   -1.4897646
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -1.4909110   -1.5605448   -1.4212772
24 months   JiVitA-4         BANGLADESH                     <48 cm               NA                -2.0399260   -2.0955687   -1.9842833
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                -1.5515971   -1.6221474   -1.4810468
24 months   Keneba           GAMBIA                         >=50 cm              NA                -1.2892928   -1.3754741   -1.2031115
24 months   Keneba           GAMBIA                         <48 cm               NA                -1.9344240   -2.0655387   -1.8033093
24 months   Keneba           GAMBIA                         [48-50) cm           NA                -1.7405672   -1.8467372   -1.6343973
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -1.4581585   -1.7305412   -1.1857758
24 months   MAL-ED           BANGLADESH                     <48 cm               NA                -2.3640901   -2.5601083   -2.1680720
24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                -1.8856787   -2.0748437   -1.6965138
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.3674240   -0.2094459    0.9442939
24 months   MAL-ED           BRAZIL                         <48 cm               NA                -0.3366902   -1.1773582    0.5039779
24 months   MAL-ED           BRAZIL                         [48-50) cm           NA                -0.0880833   -0.6029740    0.4268073
24 months   MAL-ED           INDIA                          >=50 cm              NA                -1.3825000   -1.7660213   -0.9989787
24 months   MAL-ED           INDIA                          <48 cm               NA                -2.5257500   -2.9246040   -2.1268960
24 months   MAL-ED           INDIA                          [48-50) cm           NA                -2.0653846   -2.4162361   -1.7145332
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -1.0807143   -1.3647972   -0.7966314
24 months   MAL-ED           NEPAL                          <48 cm               NA                -1.6331818   -2.2000387   -1.0663249
24 months   MAL-ED           NEPAL                          [48-50) cm           NA                -1.7750000   -2.3610878   -1.1889122
24 months   MAL-ED           PERU                           >=50 cm              NA                -1.3408907   -1.6890015   -0.9927798
24 months   MAL-ED           PERU                           <48 cm               NA                -2.1259756   -2.3244231   -1.9275281
24 months   MAL-ED           PERU                           [48-50) cm           NA                -1.5292452   -1.6981457   -1.3603447
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -1.6121566   -2.0052818   -1.2190314
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                -1.7830918   -2.1459523   -1.4202314
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -1.6098341   -2.0425527   -1.1771154
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -2.1536097   -2.5952562   -1.7119632
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.8804429   -3.1760603   -2.5848256
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -2.4762614   -2.7574170   -2.1951059
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.4872109   -1.6946844   -1.2797374
24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                -2.7443576   -2.8986460   -2.5900693
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                -2.0821804   -2.2255318   -1.9388290
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.9383200   -1.0621865   -0.8144535
24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.8113432   -1.9460552   -1.6766312
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -1.4047909   -1.5422999   -1.2672820
24 months   PROBIT           BELARUS                        >=50 cm              NA                -0.1157769   -0.4037818    0.1722280
24 months   PROBIT           BELARUS                        <48 cm               NA                -0.5627890   -1.0274953   -0.0980826
24 months   PROBIT           BELARUS                        [48-50) cm           NA                -0.4375532   -0.7259774   -0.1491291
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -1.0340400   -1.1782182   -0.8898617
24 months   PROVIDE          BANGLADESH                     <48 cm               NA                -2.1851272   -2.3114094   -2.0588450
24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                -1.4337110   -1.5515345   -1.3158875
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1176508   -1.2412144   -0.9940871
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.9084925   -1.9956051   -1.8213798
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.4601441   -1.5520148   -1.3682735


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
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -2.2571559   -2.6593304   -1.8549815
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.8186003   -1.1499222   -0.4872783
Birth       COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <48 cm               >=50 cm           -2.7416525   -2.8931552   -2.5901498
Birth       COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -1.3450817   -1.4227143   -1.2674491
Birth       COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <48 cm               >=50 cm           -2.5686126   -2.6146957   -2.5225295
Birth       COHORTS          INDIA                          [48-50) cm           >=50 cm           -1.1748431   -1.2128782   -1.1368080
Birth       COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -2.4469671   -2.5114366   -2.3824976
Birth       COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -1.1296256   -1.1691132   -1.0901380
Birth       EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       <48 cm               >=50 cm           -3.2507851   -3.8694582   -2.6321120
Birth       EE               PAKISTAN                       [48-50) cm           >=50 cm           -1.4533588   -2.0599789   -0.8467388
Birth       GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -2.3640239   -2.4808060   -2.2472417
Birth       GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -1.0450101   -1.1479146   -0.9421056
Birth       IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <48 cm               >=50 cm           -3.3311135   -3.6064834   -3.0557436
Birth       IRC              INDIA                          [48-50) cm           >=50 cm           -1.8003154   -1.9901757   -1.6104550
Birth       JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -2.7309866   -2.7798501   -2.6821230
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -1.1167824   -1.1626633   -1.0709016
Birth       JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -2.4589889   -2.5603150   -2.3576629
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.9905417   -1.0893959   -0.8916876
Birth       Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <48 cm               >=50 cm           -2.7806158   -2.9128256   -2.6484060
Birth       Keneba           GAMBIA                         [48-50) cm           >=50 cm           -1.3310036   -1.3939808   -1.2680263
Birth       MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -2.2319591   -2.4299947   -2.0339235
Birth       MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.9948463   -1.1595387   -0.8301540
Birth       MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <48 cm               >=50 cm           -2.3714644   -2.8091909   -1.9337380
Birth       MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.9822895   -1.3143902   -0.6501888
Birth       MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <48 cm               >=50 cm           -2.0993939   -2.4792701   -1.7195178
Birth       MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.8447917   -1.1046186   -0.5849648
Birth       MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <48 cm               >=50 cm           -1.9792857   -2.3641460   -1.5944255
Birth       MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.9042857   -1.2714661   -0.5371053
Birth       MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <48 cm               >=50 cm           -2.0731653   -2.2925273   -1.8538034
Birth       MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.9114731   -1.1065269   -0.7164192
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -2.2670229   -2.6460524   -1.8879935
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -1.0252592   -1.2535662   -0.7969522
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -2.4780176   -2.8969056   -2.0591296
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.8442792   -1.1337850   -0.5547734
Birth       NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -2.4814878   -2.6328249   -2.3301507
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -1.2120990   -1.3466332   -1.0775648
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -2.2134972   -2.3227232   -2.1042713
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -1.0498946   -1.1426272   -0.9571620
Birth       PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <48 cm               >=50 cm           -3.0826651   -3.2377059   -2.9276243
Birth       PROBIT           BELARUS                        [48-50) cm           >=50 cm           -1.8803754   -2.0186771   -1.7420737
Birth       PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -2.0752927   -2.1900028   -1.9605825
Birth       PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -1.0332022   -1.1378026   -0.9286018
Birth       ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       <48 cm               >=50 cm           -3.3575839   -3.9434728   -2.7716950
Birth       ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -1.6556972   -2.2663115   -1.0450830
Birth       SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -2.5403346   -2.6071348   -2.4735343
Birth       SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -1.0815569   -1.1529197   -1.0101941
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -2.6840586   -2.7189471   -2.6491702
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -1.2533772   -1.2782515   -1.2285029
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.5204656   -1.3348411    0.2939099
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0704891   -0.8961082    0.7551299
6 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm           -1.4431525   -1.6166576   -1.2696474
6 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.7996805   -0.9568940   -0.6424670
6 months    COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <48 cm               >=50 cm           -1.4700027   -1.5396032   -1.4004023
6 months    COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6655869   -0.7325406   -0.5986331
6 months    COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -1.2075290   -1.3089926   -1.1060654
6 months    COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5589376   -0.6456742   -0.4722010
6 months    EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       <48 cm               >=50 cm           -1.7515438   -2.1156837   -1.3874038
6 months    EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.7959224   -1.1821146   -0.4097301
6 months    GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -1.2085424   -1.4131952   -1.0038896
6 months    GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.5709975   -0.7815058   -0.3604892
6 months    IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <48 cm               >=50 cm           -1.1283467   -1.4634133   -0.7932800
6 months    IRC              INDIA                          [48-50) cm           >=50 cm           -0.4776941   -0.7662220   -0.1891662
6 months    JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -1.6359899   -1.7089940   -1.5629859
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.6498657   -0.7274697   -0.5722616
6 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.8251648   -0.9195381   -0.7307915
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0722426   -0.1712232    0.0267380
6 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <48 cm               >=50 cm           -0.9748844   -1.1285554   -0.8212133
6 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.6025846   -0.7215984   -0.4835708
6 months    MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -1.3709757   -1.6492139   -1.0927375
6 months    MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.7282549   -0.9987898   -0.4577201
6 months    MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <48 cm               >=50 cm           -1.0971483   -1.7072259   -0.4870708
6 months    MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.7038339   -1.2476272   -0.1600405
6 months    MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <48 cm               >=50 cm           -1.4999167   -1.9174112   -1.0824221
6 months    MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.9831410   -1.5022411   -0.4640409
6 months    MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.7922727   -1.2457626   -0.3387829
6 months    MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.6443750   -1.2667344   -0.0220156
6 months    MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <48 cm               >=50 cm           -1.1263844   -1.4438825   -0.8088863
6 months    MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.3907650   -0.7114842   -0.0700457
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -1.0440506   -1.6190155   -0.4690857
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.4414903   -0.8770980   -0.0058826
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -1.3221523   -1.7653765   -0.8789282
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.6001455   -0.9962932   -0.2039979
6 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.4069390   -1.6393953   -1.1744827
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.6646274   -0.8846560   -0.4445989
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -1.3370532   -1.4881791   -1.1859272
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.7253051   -0.8724431   -0.5781670
6 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <48 cm               >=50 cm           -1.2556203   -1.3764874   -1.1347533
6 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.8037901   -0.9282213   -0.6793589
6 months    PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -1.4036525   -1.5738497   -1.2334553
6 months    PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.6822992   -0.8444025   -0.5201958
6 months    ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       <48 cm               >=50 cm           -0.5530208   -1.9046527    0.7986110
6 months    ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.6523750   -0.8610451    2.1657951
6 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -1.3139472   -1.5431565   -1.0847378
6 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.4192362   -0.6689208   -0.1695516
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.8462314   -0.9095612   -0.7829016
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.3753182   -0.4344796   -0.3161569
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.4191860   -0.9382639    0.0998920
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.2615491   -0.8067470    0.2836488
24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.9948373   -1.2109735   -0.7787010
24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.6162630   -0.8065883   -0.4259377
24 months   COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <48 cm               >=50 cm           -1.2126302   -1.2984768   -1.1267835
24 months   COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6265272   -0.7122458   -0.5408087
24 months   COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.9922527   -1.1045666   -0.8799388
24 months   COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5288566   -0.6256988   -0.4320144
24 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       <48 cm               >=50 cm           -1.0737057   -1.5010564   -0.6463550
24 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.6672303   -1.2185120   -0.1159487
24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.7845629   -1.0326441   -0.5364818
24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3151606   -0.5714604   -0.0588609
24 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <48 cm               >=50 cm           -0.5177923   -0.7679430   -0.2676416
24 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.1238442   -0.3470481    0.0993596
24 months   JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -1.1010384   -1.2104872   -0.9915896
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.3703027   -0.4855602   -0.2550451
24 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.5490150   -0.6366446   -0.4613854
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0606861   -0.1565721    0.0351999
24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.6451312   -0.8009644   -0.4892980
24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.4512744   -0.5865859   -0.3159629
24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.9059316   -1.2406970   -0.5711663
24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.4275202   -0.7589870   -0.0960535
24 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.7041142   -1.7365216    0.3282933
24 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.4555073   -1.2559194    0.3449047
24 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -1.1432500   -1.6965791   -0.5899209
24 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.6828846   -1.2026782   -0.1630911
24 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.5524675   -1.1865258    0.0815907
24 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.6942857   -1.3455937   -0.0429778
24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.7850849   -1.1845097   -0.3856601
24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.1883546   -0.5762776    0.1995684
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.1709352   -0.7094973    0.3676268
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0023225   -0.5920189    0.5966639
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.7268332   -1.2574689   -0.1961976
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.3226517   -0.8474259    0.2021225
24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.2571467   -1.5145581   -0.9997354
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.5949695   -0.8455499   -0.3443890
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.8730232   -1.0559925   -0.6900538
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.4664709   -0.6517918   -0.2811500
24 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <48 cm               >=50 cm           -0.4470121   -0.9501280    0.0561038
24 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.3217764   -0.5817777   -0.0617750
24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -1.1510872   -1.3420317   -0.9601428
24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.3996710   -0.5850583   -0.2142838
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.7908417   -0.9418717   -0.6398117
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.3424933   -0.4961871   -0.1887996


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -1.2742129   -1.6158789   -0.9325468
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                -0.9248455   -1.0098736   -0.8398174
Birth       COHORTS          INDIA                          >=50 cm              NA                -1.5066057   -1.5467037   -1.4665077
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                -1.0397113   -1.0825742   -0.9968483
Birth       EE               PAKISTAN                       >=50 cm              NA                -2.6279516   -3.2098302   -2.0460730
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                -1.6154361   -1.7268699   -1.5040023
Birth       IRC              INDIA                          >=50 cm              NA                -1.5741823   -1.7605788   -1.3877859
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                -2.2295642   -2.2792189   -2.1799095
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                -1.9269628   -2.0252133   -1.8287124
Birth       Keneba           GAMBIA                         >=50 cm              NA                -0.9418300   -1.0066294   -0.8770306
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                -1.4576535   -1.6360125   -1.2792946
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                -0.9910922   -1.3048020   -0.6773824
Birth       MAL-ED           INDIA                          >=50 cm              NA                -1.2702837   -1.6001173   -0.9404501
Birth       MAL-ED           NEPAL                          >=50 cm              NA                -1.1476190   -1.5400980   -0.7551401
Birth       MAL-ED           PERU                           >=50 cm              NA                -1.2110052   -1.4039267   -1.0180837
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -1.0953505   -1.3309672   -0.8597338
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -1.2941272   -1.6030330   -0.9852214
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.4973489   -1.6284693   -1.3662286
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                -1.2767136   -1.3716805   -1.1817467
Birth       PROBIT           BELARUS                        >=50 cm              NA                -0.1826258   -0.2219539   -0.1432977
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                -1.1799985   -1.2838944   -1.0761026
Birth       ResPak           PAKISTAN                       >=50 cm              NA                -2.0519963   -2.6768223   -1.4271702
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                -1.8444481   -1.9376852   -1.7512110
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3362015   -1.3623358   -1.3100672
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.2760680   -0.9354045    0.3832685
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                -0.5149073   -0.5920218   -0.4377928
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.8525843   -0.9032823   -0.8018863
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.5175701   -0.5706153   -0.4645249
6 months    EE               PAKISTAN                       >=50 cm              NA                -1.4117424   -1.7416819   -1.0818029
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.8266230   -0.9948675   -0.6583785
6 months    IRC              INDIA                          >=50 cm              NA                -0.4820985   -0.6562863   -0.3079108
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -1.3173462   -1.3863992   -1.2482931
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.4054032   -0.4689969   -0.3418095
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.3627686   -0.4208213   -0.3047159
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.9190935   -1.1381467   -0.7000402
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                -0.5723846   -0.8960600   -0.2487091
6 months    MAL-ED           INDIA                          >=50 cm              NA                -1.0433943   -1.3884372   -0.6983515
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.5334615   -0.8581966   -0.2087265
6 months    MAL-ED           PERU                           >=50 cm              NA                -0.6561602   -0.9092410   -0.4030793
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.4981091   -0.8004413   -0.1957769
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.7709964   -1.0973409   -0.4446518
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.8181347   -0.9914655   -0.6448039
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.7904659   -0.8975383   -0.6833935
6 months    PROBIT           BELARUS                        >=50 cm              NA                -0.0790436   -0.0956406   -0.0624466
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.7762952   -0.8991965   -0.6533938
6 months    ResPak           PAKISTAN                       >=50 cm              NA                -0.0683701   -1.0501699    0.9134297
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.8378933   -1.0320430   -0.6437437
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4110006   -0.4491302   -0.3728710
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3071057   -0.7437521    0.1295407
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.4052108   -0.4980284   -0.3123933
24 months   COHORTS          INDIA                          >=50 cm              NA                -0.7266816   -0.7890953   -0.6642678
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4514620   -0.5094169   -0.3935071
24 months   EE               PAKISTAN                       >=50 cm              NA                -0.9051556   -1.2876820   -0.5226292
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.5028226   -0.7043580   -0.3012872
24 months   IRC              INDIA                          >=50 cm              NA                -0.1937891   -0.3246619   -0.0629164
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.8729911   -0.9755744   -0.7704078
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.2810052   -0.3405747   -0.2214358
24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.2671405   -0.3287751   -0.2055059
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.5422960   -0.7951497   -0.2894424
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.4575827   -0.9317708    0.0166053
24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.8139103   -1.2350164   -0.3928041
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.4473626   -0.8281695   -0.0665558
24 months   MAL-ED           PERU                           >=50 cm              NA                -0.4156302   -0.7310199   -0.1002404
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0271199   -0.3301191    0.3843590
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.4001403   -0.8207563    0.0204757
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.7396510   -0.9278473   -0.5514547
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.5029446   -0.6244802   -0.3814090
24 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0285123   -0.0537343   -0.0032903
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.5683822   -0.7002569   -0.4365075
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4855737   -0.5986075   -0.3725400

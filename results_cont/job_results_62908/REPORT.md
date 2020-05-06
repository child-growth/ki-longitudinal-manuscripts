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

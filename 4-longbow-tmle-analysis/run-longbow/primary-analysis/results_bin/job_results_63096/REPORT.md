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

**Outcome Variable:** stunted

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

agecat      studyid          country                        birthlen      stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -----------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm             0       14      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm             1        0      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          <48 cm              0       21      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          <48 cm              1       17      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm          0       40      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm          1        0      92  stunted          
Birth       CMIN             BANGLADESH                     >=50 cm             0        2      26  stunted          
Birth       CMIN             BANGLADESH                     >=50 cm             1        0      26  stunted          
Birth       CMIN             BANGLADESH                     <48 cm              0       10      26  stunted          
Birth       CMIN             BANGLADESH                     <48 cm              1        9      26  stunted          
Birth       CMIN             BANGLADESH                     [48-50) cm          0        5      26  stunted          
Birth       CMIN             BANGLADESH                     [48-50) cm          1        0      26  stunted          
Birth       COHORTS          GUATEMALA                      >=50 cm             0      437     852  stunted          
Birth       COHORTS          GUATEMALA                      >=50 cm             1        0     852  stunted          
Birth       COHORTS          GUATEMALA                      <48 cm              0      113     852  stunted          
Birth       COHORTS          GUATEMALA                      <48 cm              1       50     852  stunted          
Birth       COHORTS          GUATEMALA                      [48-50) cm          0      252     852  stunted          
Birth       COHORTS          GUATEMALA                      [48-50) cm          1        0     852  stunted          
Birth       COHORTS          INDIA                          >=50 cm             0     1426    6640  stunted          
Birth       COHORTS          INDIA                          >=50 cm             1        0    6640  stunted          
Birth       COHORTS          INDIA                          <48 cm              0     1982    6640  stunted          
Birth       COHORTS          INDIA                          <48 cm              1      792    6640  stunted          
Birth       COHORTS          INDIA                          [48-50) cm          0     2440    6640  stunted          
Birth       COHORTS          INDIA                          [48-50) cm          1        0    6640  stunted          
Birth       COHORTS          PHILIPPINES                    >=50 cm             0     1129    3050  stunted          
Birth       COHORTS          PHILIPPINES                    >=50 cm             1        0    3050  stunted          
Birth       COHORTS          PHILIPPINES                    <48 cm              0      575    3050  stunted          
Birth       COHORTS          PHILIPPINES                    <48 cm              1      187    3050  stunted          
Birth       COHORTS          PHILIPPINES                    [48-50) cm          0     1159    3050  stunted          
Birth       COHORTS          PHILIPPINES                    [48-50) cm          1        0    3050  stunted          
Birth       CONTENT          PERU                           >=50 cm             0        1       2  stunted          
Birth       CONTENT          PERU                           >=50 cm             1        0       2  stunted          
Birth       CONTENT          PERU                           <48 cm              0        1       2  stunted          
Birth       CONTENT          PERU                           <48 cm              1        0       2  stunted          
Birth       CONTENT          PERU                           [48-50) cm          0        0       2  stunted          
Birth       CONTENT          PERU                           [48-50) cm          1        0       2  stunted          
Birth       EE               PAKISTAN                       >=50 cm             0       22     240  stunted          
Birth       EE               PAKISTAN                       >=50 cm             1        0     240  stunted          
Birth       EE               PAKISTAN                       <48 cm              0       72     240  stunted          
Birth       EE               PAKISTAN                       <48 cm              1      100     240  stunted          
Birth       EE               PAKISTAN                       [48-50) cm          0       46     240  stunted          
Birth       EE               PAKISTAN                       [48-50) cm          1        0     240  stunted          
Birth       GMS-Nepal        NEPAL                          >=50 cm             0      104     696  stunted          
Birth       GMS-Nepal        NEPAL                          >=50 cm             1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          <48 cm              0      262     696  stunted          
Birth       GMS-Nepal        NEPAL                          <48 cm              1      122     696  stunted          
Birth       GMS-Nepal        NEPAL                          [48-50) cm          0      208     696  stunted          
Birth       GMS-Nepal        NEPAL                          [48-50) cm          1        0     696  stunted          
Birth       IRC              INDIA                          >=50 cm             0      142     388  stunted          
Birth       IRC              INDIA                          >=50 cm             1        0     388  stunted          
Birth       IRC              INDIA                          <48 cm              0       63     388  stunted          
Birth       IRC              INDIA                          <48 cm              1       45     388  stunted          
Birth       IRC              INDIA                          [48-50) cm          0      138     388  stunted          
Birth       IRC              INDIA                          [48-50) cm          1        0     388  stunted          
Birth       JiVitA-3         BANGLADESH                     >=50 cm             0     1228   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     >=50 cm             1        0   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     <48 cm              0     8749   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     <48 cm              1     7387   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     [48-50) cm          0     5091   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     [48-50) cm          1        0   22455  stunted          
Birth       JiVitA-4         BANGLADESH                     >=50 cm             0      178    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     >=50 cm             1        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     <48 cm              0     1056    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     <48 cm              1      857    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     [48-50) cm          0      732    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     [48-50) cm          1        0    2823  stunted          
Birth       Keneba           GAMBIA                         >=50 cm             0      763    1543  stunted          
Birth       Keneba           GAMBIA                         >=50 cm             1        0    1543  stunted          
Birth       Keneba           GAMBIA                         <48 cm              0      202    1543  stunted          
Birth       Keneba           GAMBIA                         <48 cm              1       83    1543  stunted          
Birth       Keneba           GAMBIA                         [48-50) cm          0      495    1543  stunted          
Birth       Keneba           GAMBIA                         [48-50) cm          1        0    1543  stunted          
Birth       MAL-ED           BANGLADESH                     >=50 cm             0       35     231  stunted          
Birth       MAL-ED           BANGLADESH                     >=50 cm             1        0     231  stunted          
Birth       MAL-ED           BANGLADESH                     <48 cm              0       73     231  stunted          
Birth       MAL-ED           BANGLADESH                     <48 cm              1       44     231  stunted          
Birth       MAL-ED           BANGLADESH                     [48-50) cm          0       79     231  stunted          
Birth       MAL-ED           BANGLADESH                     [48-50) cm          1        0     231  stunted          
Birth       MAL-ED           BRAZIL                         >=50 cm             0       23      65  stunted          
Birth       MAL-ED           BRAZIL                         >=50 cm             1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         <48 cm              0        9      65  stunted          
Birth       MAL-ED           BRAZIL                         <48 cm              1        9      65  stunted          
Birth       MAL-ED           BRAZIL                         [48-50) cm          0       24      65  stunted          
Birth       MAL-ED           BRAZIL                         [48-50) cm          1        0      65  stunted          
Birth       MAL-ED           INDIA                          >=50 cm             0        9      47  stunted          
Birth       MAL-ED           INDIA                          >=50 cm             1        0      47  stunted          
Birth       MAL-ED           INDIA                          <48 cm              0       12      47  stunted          
Birth       MAL-ED           INDIA                          <48 cm              1       10      47  stunted          
Birth       MAL-ED           INDIA                          [48-50) cm          0       16      47  stunted          
Birth       MAL-ED           INDIA                          [48-50) cm          1        0      47  stunted          
Birth       MAL-ED           NEPAL                          >=50 cm             0        7      27  stunted          
Birth       MAL-ED           NEPAL                          >=50 cm             1        0      27  stunted          
Birth       MAL-ED           NEPAL                          <48 cm              0       10      27  stunted          
Birth       MAL-ED           NEPAL                          <48 cm              1        2      27  stunted          
Birth       MAL-ED           NEPAL                          [48-50) cm          0        8      27  stunted          
Birth       MAL-ED           NEPAL                          [48-50) cm          1        0      27  stunted          
Birth       MAL-ED           PERU                           >=50 cm             0       41     233  stunted          
Birth       MAL-ED           PERU                           >=50 cm             1        0     233  stunted          
Birth       MAL-ED           PERU                           <48 cm              0       66     233  stunted          
Birth       MAL-ED           PERU                           <48 cm              1       26     233  stunted          
Birth       MAL-ED           PERU                           [48-50) cm          0      100     233  stunted          
Birth       MAL-ED           PERU                           [48-50) cm          1        0     233  stunted          
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm             0       35     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm             1        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   <48 cm              0       26     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   <48 cm              1       10     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm          0       52     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm          1        0     123  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       20     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              0       21     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              1       23     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       61     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     125  stunted          
Birth       NIH-Birth        BANGLADESH                     >=50 cm             0      124     608  stunted          
Birth       NIH-Birth        BANGLADESH                     >=50 cm             1        0     608  stunted          
Birth       NIH-Birth        BANGLADESH                     <48 cm              0      156     608  stunted          
Birth       NIH-Birth        BANGLADESH                     <48 cm              1       97     608  stunted          
Birth       NIH-Birth        BANGLADESH                     [48-50) cm          0      231     608  stunted          
Birth       NIH-Birth        BANGLADESH                     [48-50) cm          1        0     608  stunted          
Birth       NIH-Crypto       BANGLADESH                     >=50 cm             0      161     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     >=50 cm             1        0     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     <48 cm              0      186     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     <48 cm              1      101     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm          0      284     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm          1        0     732  stunted          
Birth       PROBIT           BELARUS                        >=50 cm             0    12626   13893  stunted          
Birth       PROBIT           BELARUS                        >=50 cm             1        0   13893  stunted          
Birth       PROBIT           BELARUS                        <48 cm              0      113   13893  stunted          
Birth       PROBIT           BELARUS                        <48 cm              1       34   13893  stunted          
Birth       PROBIT           BELARUS                        [48-50) cm          0     1120   13893  stunted          
Birth       PROBIT           BELARUS                        [48-50) cm          1        0   13893  stunted          
Birth       PROVIDE          BANGLADESH                     >=50 cm             0      121     539  stunted          
Birth       PROVIDE          BANGLADESH                     >=50 cm             1        0     539  stunted          
Birth       PROVIDE          BANGLADESH                     <48 cm              0      148     539  stunted          
Birth       PROVIDE          BANGLADESH                     <48 cm              1       48     539  stunted          
Birth       PROVIDE          BANGLADESH                     [48-50) cm          0      222     539  stunted          
Birth       PROVIDE          BANGLADESH                     [48-50) cm          1        0     539  stunted          
Birth       ResPak           PAKISTAN                       >=50 cm             0       10      42  stunted          
Birth       ResPak           PAKISTAN                       >=50 cm             1        0      42  stunted          
Birth       ResPak           PAKISTAN                       <48 cm              0        5      42  stunted          
Birth       ResPak           PAKISTAN                       <48 cm              1       14      42  stunted          
Birth       ResPak           PAKISTAN                       [48-50) cm          0       13      42  stunted          
Birth       ResPak           PAKISTAN                       [48-50) cm          1        0      42  stunted          
Birth       SAS-CompFeed     INDIA                          >=50 cm             0      116    1252  stunted          
Birth       SAS-CompFeed     INDIA                          >=50 cm             1        0    1252  stunted          
Birth       SAS-CompFeed     INDIA                          <48 cm              0      389    1252  stunted          
Birth       SAS-CompFeed     INDIA                          <48 cm              1      349    1252  stunted          
Birth       SAS-CompFeed     INDIA                          [48-50) cm          0      398    1252  stunted          
Birth       SAS-CompFeed     INDIA                          [48-50) cm          1        0    1252  stunted          
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm             0     4125   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm             1        0   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       <48 cm              0     2975   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       <48 cm              1     1434   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5341   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm          1        0   13875  stunted          
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm             0       11     104  stunted          
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm             1        5     104  stunted          
6 months    CMC-V-BCS-2002   INDIA                          <48 cm              0       31     104  stunted          
6 months    CMC-V-BCS-2002   INDIA                          <48 cm              1       17     104  stunted          
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm          0       32     104  stunted          
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm          1        8     104  stunted          
6 months    CMIN             BANGLADESH                     >=50 cm             0        0      12  stunted          
6 months    CMIN             BANGLADESH                     >=50 cm             1        0      12  stunted          
6 months    CMIN             BANGLADESH                     <48 cm              0        4      12  stunted          
6 months    CMIN             BANGLADESH                     <48 cm              1        3      12  stunted          
6 months    CMIN             BANGLADESH                     [48-50) cm          0        4      12  stunted          
6 months    CMIN             BANGLADESH                     [48-50) cm          1        1      12  stunted          
6 months    COHORTS          GUATEMALA                      >=50 cm             0      289     688  stunted          
6 months    COHORTS          GUATEMALA                      >=50 cm             1       62     688  stunted          
6 months    COHORTS          GUATEMALA                      <48 cm              0       28     688  stunted          
6 months    COHORTS          GUATEMALA                      <48 cm              1      105     688  stunted          
6 months    COHORTS          GUATEMALA                      [48-50) cm          0      104     688  stunted          
6 months    COHORTS          GUATEMALA                      [48-50) cm          1      100     688  stunted          
6 months    COHORTS          INDIA                          >=50 cm             0     1282    6135  stunted          
6 months    COHORTS          INDIA                          >=50 cm             1       48    6135  stunted          
6 months    COHORTS          INDIA                          <48 cm              0     1678    6135  stunted          
6 months    COHORTS          INDIA                          <48 cm              1      852    6135  stunted          
6 months    COHORTS          INDIA                          [48-50) cm          0     2031    6135  stunted          
6 months    COHORTS          INDIA                          [48-50) cm          1      244    6135  stunted          
6 months    COHORTS          PHILIPPINES                    >=50 cm             0      913    2701  stunted          
6 months    COHORTS          PHILIPPINES                    >=50 cm             1       77    2701  stunted          
6 months    COHORTS          PHILIPPINES                    <48 cm              0      394    2701  stunted          
6 months    COHORTS          PHILIPPINES                    <48 cm              1      283    2701  stunted          
6 months    COHORTS          PHILIPPINES                    [48-50) cm          0      822    2701  stunted          
6 months    COHORTS          PHILIPPINES                    [48-50) cm          1      212    2701  stunted          
6 months    CONTENT          PERU                           >=50 cm             0        1       2  stunted          
6 months    CONTENT          PERU                           >=50 cm             1        0       2  stunted          
6 months    CONTENT          PERU                           <48 cm              0        1       2  stunted          
6 months    CONTENT          PERU                           <48 cm              1        0       2  stunted          
6 months    CONTENT          PERU                           [48-50) cm          0        0       2  stunted          
6 months    CONTENT          PERU                           [48-50) cm          1        0       2  stunted          
6 months    EE               PAKISTAN                       >=50 cm             0       22     236  stunted          
6 months    EE               PAKISTAN                       >=50 cm             1        0     236  stunted          
6 months    EE               PAKISTAN                       <48 cm              0       66     236  stunted          
6 months    EE               PAKISTAN                       <48 cm              1      104     236  stunted          
6 months    EE               PAKISTAN                       [48-50) cm          0       32     236  stunted          
6 months    EE               PAKISTAN                       [48-50) cm          1       12     236  stunted          
6 months    GMS-Nepal        NEPAL                          >=50 cm             0       84     563  stunted          
6 months    GMS-Nepal        NEPAL                          >=50 cm             1        3     563  stunted          
6 months    GMS-Nepal        NEPAL                          <48 cm              0      201     563  stunted          
6 months    GMS-Nepal        NEPAL                          <48 cm              1      104     563  stunted          
6 months    GMS-Nepal        NEPAL                          [48-50) cm          0      156     563  stunted          
6 months    GMS-Nepal        NEPAL                          [48-50) cm          1       15     563  stunted          
6 months    IRC              INDIA                          >=50 cm             0      123     389  stunted          
6 months    IRC              INDIA                          >=50 cm             1       19     389  stunted          
6 months    IRC              INDIA                          <48 cm              0       62     389  stunted          
6 months    IRC              INDIA                          <48 cm              1       47     389  stunted          
6 months    IRC              INDIA                          [48-50) cm          0      109     389  stunted          
6 months    IRC              INDIA                          [48-50) cm          1       29     389  stunted          
6 months    JiVitA-3         BANGLADESH                     >=50 cm             0      793   13924  stunted          
6 months    JiVitA-3         BANGLADESH                     >=50 cm             1       14   13924  stunted          
6 months    JiVitA-3         BANGLADESH                     <48 cm              0     6469   13924  stunted          
6 months    JiVitA-3         BANGLADESH                     <48 cm              1     3366   13924  stunted          
6 months    JiVitA-3         BANGLADESH                     [48-50) cm          0     3105   13924  stunted          
6 months    JiVitA-3         BANGLADESH                     [48-50) cm          1      177   13924  stunted          
6 months    JiVitA-4         BANGLADESH                     >=50 cm             0      959    4020  stunted          
6 months    JiVitA-4         BANGLADESH                     >=50 cm             1      142    4020  stunted          
6 months    JiVitA-4         BANGLADESH                     <48 cm              0     1199    4020  stunted          
6 months    JiVitA-4         BANGLADESH                     <48 cm              1      724    4020  stunted          
6 months    JiVitA-4         BANGLADESH                     [48-50) cm          0      861    4020  stunted          
6 months    JiVitA-4         BANGLADESH                     [48-50) cm          1      135    4020  stunted          
6 months    Keneba           GAMBIA                         >=50 cm             0      629    1347  stunted          
6 months    Keneba           GAMBIA                         >=50 cm             1       48    1347  stunted          
6 months    Keneba           GAMBIA                         <48 cm              0      176    1347  stunted          
6 months    Keneba           GAMBIA                         <48 cm              1       58    1347  stunted          
6 months    Keneba           GAMBIA                         [48-50) cm          0      362    1347  stunted          
6 months    Keneba           GAMBIA                         [48-50) cm          1       74    1347  stunted          
6 months    MAL-ED           BANGLADESH                     >=50 cm             0       34     211  stunted          
6 months    MAL-ED           BANGLADESH                     >=50 cm             1        1     211  stunted          
6 months    MAL-ED           BANGLADESH                     <48 cm              0       70     211  stunted          
6 months    MAL-ED           BANGLADESH                     <48 cm              1       31     211  stunted          
6 months    MAL-ED           BANGLADESH                     [48-50) cm          0       70     211  stunted          
6 months    MAL-ED           BANGLADESH                     [48-50) cm          1        5     211  stunted          
6 months    MAL-ED           BRAZIL                         >=50 cm             0       21      59  stunted          
6 months    MAL-ED           BRAZIL                         >=50 cm             1        0      59  stunted          
6 months    MAL-ED           BRAZIL                         <48 cm              0       15      59  stunted          
6 months    MAL-ED           BRAZIL                         <48 cm              1        1      59  stunted          
6 months    MAL-ED           BRAZIL                         [48-50) cm          0       21      59  stunted          
6 months    MAL-ED           BRAZIL                         [48-50) cm          1        1      59  stunted          
6 months    MAL-ED           INDIA                          >=50 cm             0        8      41  stunted          
6 months    MAL-ED           INDIA                          >=50 cm             1        0      41  stunted          
6 months    MAL-ED           INDIA                          <48 cm              0       11      41  stunted          
6 months    MAL-ED           INDIA                          <48 cm              1        9      41  stunted          
6 months    MAL-ED           INDIA                          [48-50) cm          0        9      41  stunted          
6 months    MAL-ED           INDIA                          [48-50) cm          1        4      41  stunted          
6 months    MAL-ED           NEPAL                          >=50 cm             0        7      26  stunted          
6 months    MAL-ED           NEPAL                          >=50 cm             1        0      26  stunted          
6 months    MAL-ED           NEPAL                          <48 cm              0       11      26  stunted          
6 months    MAL-ED           NEPAL                          <48 cm              1        0      26  stunted          
6 months    MAL-ED           NEPAL                          [48-50) cm          0        8      26  stunted          
6 months    MAL-ED           NEPAL                          [48-50) cm          1        0      26  stunted          
6 months    MAL-ED           PERU                           >=50 cm             0       36     215  stunted          
6 months    MAL-ED           PERU                           >=50 cm             1        2     215  stunted          
6 months    MAL-ED           PERU                           <48 cm              0       55     215  stunted          
6 months    MAL-ED           PERU                           <48 cm              1       33     215  stunted          
6 months    MAL-ED           PERU                           [48-50) cm          0       80     215  stunted          
6 months    MAL-ED           PERU                           [48-50) cm          1        9     215  stunted          
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm             0       27      93  stunted          
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm             1        2      93  stunted          
6 months    MAL-ED           SOUTH AFRICA                   <48 cm              0       17      93  stunted          
6 months    MAL-ED           SOUTH AFRICA                   <48 cm              1        7      93  stunted          
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm          0       33      93  stunted          
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm          1        7      93  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       19     118  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     118  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              0       21     118  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              1       20     118  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       49     118  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        9     118  stunted          
6 months    NIH-Birth        BANGLADESH                     >=50 cm             0       98     518  stunted          
6 months    NIH-Birth        BANGLADESH                     >=50 cm             1        8     518  stunted          
6 months    NIH-Birth        BANGLADESH                     <48 cm              0      111     518  stunted          
6 months    NIH-Birth        BANGLADESH                     <48 cm              1       99     518  stunted          
6 months    NIH-Birth        BANGLADESH                     [48-50) cm          0      169     518  stunted          
6 months    NIH-Birth        BANGLADESH                     [48-50) cm          1       33     518  stunted          
6 months    NIH-Crypto       BANGLADESH                     >=50 cm             0      162     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     >=50 cm             1        2     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     <48 cm              0      162     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     <48 cm              1      108     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm          0      241     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm          1       40     715  stunted          
6 months    PROBIT           BELARUS                        >=50 cm             0    13850   15760  stunted          
6 months    PROBIT           BELARUS                        >=50 cm             1      445   15760  stunted          
6 months    PROBIT           BELARUS                        <48 cm              0      138   15760  stunted          
6 months    PROBIT           BELARUS                        <48 cm              1       34   15760  stunted          
6 months    PROBIT           BELARUS                        [48-50) cm          0     1152   15760  stunted          
6 months    PROBIT           BELARUS                        [48-50) cm          1      141   15760  stunted          
6 months    PROVIDE          BANGLADESH                     >=50 cm             0      141     604  stunted          
6 months    PROVIDE          BANGLADESH                     >=50 cm             1        2     604  stunted          
6 months    PROVIDE          BANGLADESH                     <48 cm              0      136     604  stunted          
6 months    PROVIDE          BANGLADESH                     <48 cm              1       77     604  stunted          
6 months    PROVIDE          BANGLADESH                     [48-50) cm          0      231     604  stunted          
6 months    PROVIDE          BANGLADESH                     [48-50) cm          1       17     604  stunted          
6 months    ResPak           PAKISTAN                       >=50 cm             0        4      34  stunted          
6 months    ResPak           PAKISTAN                       >=50 cm             1        4      34  stunted          
6 months    ResPak           PAKISTAN                       <48 cm              0        8      34  stunted          
6 months    ResPak           PAKISTAN                       <48 cm              1        8      34  stunted          
6 months    ResPak           PAKISTAN                       [48-50) cm          0        7      34  stunted          
6 months    ResPak           PAKISTAN                       [48-50) cm          1        3      34  stunted          
6 months    SAS-CompFeed     INDIA                          >=50 cm             0      184    1324  stunted          
6 months    SAS-CompFeed     INDIA                          >=50 cm             1       12    1324  stunted          
6 months    SAS-CompFeed     INDIA                          <48 cm              0      405    1324  stunted          
6 months    SAS-CompFeed     INDIA                          <48 cm              1      304    1324  stunted          
6 months    SAS-CompFeed     INDIA                          [48-50) cm          0      359    1324  stunted          
6 months    SAS-CompFeed     INDIA                          [48-50) cm          1       60    1324  stunted          
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm             0     2328    8577  stunted          
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm             1      210    8577  stunted          
6 months    ZVITAMBO         ZIMBABWE                       <48 cm              0     1969    8577  stunted          
6 months    ZVITAMBO         ZIMBABWE                       <48 cm              1      711    8577  stunted          
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm          0     2887    8577  stunted          
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm          1      472    8577  stunted          
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm             0        5     106  stunted          
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm             1       11     106  stunted          
24 months   CMC-V-BCS-2002   INDIA                          <48 cm              0       14     106  stunted          
24 months   CMC-V-BCS-2002   INDIA                          <48 cm              1       36     106  stunted          
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm          0       10     106  stunted          
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm          1       30     106  stunted          
24 months   CMIN             BANGLADESH                     >=50 cm             0        0      11  stunted          
24 months   CMIN             BANGLADESH                     >=50 cm             1        0      11  stunted          
24 months   CMIN             BANGLADESH                     <48 cm              0        2      11  stunted          
24 months   CMIN             BANGLADESH                     <48 cm              1        4      11  stunted          
24 months   CMIN             BANGLADESH                     [48-50) cm          0        2      11  stunted          
24 months   CMIN             BANGLADESH                     [48-50) cm          1        3      11  stunted          
24 months   COHORTS          GUATEMALA                      >=50 cm             0       77     560  stunted          
24 months   COHORTS          GUATEMALA                      >=50 cm             1      186     560  stunted          
24 months   COHORTS          GUATEMALA                      <48 cm              0        7     560  stunted          
24 months   COHORTS          GUATEMALA                      <48 cm              1      113     560  stunted          
24 months   COHORTS          GUATEMALA                      [48-50) cm          0       22     560  stunted          
24 months   COHORTS          GUATEMALA                      [48-50) cm          1      155     560  stunted          
24 months   COHORTS          INDIA                          >=50 cm             0      736    4758  stunted          
24 months   COHORTS          INDIA                          >=50 cm             1      311    4758  stunted          
24 months   COHORTS          INDIA                          <48 cm              0      567    4758  stunted          
24 months   COHORTS          INDIA                          <48 cm              1     1367    4758  stunted          
24 months   COHORTS          INDIA                          [48-50) cm          0      909    4758  stunted          
24 months   COHORTS          INDIA                          [48-50) cm          1      868    4758  stunted          
24 months   COHORTS          PHILIPPINES                    >=50 cm             0      485    2442  stunted          
24 months   COHORTS          PHILIPPINES                    >=50 cm             1      412    2442  stunted          
24 months   COHORTS          PHILIPPINES                    <48 cm              0      119    2442  stunted          
24 months   COHORTS          PHILIPPINES                    <48 cm              1      485    2442  stunted          
24 months   COHORTS          PHILIPPINES                    [48-50) cm          0      316    2442  stunted          
24 months   COHORTS          PHILIPPINES                    [48-50) cm          1      625    2442  stunted          
24 months   CONTENT          PERU                           >=50 cm             0        1       2  stunted          
24 months   CONTENT          PERU                           >=50 cm             1        0       2  stunted          
24 months   CONTENT          PERU                           <48 cm              0        1       2  stunted          
24 months   CONTENT          PERU                           <48 cm              1        0       2  stunted          
24 months   CONTENT          PERU                           [48-50) cm          0        0       2  stunted          
24 months   CONTENT          PERU                           [48-50) cm          1        0       2  stunted          
24 months   EE               PAKISTAN                       >=50 cm             0        9     106  stunted          
24 months   EE               PAKISTAN                       >=50 cm             1        1     106  stunted          
24 months   EE               PAKISTAN                       <48 cm              0       16     106  stunted          
24 months   EE               PAKISTAN                       <48 cm              1       58     106  stunted          
24 months   EE               PAKISTAN                       [48-50) cm          0        8     106  stunted          
24 months   EE               PAKISTAN                       [48-50) cm          1       14     106  stunted          
24 months   GMS-Nepal        NEPAL                          >=50 cm             0       58     487  stunted          
24 months   GMS-Nepal        NEPAL                          >=50 cm             1       18     487  stunted          
24 months   GMS-Nepal        NEPAL                          <48 cm              0      114     487  stunted          
24 months   GMS-Nepal        NEPAL                          <48 cm              1      141     487  stunted          
24 months   GMS-Nepal        NEPAL                          [48-50) cm          0       97     487  stunted          
24 months   GMS-Nepal        NEPAL                          [48-50) cm          1       59     487  stunted          
24 months   IRC              INDIA                          >=50 cm             0       95     390  stunted          
24 months   IRC              INDIA                          >=50 cm             1       47     390  stunted          
24 months   IRC              INDIA                          <48 cm              0       51     390  stunted          
24 months   IRC              INDIA                          <48 cm              1       59     390  stunted          
24 months   IRC              INDIA                          [48-50) cm          0       84     390  stunted          
24 months   IRC              INDIA                          [48-50) cm          1       54     390  stunted          
24 months   JiVitA-3         BANGLADESH                     >=50 cm             0      327    7184  stunted          
24 months   JiVitA-3         BANGLADESH                     >=50 cm             1       68    7184  stunted          
24 months   JiVitA-3         BANGLADESH                     <48 cm              0     2033    7184  stunted          
24 months   JiVitA-3         BANGLADESH                     <48 cm              1     3042    7184  stunted          
24 months   JiVitA-3         BANGLADESH                     [48-50) cm          0     1245    7184  stunted          
24 months   JiVitA-3         BANGLADESH                     [48-50) cm          1      469    7184  stunted          
24 months   JiVitA-4         BANGLADESH                     >=50 cm             0      777    3987  stunted          
24 months   JiVitA-4         BANGLADESH                     >=50 cm             1      300    3987  stunted          
24 months   JiVitA-4         BANGLADESH                     <48 cm              0      935    3987  stunted          
24 months   JiVitA-4         BANGLADESH                     <48 cm              1     1009    3987  stunted          
24 months   JiVitA-4         BANGLADESH                     [48-50) cm          0      687    3987  stunted          
24 months   JiVitA-4         BANGLADESH                     [48-50) cm          1      279    3987  stunted          
24 months   Keneba           GAMBIA                         >=50 cm             0      407    1065  stunted          
24 months   Keneba           GAMBIA                         >=50 cm             1      128    1065  stunted          
24 months   Keneba           GAMBIA                         <48 cm              0      102    1065  stunted          
24 months   Keneba           GAMBIA                         <48 cm              1       94    1065  stunted          
24 months   Keneba           GAMBIA                         [48-50) cm          0      211    1065  stunted          
24 months   Keneba           GAMBIA                         [48-50) cm          1      123    1065  stunted          
24 months   MAL-ED           BANGLADESH                     >=50 cm             0       28     187  stunted          
24 months   MAL-ED           BANGLADESH                     >=50 cm             1        7     187  stunted          
24 months   MAL-ED           BANGLADESH                     <48 cm              0       29     187  stunted          
24 months   MAL-ED           BANGLADESH                     <48 cm              1       54     187  stunted          
24 months   MAL-ED           BANGLADESH                     [48-50) cm          0       39     187  stunted          
24 months   MAL-ED           BANGLADESH                     [48-50) cm          1       30     187  stunted          
24 months   MAL-ED           BRAZIL                         >=50 cm             0       17      42  stunted          
24 months   MAL-ED           BRAZIL                         >=50 cm             1        0      42  stunted          
24 months   MAL-ED           BRAZIL                         <48 cm              0        9      42  stunted          
24 months   MAL-ED           BRAZIL                         <48 cm              1        2      42  stunted          
24 months   MAL-ED           BRAZIL                         [48-50) cm          0       14      42  stunted          
24 months   MAL-ED           BRAZIL                         [48-50) cm          1        0      42  stunted          
24 months   MAL-ED           INDIA                          >=50 cm             0        5      39  stunted          
24 months   MAL-ED           INDIA                          >=50 cm             1        1      39  stunted          
24 months   MAL-ED           INDIA                          <48 cm              0        7      39  stunted          
24 months   MAL-ED           INDIA                          <48 cm              1       13      39  stunted          
24 months   MAL-ED           INDIA                          [48-50) cm          0        6      39  stunted          
24 months   MAL-ED           INDIA                          [48-50) cm          1        7      39  stunted          
24 months   MAL-ED           NEPAL                          >=50 cm             0        7      26  stunted          
24 months   MAL-ED           NEPAL                          >=50 cm             1        0      26  stunted          
24 months   MAL-ED           NEPAL                          <48 cm              0        7      26  stunted          
24 months   MAL-ED           NEPAL                          <48 cm              1        4      26  stunted          
24 months   MAL-ED           NEPAL                          [48-50) cm          0        4      26  stunted          
24 months   MAL-ED           NEPAL                          [48-50) cm          1        4      26  stunted          
24 months   MAL-ED           PERU                           >=50 cm             0       20     160  stunted          
24 months   MAL-ED           PERU                           >=50 cm             1        8     160  stunted          
24 months   MAL-ED           PERU                           <48 cm              0       35     160  stunted          
24 months   MAL-ED           PERU                           <48 cm              1       36     160  stunted          
24 months   MAL-ED           PERU                           [48-50) cm          0       43     160  stunted          
24 months   MAL-ED           PERU                           [48-50) cm          1       18     160  stunted          
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm             0       18      91  stunted          
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm             1        9      91  stunted          
24 months   MAL-ED           SOUTH AFRICA                   <48 cm              0       16      91  stunted          
24 months   MAL-ED           SOUTH AFRICA                   <48 cm              1        8      91  stunted          
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm          0       25      91  stunted          
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm          1       15      91  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             0        9     104  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        8     104  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              0        5     104  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              1       31     104  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       13     104  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1       38     104  stunted          
24 months   NIH-Birth        BANGLADESH                     >=50 cm             0       62     414  stunted          
24 months   NIH-Birth        BANGLADESH                     >=50 cm             1       27     414  stunted          
24 months   NIH-Birth        BANGLADESH                     <48 cm              0       38     414  stunted          
24 months   NIH-Birth        BANGLADESH                     <48 cm              1      128     414  stunted          
24 months   NIH-Birth        BANGLADESH                     [48-50) cm          0       78     414  stunted          
24 months   NIH-Birth        BANGLADESH                     [48-50) cm          1       81     414  stunted          
24 months   NIH-Crypto       BANGLADESH                     >=50 cm             0      120     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     >=50 cm             1        8     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     <48 cm              0      124     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     <48 cm              1       76     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm          0      138     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm          1       48     514  stunted          
24 months   PROBIT           BELARUS                        >=50 cm             0     3439    4035  stunted          
24 months   PROBIT           BELARUS                        >=50 cm             1      244    4035  stunted          
24 months   PROBIT           BELARUS                        <48 cm              0       39    4035  stunted          
24 months   PROBIT           BELARUS                        <48 cm              1        5    4035  stunted          
24 months   PROBIT           BELARUS                        [48-50) cm          0      282    4035  stunted          
24 months   PROBIT           BELARUS                        [48-50) cm          1       26    4035  stunted          
24 months   PROVIDE          BANGLADESH                     >=50 cm             0      119     578  stunted          
24 months   PROVIDE          BANGLADESH                     >=50 cm             1       20     578  stunted          
24 months   PROVIDE          BANGLADESH                     <48 cm              0       95     578  stunted          
24 months   PROVIDE          BANGLADESH                     <48 cm              1      111     578  stunted          
24 months   PROVIDE          BANGLADESH                     [48-50) cm          0      174     578  stunted          
24 months   PROVIDE          BANGLADESH                     [48-50) cm          1       59     578  stunted          
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm             0      243    1608  stunted          
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm             1       69    1608  stunted          
24 months   ZVITAMBO         ZIMBABWE                       <48 cm              0      382    1608  stunted          
24 months   ZVITAMBO         ZIMBABWE                       <48 cm              1      329    1608  stunted          
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm          0      426    1608  stunted          
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm          1      159    1608  stunted          


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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL

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

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

agecat      studyid          country                        birthlen      stunted   n_cell       n
----------  ---------------  -----------------------------  -----------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm             0       14      92
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm             1        0      92
Birth       CMC-V-BCS-2002   INDIA                          <48 cm              0       21      92
Birth       CMC-V-BCS-2002   INDIA                          <48 cm              1       17      92
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm          0       40      92
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm          1        0      92
Birth       CMIN             BANGLADESH                     >=50 cm             0        2      26
Birth       CMIN             BANGLADESH                     >=50 cm             1        0      26
Birth       CMIN             BANGLADESH                     <48 cm              0        7      26
Birth       CMIN             BANGLADESH                     <48 cm              1        9      26
Birth       CMIN             BANGLADESH                     [48-50) cm          0        8      26
Birth       CMIN             BANGLADESH                     [48-50) cm          1        0      26
Birth       COHORTS          GUATEMALA                      >=50 cm             0      437     852
Birth       COHORTS          GUATEMALA                      >=50 cm             1        0     852
Birth       COHORTS          GUATEMALA                      <48 cm              0      113     852
Birth       COHORTS          GUATEMALA                      <48 cm              1       50     852
Birth       COHORTS          GUATEMALA                      [48-50) cm          0      252     852
Birth       COHORTS          GUATEMALA                      [48-50) cm          1        0     852
Birth       COHORTS          INDIA                          >=50 cm             0     1426    6640
Birth       COHORTS          INDIA                          >=50 cm             1        0    6640
Birth       COHORTS          INDIA                          <48 cm              0     1982    6640
Birth       COHORTS          INDIA                          <48 cm              1      792    6640
Birth       COHORTS          INDIA                          [48-50) cm          0     2440    6640
Birth       COHORTS          INDIA                          [48-50) cm          1        0    6640
Birth       COHORTS          PHILIPPINES                    >=50 cm             0     1129    3050
Birth       COHORTS          PHILIPPINES                    >=50 cm             1        0    3050
Birth       COHORTS          PHILIPPINES                    <48 cm              0      575    3050
Birth       COHORTS          PHILIPPINES                    <48 cm              1      187    3050
Birth       COHORTS          PHILIPPINES                    [48-50) cm          0     1159    3050
Birth       COHORTS          PHILIPPINES                    [48-50) cm          1        0    3050
Birth       CONTENT          PERU                           >=50 cm             0        1       2
Birth       CONTENT          PERU                           >=50 cm             1        0       2
Birth       CONTENT          PERU                           <48 cm              0        1       2
Birth       CONTENT          PERU                           <48 cm              1        0       2
Birth       CONTENT          PERU                           [48-50) cm          0        0       2
Birth       CONTENT          PERU                           [48-50) cm          1        0       2
Birth       EE               PAKISTAN                       >=50 cm             0       24     240
Birth       EE               PAKISTAN                       >=50 cm             1        0     240
Birth       EE               PAKISTAN                       <48 cm              0       62     240
Birth       EE               PAKISTAN                       <48 cm              1      100     240
Birth       EE               PAKISTAN                       [48-50) cm          0       54     240
Birth       EE               PAKISTAN                       [48-50) cm          1        0     240
Birth       GMS-Nepal        NEPAL                          >=50 cm             0      115     696
Birth       GMS-Nepal        NEPAL                          >=50 cm             1        0     696
Birth       GMS-Nepal        NEPAL                          <48 cm              0      251     696
Birth       GMS-Nepal        NEPAL                          <48 cm              1      122     696
Birth       GMS-Nepal        NEPAL                          [48-50) cm          0      208     696
Birth       GMS-Nepal        NEPAL                          [48-50) cm          1        0     696
Birth       IRC              INDIA                          >=50 cm             0      142     388
Birth       IRC              INDIA                          >=50 cm             1        0     388
Birth       IRC              INDIA                          <48 cm              0       63     388
Birth       IRC              INDIA                          <48 cm              1       45     388
Birth       IRC              INDIA                          [48-50) cm          0      138     388
Birth       IRC              INDIA                          [48-50) cm          1        0     388
Birth       JiVitA-3         BANGLADESH                     >=50 cm             0     1258   22455
Birth       JiVitA-3         BANGLADESH                     >=50 cm             1        0   22455
Birth       JiVitA-3         BANGLADESH                     <48 cm              0     8722   22455
Birth       JiVitA-3         BANGLADESH                     <48 cm              1     7387   22455
Birth       JiVitA-3         BANGLADESH                     [48-50) cm          0     5088   22455
Birth       JiVitA-3         BANGLADESH                     [48-50) cm          1        0   22455
Birth       JiVitA-4         BANGLADESH                     >=50 cm             0      178    2823
Birth       JiVitA-4         BANGLADESH                     >=50 cm             1        0    2823
Birth       JiVitA-4         BANGLADESH                     <48 cm              0     1056    2823
Birth       JiVitA-4         BANGLADESH                     <48 cm              1      857    2823
Birth       JiVitA-4         BANGLADESH                     [48-50) cm          0      732    2823
Birth       JiVitA-4         BANGLADESH                     [48-50) cm          1        0    2823
Birth       Keneba           GAMBIA                         >=50 cm             0      763    1543
Birth       Keneba           GAMBIA                         >=50 cm             1        0    1543
Birth       Keneba           GAMBIA                         <48 cm              0      202    1543
Birth       Keneba           GAMBIA                         <48 cm              1       83    1543
Birth       Keneba           GAMBIA                         [48-50) cm          0      495    1543
Birth       Keneba           GAMBIA                         [48-50) cm          1        0    1543
Birth       MAL-ED           BANGLADESH                     >=50 cm             0       39     231
Birth       MAL-ED           BANGLADESH                     >=50 cm             1        0     231
Birth       MAL-ED           BANGLADESH                     <48 cm              0       69     231
Birth       MAL-ED           BANGLADESH                     <48 cm              1       44     231
Birth       MAL-ED           BANGLADESH                     [48-50) cm          0       79     231
Birth       MAL-ED           BANGLADESH                     [48-50) cm          1        0     231
Birth       MAL-ED           BRAZIL                         >=50 cm             0       30      65
Birth       MAL-ED           BRAZIL                         >=50 cm             1        0      65
Birth       MAL-ED           BRAZIL                         <48 cm              0        8      65
Birth       MAL-ED           BRAZIL                         <48 cm              1        9      65
Birth       MAL-ED           BRAZIL                         [48-50) cm          0       18      65
Birth       MAL-ED           BRAZIL                         [48-50) cm          1        0      65
Birth       MAL-ED           INDIA                          >=50 cm             0        9      47
Birth       MAL-ED           INDIA                          >=50 cm             1        0      47
Birth       MAL-ED           INDIA                          <48 cm              0       10      47
Birth       MAL-ED           INDIA                          <48 cm              1       10      47
Birth       MAL-ED           INDIA                          [48-50) cm          0       18      47
Birth       MAL-ED           INDIA                          [48-50) cm          1        0      47
Birth       MAL-ED           NEPAL                          >=50 cm             0        8      27
Birth       MAL-ED           NEPAL                          >=50 cm             1        0      27
Birth       MAL-ED           NEPAL                          <48 cm              0       10      27
Birth       MAL-ED           NEPAL                          <48 cm              1        2      27
Birth       MAL-ED           NEPAL                          [48-50) cm          0        7      27
Birth       MAL-ED           NEPAL                          [48-50) cm          1        0      27
Birth       MAL-ED           PERU                           >=50 cm             0       52     233
Birth       MAL-ED           PERU                           >=50 cm             1        0     233
Birth       MAL-ED           PERU                           <48 cm              0       62     233
Birth       MAL-ED           PERU                           <48 cm              1       26     233
Birth       MAL-ED           PERU                           [48-50) cm          0       93     233
Birth       MAL-ED           PERU                           [48-50) cm          1        0     233
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm             0       44     123
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm             1        0     123
Birth       MAL-ED           SOUTH AFRICA                   <48 cm              0       23     123
Birth       MAL-ED           SOUTH AFRICA                   <48 cm              1       10     123
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm          0       46     123
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm          1        0     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       32     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              0       19     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              1       23     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     125
Birth       NIH-Birth        BANGLADESH                     >=50 cm             0      139     608
Birth       NIH-Birth        BANGLADESH                     >=50 cm             1        0     608
Birth       NIH-Birth        BANGLADESH                     <48 cm              0      143     608
Birth       NIH-Birth        BANGLADESH                     <48 cm              1       97     608
Birth       NIH-Birth        BANGLADESH                     [48-50) cm          0      229     608
Birth       NIH-Birth        BANGLADESH                     [48-50) cm          1        0     608
Birth       NIH-Crypto       BANGLADESH                     >=50 cm             0      161     732
Birth       NIH-Crypto       BANGLADESH                     >=50 cm             1        0     732
Birth       NIH-Crypto       BANGLADESH                     <48 cm              0      186     732
Birth       NIH-Crypto       BANGLADESH                     <48 cm              1      101     732
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm          0      284     732
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm          1        0     732
Birth       PROBIT           BELARUS                        >=50 cm             0    12626   13893
Birth       PROBIT           BELARUS                        >=50 cm             1        0   13893
Birth       PROBIT           BELARUS                        <48 cm              0      113   13893
Birth       PROBIT           BELARUS                        <48 cm              1       34   13893
Birth       PROBIT           BELARUS                        [48-50) cm          0     1120   13893
Birth       PROBIT           BELARUS                        [48-50) cm          1        0   13893
Birth       PROVIDE          BANGLADESH                     >=50 cm             0      121     539
Birth       PROVIDE          BANGLADESH                     >=50 cm             1        0     539
Birth       PROVIDE          BANGLADESH                     <48 cm              0      148     539
Birth       PROVIDE          BANGLADESH                     <48 cm              1       48     539
Birth       PROVIDE          BANGLADESH                     [48-50) cm          0      222     539
Birth       PROVIDE          BANGLADESH                     [48-50) cm          1        0     539
Birth       ResPak           PAKISTAN                       >=50 cm             0       12      42
Birth       ResPak           PAKISTAN                       >=50 cm             1        0      42
Birth       ResPak           PAKISTAN                       <48 cm              0        2      42
Birth       ResPak           PAKISTAN                       <48 cm              1       14      42
Birth       ResPak           PAKISTAN                       [48-50) cm          0       14      42
Birth       ResPak           PAKISTAN                       [48-50) cm          1        0      42
Birth       SAS-CompFeed     INDIA                          >=50 cm             0      116    1252
Birth       SAS-CompFeed     INDIA                          >=50 cm             1        0    1252
Birth       SAS-CompFeed     INDIA                          <48 cm              0      389    1252
Birth       SAS-CompFeed     INDIA                          <48 cm              1      349    1252
Birth       SAS-CompFeed     INDIA                          [48-50) cm          0      398    1252
Birth       SAS-CompFeed     INDIA                          [48-50) cm          1        0    1252
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm             0     4125   13875
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm             1        0   13875
Birth       ZVITAMBO         ZIMBABWE                       <48 cm              0     2975   13875
Birth       ZVITAMBO         ZIMBABWE                       <48 cm              1     1434   13875
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5341   13875
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm          1        0   13875
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm             0       11     104
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm             1        5     104
6 months    CMC-V-BCS-2002   INDIA                          <48 cm              0       31     104
6 months    CMC-V-BCS-2002   INDIA                          <48 cm              1       17     104
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm          0       32     104
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm          1        8     104
6 months    CMIN             BANGLADESH                     >=50 cm             0        0      12
6 months    CMIN             BANGLADESH                     >=50 cm             1        0      12
6 months    CMIN             BANGLADESH                     <48 cm              0        3      12
6 months    CMIN             BANGLADESH                     <48 cm              1        3      12
6 months    CMIN             BANGLADESH                     [48-50) cm          0        5      12
6 months    CMIN             BANGLADESH                     [48-50) cm          1        1      12
6 months    COHORTS          GUATEMALA                      >=50 cm             0      289     688
6 months    COHORTS          GUATEMALA                      >=50 cm             1       62     688
6 months    COHORTS          GUATEMALA                      <48 cm              0       28     688
6 months    COHORTS          GUATEMALA                      <48 cm              1      105     688
6 months    COHORTS          GUATEMALA                      [48-50) cm          0      104     688
6 months    COHORTS          GUATEMALA                      [48-50) cm          1      100     688
6 months    COHORTS          INDIA                          >=50 cm             0     1282    6135
6 months    COHORTS          INDIA                          >=50 cm             1       48    6135
6 months    COHORTS          INDIA                          <48 cm              0     1678    6135
6 months    COHORTS          INDIA                          <48 cm              1      852    6135
6 months    COHORTS          INDIA                          [48-50) cm          0     2031    6135
6 months    COHORTS          INDIA                          [48-50) cm          1      244    6135
6 months    COHORTS          PHILIPPINES                    >=50 cm             0      913    2701
6 months    COHORTS          PHILIPPINES                    >=50 cm             1       77    2701
6 months    COHORTS          PHILIPPINES                    <48 cm              0      394    2701
6 months    COHORTS          PHILIPPINES                    <48 cm              1      283    2701
6 months    COHORTS          PHILIPPINES                    [48-50) cm          0      822    2701
6 months    COHORTS          PHILIPPINES                    [48-50) cm          1      212    2701
6 months    CONTENT          PERU                           >=50 cm             0        1       2
6 months    CONTENT          PERU                           >=50 cm             1        0       2
6 months    CONTENT          PERU                           <48 cm              0        1       2
6 months    CONTENT          PERU                           <48 cm              1        0       2
6 months    CONTENT          PERU                           [48-50) cm          0        0       2
6 months    CONTENT          PERU                           [48-50) cm          1        0       2
6 months    EE               PAKISTAN                       >=50 cm             0       24     236
6 months    EE               PAKISTAN                       >=50 cm             1        0     236
6 months    EE               PAKISTAN                       <48 cm              0       61     236
6 months    EE               PAKISTAN                       <48 cm              1       99     236
6 months    EE               PAKISTAN                       [48-50) cm          0       35     236
6 months    EE               PAKISTAN                       [48-50) cm          1       17     236
6 months    GMS-Nepal        NEPAL                          >=50 cm             0       93     563
6 months    GMS-Nepal        NEPAL                          >=50 cm             1        3     563
6 months    GMS-Nepal        NEPAL                          <48 cm              0      193     563
6 months    GMS-Nepal        NEPAL                          <48 cm              1      103     563
6 months    GMS-Nepal        NEPAL                          [48-50) cm          0      155     563
6 months    GMS-Nepal        NEPAL                          [48-50) cm          1       16     563
6 months    IRC              INDIA                          >=50 cm             0      123     389
6 months    IRC              INDIA                          >=50 cm             1       19     389
6 months    IRC              INDIA                          <48 cm              0       62     389
6 months    IRC              INDIA                          <48 cm              1       47     389
6 months    IRC              INDIA                          [48-50) cm          0      109     389
6 months    IRC              INDIA                          [48-50) cm          1       29     389
6 months    JiVitA-3         BANGLADESH                     >=50 cm             0      813   13924
6 months    JiVitA-3         BANGLADESH                     >=50 cm             1       14   13924
6 months    JiVitA-3         BANGLADESH                     <48 cm              0     6452   13924
6 months    JiVitA-3         BANGLADESH                     <48 cm              1     3365   13924
6 months    JiVitA-3         BANGLADESH                     [48-50) cm          0     3102   13924
6 months    JiVitA-3         BANGLADESH                     [48-50) cm          1      178   13924
6 months    JiVitA-4         BANGLADESH                     >=50 cm             0      959    4020
6 months    JiVitA-4         BANGLADESH                     >=50 cm             1      142    4020
6 months    JiVitA-4         BANGLADESH                     <48 cm              0     1199    4020
6 months    JiVitA-4         BANGLADESH                     <48 cm              1      724    4020
6 months    JiVitA-4         BANGLADESH                     [48-50) cm          0      861    4020
6 months    JiVitA-4         BANGLADESH                     [48-50) cm          1      135    4020
6 months    Keneba           GAMBIA                         >=50 cm             0      629    1347
6 months    Keneba           GAMBIA                         >=50 cm             1       48    1347
6 months    Keneba           GAMBIA                         <48 cm              0      176    1347
6 months    Keneba           GAMBIA                         <48 cm              1       58    1347
6 months    Keneba           GAMBIA                         [48-50) cm          0      362    1347
6 months    Keneba           GAMBIA                         [48-50) cm          1       74    1347
6 months    MAL-ED           BANGLADESH                     >=50 cm             0       38     211
6 months    MAL-ED           BANGLADESH                     >=50 cm             1        1     211
6 months    MAL-ED           BANGLADESH                     <48 cm              0       67     211
6 months    MAL-ED           BANGLADESH                     <48 cm              1       31     211
6 months    MAL-ED           BANGLADESH                     [48-50) cm          0       69     211
6 months    MAL-ED           BANGLADESH                     [48-50) cm          1        5     211
6 months    MAL-ED           BRAZIL                         >=50 cm             0       28      59
6 months    MAL-ED           BRAZIL                         >=50 cm             1        0      59
6 months    MAL-ED           BRAZIL                         <48 cm              0       14      59
6 months    MAL-ED           BRAZIL                         <48 cm              1        1      59
6 months    MAL-ED           BRAZIL                         [48-50) cm          0       15      59
6 months    MAL-ED           BRAZIL                         [48-50) cm          1        1      59
6 months    MAL-ED           INDIA                          >=50 cm             0        8      41
6 months    MAL-ED           INDIA                          >=50 cm             1        0      41
6 months    MAL-ED           INDIA                          <48 cm              0       10      41
6 months    MAL-ED           INDIA                          <48 cm              1        8      41
6 months    MAL-ED           INDIA                          [48-50) cm          0       10      41
6 months    MAL-ED           INDIA                          [48-50) cm          1        5      41
6 months    MAL-ED           NEPAL                          >=50 cm             0        8      26
6 months    MAL-ED           NEPAL                          >=50 cm             1        0      26
6 months    MAL-ED           NEPAL                          <48 cm              0       11      26
6 months    MAL-ED           NEPAL                          <48 cm              1        0      26
6 months    MAL-ED           NEPAL                          [48-50) cm          0        7      26
6 months    MAL-ED           NEPAL                          [48-50) cm          1        0      26
6 months    MAL-ED           PERU                           >=50 cm             0       46     215
6 months    MAL-ED           PERU                           >=50 cm             1        2     215
6 months    MAL-ED           PERU                           <48 cm              0       51     215
6 months    MAL-ED           PERU                           <48 cm              1       33     215
6 months    MAL-ED           PERU                           [48-50) cm          0       74     215
6 months    MAL-ED           PERU                           [48-50) cm          1        9     215
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm             0       32      93
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm             1        2      93
6 months    MAL-ED           SOUTH AFRICA                   <48 cm              0       14      93
6 months    MAL-ED           SOUTH AFRICA                   <48 cm              1        7      93
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm          0       31      93
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm          1        7      93
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       31     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              0       19     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              1       20     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       39     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        9     118
6 months    NIH-Birth        BANGLADESH                     >=50 cm             0      111     518
6 months    NIH-Birth        BANGLADESH                     >=50 cm             1        9     518
6 months    NIH-Birth        BANGLADESH                     <48 cm              0      103     518
6 months    NIH-Birth        BANGLADESH                     <48 cm              1       96     518
6 months    NIH-Birth        BANGLADESH                     [48-50) cm          0      164     518
6 months    NIH-Birth        BANGLADESH                     [48-50) cm          1       35     518
6 months    NIH-Crypto       BANGLADESH                     >=50 cm             0      162     715
6 months    NIH-Crypto       BANGLADESH                     >=50 cm             1        2     715
6 months    NIH-Crypto       BANGLADESH                     <48 cm              0      162     715
6 months    NIH-Crypto       BANGLADESH                     <48 cm              1      108     715
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm          0      241     715
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm          1       40     715
6 months    PROBIT           BELARUS                        >=50 cm             0    13850   15760
6 months    PROBIT           BELARUS                        >=50 cm             1      445   15760
6 months    PROBIT           BELARUS                        <48 cm              0      138   15760
6 months    PROBIT           BELARUS                        <48 cm              1       34   15760
6 months    PROBIT           BELARUS                        [48-50) cm          0     1152   15760
6 months    PROBIT           BELARUS                        [48-50) cm          1      141   15760
6 months    PROVIDE          BANGLADESH                     >=50 cm             0      141     604
6 months    PROVIDE          BANGLADESH                     >=50 cm             1        2     604
6 months    PROVIDE          BANGLADESH                     <48 cm              0      136     604
6 months    PROVIDE          BANGLADESH                     <48 cm              1       77     604
6 months    PROVIDE          BANGLADESH                     [48-50) cm          0      231     604
6 months    PROVIDE          BANGLADESH                     [48-50) cm          1       17     604
6 months    ResPak           PAKISTAN                       >=50 cm             0        6      34
6 months    ResPak           PAKISTAN                       >=50 cm             1        4      34
6 months    ResPak           PAKISTAN                       <48 cm              0        7      34
6 months    ResPak           PAKISTAN                       <48 cm              1        6      34
6 months    ResPak           PAKISTAN                       [48-50) cm          0        6      34
6 months    ResPak           PAKISTAN                       [48-50) cm          1        5      34
6 months    SAS-CompFeed     INDIA                          >=50 cm             0      184    1324
6 months    SAS-CompFeed     INDIA                          >=50 cm             1       12    1324
6 months    SAS-CompFeed     INDIA                          <48 cm              0      405    1324
6 months    SAS-CompFeed     INDIA                          <48 cm              1      304    1324
6 months    SAS-CompFeed     INDIA                          [48-50) cm          0      359    1324
6 months    SAS-CompFeed     INDIA                          [48-50) cm          1       60    1324
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm             0     2328    8577
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm             1      210    8577
6 months    ZVITAMBO         ZIMBABWE                       <48 cm              0     1969    8577
6 months    ZVITAMBO         ZIMBABWE                       <48 cm              1      711    8577
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm          0     2887    8577
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm          1      472    8577
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm             0        5     106
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm             1       11     106
24 months   CMC-V-BCS-2002   INDIA                          <48 cm              0       14     106
24 months   CMC-V-BCS-2002   INDIA                          <48 cm              1       36     106
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm          0       10     106
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm          1       30     106
24 months   CMIN             BANGLADESH                     >=50 cm             0        0      11
24 months   CMIN             BANGLADESH                     >=50 cm             1        0      11
24 months   CMIN             BANGLADESH                     <48 cm              0        1      11
24 months   CMIN             BANGLADESH                     <48 cm              1        4      11
24 months   CMIN             BANGLADESH                     [48-50) cm          0        3      11
24 months   CMIN             BANGLADESH                     [48-50) cm          1        3      11
24 months   COHORTS          GUATEMALA                      >=50 cm             0       77     560
24 months   COHORTS          GUATEMALA                      >=50 cm             1      186     560
24 months   COHORTS          GUATEMALA                      <48 cm              0        7     560
24 months   COHORTS          GUATEMALA                      <48 cm              1      113     560
24 months   COHORTS          GUATEMALA                      [48-50) cm          0       22     560
24 months   COHORTS          GUATEMALA                      [48-50) cm          1      155     560
24 months   COHORTS          INDIA                          >=50 cm             0      736    4758
24 months   COHORTS          INDIA                          >=50 cm             1      311    4758
24 months   COHORTS          INDIA                          <48 cm              0      567    4758
24 months   COHORTS          INDIA                          <48 cm              1     1367    4758
24 months   COHORTS          INDIA                          [48-50) cm          0      909    4758
24 months   COHORTS          INDIA                          [48-50) cm          1      868    4758
24 months   COHORTS          PHILIPPINES                    >=50 cm             0      485    2442
24 months   COHORTS          PHILIPPINES                    >=50 cm             1      412    2442
24 months   COHORTS          PHILIPPINES                    <48 cm              0      119    2442
24 months   COHORTS          PHILIPPINES                    <48 cm              1      485    2442
24 months   COHORTS          PHILIPPINES                    [48-50) cm          0      316    2442
24 months   COHORTS          PHILIPPINES                    [48-50) cm          1      625    2442
24 months   CONTENT          PERU                           >=50 cm             0        1       2
24 months   CONTENT          PERU                           >=50 cm             1        0       2
24 months   CONTENT          PERU                           <48 cm              0        1       2
24 months   CONTENT          PERU                           <48 cm              1        0       2
24 months   CONTENT          PERU                           [48-50) cm          0        0       2
24 months   CONTENT          PERU                           [48-50) cm          1        0       2
24 months   EE               PAKISTAN                       >=50 cm             0        9     106
24 months   EE               PAKISTAN                       >=50 cm             1        1     106
24 months   EE               PAKISTAN                       <48 cm              0       16     106
24 months   EE               PAKISTAN                       <48 cm              1       55     106
24 months   EE               PAKISTAN                       [48-50) cm          0        8     106
24 months   EE               PAKISTAN                       [48-50) cm          1       17     106
24 months   GMS-Nepal        NEPAL                          >=50 cm             0       61     487
24 months   GMS-Nepal        NEPAL                          >=50 cm             1       23     487
24 months   GMS-Nepal        NEPAL                          <48 cm              0      112     487
24 months   GMS-Nepal        NEPAL                          <48 cm              1      137     487
24 months   GMS-Nepal        NEPAL                          [48-50) cm          0       96     487
24 months   GMS-Nepal        NEPAL                          [48-50) cm          1       58     487
24 months   IRC              INDIA                          >=50 cm             0       95     390
24 months   IRC              INDIA                          >=50 cm             1       47     390
24 months   IRC              INDIA                          <48 cm              0       51     390
24 months   IRC              INDIA                          <48 cm              1       59     390
24 months   IRC              INDIA                          [48-50) cm          0       84     390
24 months   IRC              INDIA                          [48-50) cm          1       54     390
24 months   JiVitA-3         BANGLADESH                     >=50 cm             0      334    7184
24 months   JiVitA-3         BANGLADESH                     >=50 cm             1       70    7184
24 months   JiVitA-3         BANGLADESH                     <48 cm              0     2029    7184
24 months   JiVitA-3         BANGLADESH                     <48 cm              1     3038    7184
24 months   JiVitA-3         BANGLADESH                     [48-50) cm          0     1242    7184
24 months   JiVitA-3         BANGLADESH                     [48-50) cm          1      471    7184
24 months   JiVitA-4         BANGLADESH                     >=50 cm             0      777    3987
24 months   JiVitA-4         BANGLADESH                     >=50 cm             1      300    3987
24 months   JiVitA-4         BANGLADESH                     <48 cm              0      935    3987
24 months   JiVitA-4         BANGLADESH                     <48 cm              1     1009    3987
24 months   JiVitA-4         BANGLADESH                     [48-50) cm          0      687    3987
24 months   JiVitA-4         BANGLADESH                     [48-50) cm          1      279    3987
24 months   Keneba           GAMBIA                         >=50 cm             0      407    1065
24 months   Keneba           GAMBIA                         >=50 cm             1      128    1065
24 months   Keneba           GAMBIA                         <48 cm              0      102    1065
24 months   Keneba           GAMBIA                         <48 cm              1       94    1065
24 months   Keneba           GAMBIA                         [48-50) cm          0      211    1065
24 months   Keneba           GAMBIA                         [48-50) cm          1      123    1065
24 months   MAL-ED           BANGLADESH                     >=50 cm             0       30     187
24 months   MAL-ED           BANGLADESH                     >=50 cm             1        9     187
24 months   MAL-ED           BANGLADESH                     <48 cm              0       27     187
24 months   MAL-ED           BANGLADESH                     <48 cm              1       53     187
24 months   MAL-ED           BANGLADESH                     [48-50) cm          0       39     187
24 months   MAL-ED           BANGLADESH                     [48-50) cm          1       29     187
24 months   MAL-ED           BRAZIL                         >=50 cm             0       20      42
24 months   MAL-ED           BRAZIL                         >=50 cm             1        0      42
24 months   MAL-ED           BRAZIL                         <48 cm              0        9      42
24 months   MAL-ED           BRAZIL                         <48 cm              1        1      42
24 months   MAL-ED           BRAZIL                         [48-50) cm          0       11      42
24 months   MAL-ED           BRAZIL                         [48-50) cm          1        1      42
24 months   MAL-ED           INDIA                          >=50 cm             0        5      39
24 months   MAL-ED           INDIA                          >=50 cm             1        1      39
24 months   MAL-ED           INDIA                          <48 cm              0        6      39
24 months   MAL-ED           INDIA                          <48 cm              1       12      39
24 months   MAL-ED           INDIA                          [48-50) cm          0        7      39
24 months   MAL-ED           INDIA                          [48-50) cm          1        8      39
24 months   MAL-ED           NEPAL                          >=50 cm             0        8      26
24 months   MAL-ED           NEPAL                          >=50 cm             1        0      26
24 months   MAL-ED           NEPAL                          <48 cm              0        7      26
24 months   MAL-ED           NEPAL                          <48 cm              1        4      26
24 months   MAL-ED           NEPAL                          [48-50) cm          0        3      26
24 months   MAL-ED           NEPAL                          [48-50) cm          1        4      26
24 months   MAL-ED           PERU                           >=50 cm             0       23     160
24 months   MAL-ED           PERU                           >=50 cm             1       11     160
24 months   MAL-ED           PERU                           <48 cm              0       34     160
24 months   MAL-ED           PERU                           <48 cm              1       33     160
24 months   MAL-ED           PERU                           [48-50) cm          0       41     160
24 months   MAL-ED           PERU                           [48-50) cm          1       18     160
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm             0       22      91
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm             1       10      91
24 months   MAL-ED           SOUTH AFRICA                   <48 cm              0       14      91
24 months   MAL-ED           SOUTH AFRICA                   <48 cm              1        7      91
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm          0       23      91
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm          1       15      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       15     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             1       14     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              0        5     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              1       29     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0        7     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1       34     104
24 months   NIH-Birth        BANGLADESH                     >=50 cm             0       66     414
24 months   NIH-Birth        BANGLADESH                     >=50 cm             1       33     414
24 months   NIH-Birth        BANGLADESH                     <48 cm              0       35     414
24 months   NIH-Birth        BANGLADESH                     <48 cm              1      125     414
24 months   NIH-Birth        BANGLADESH                     [48-50) cm          0       77     414
24 months   NIH-Birth        BANGLADESH                     [48-50) cm          1       78     414
24 months   NIH-Crypto       BANGLADESH                     >=50 cm             0      120     514
24 months   NIH-Crypto       BANGLADESH                     >=50 cm             1        8     514
24 months   NIH-Crypto       BANGLADESH                     <48 cm              0      124     514
24 months   NIH-Crypto       BANGLADESH                     <48 cm              1       76     514
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm          0      138     514
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm          1       48     514
24 months   PROBIT           BELARUS                        >=50 cm             0     3439    4035
24 months   PROBIT           BELARUS                        >=50 cm             1      244    4035
24 months   PROBIT           BELARUS                        <48 cm              0       39    4035
24 months   PROBIT           BELARUS                        <48 cm              1        5    4035
24 months   PROBIT           BELARUS                        [48-50) cm          0      282    4035
24 months   PROBIT           BELARUS                        [48-50) cm          1       26    4035
24 months   PROVIDE          BANGLADESH                     >=50 cm             0      119     578
24 months   PROVIDE          BANGLADESH                     >=50 cm             1       20     578
24 months   PROVIDE          BANGLADESH                     <48 cm              0       95     578
24 months   PROVIDE          BANGLADESH                     <48 cm              1      111     578
24 months   PROVIDE          BANGLADESH                     [48-50) cm          0      174     578
24 months   PROVIDE          BANGLADESH                     [48-50) cm          1       59     578
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm             0      243    1608
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm             1       69    1608
24 months   ZVITAMBO         ZIMBABWE                       <48 cm              0      382    1608
24 months   ZVITAMBO         ZIMBABWE                       <48 cm              1      329    1608
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm          0      426    1608
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm          1      159    1608


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




# Results Detail

## Results Plots
![](/tmp/e729606a-3b43-47aa-913b-c1023e09acd3/c1a52177-e5e1-48c8-9fb0-5f2cb534a420/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e729606a-3b43-47aa-913b-c1023e09acd3/c1a52177-e5e1-48c8-9fb0-5f2cb534a420/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e729606a-3b43-47aa-913b-c1023e09acd3/c1a52177-e5e1-48c8-9fb0-5f2cb534a420/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e729606a-3b43-47aa-913b-c1023e09acd3/c1a52177-e5e1-48c8-9fb0-5f2cb534a420/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.3125000   0.0842832   0.5407168
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.3541667   0.2182134   0.4901199
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.2000000   0.0754407   0.3245593
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                0.1720775   0.1320449   0.2121100
6 months    COHORTS          GUATEMALA                      <48 cm               NA                0.7885391   0.7179615   0.8591167
6 months    COHORTS          GUATEMALA                      [48-50) cm           NA                0.4953933   0.4265028   0.5642839
6 months    COHORTS          INDIA                          >=50 cm              NA                0.0392188   0.0288224   0.0496151
6 months    COHORTS          INDIA                          <48 cm               NA                0.3273019   0.3089905   0.3456133
6 months    COHORTS          INDIA                          [48-50) cm           NA                0.1082660   0.0954948   0.1210372
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                0.0750211   0.0585484   0.0914938
6 months    COHORTS          PHILIPPINES                    <48 cm               NA                0.4225258   0.3859984   0.4590532
6 months    COHORTS          PHILIPPINES                    [48-50) cm           NA                0.2074508   0.1829201   0.2319814
6 months    IRC              INDIA                          >=50 cm              NA                0.1303681   0.0745690   0.1861672
6 months    IRC              INDIA                          <48 cm               NA                0.4478114   0.3544523   0.5411705
6 months    IRC              INDIA                          [48-50) cm           NA                0.2142493   0.1443445   0.2841540
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                0.0183460   0.0067067   0.0299853
6 months    JiVitA-3         BANGLADESH                     <48 cm               NA                0.3418979   0.3309170   0.3528789
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           NA                0.0541969   0.0456255   0.0627682
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                0.1399087   0.1142218   0.1655956
6 months    JiVitA-4         BANGLADESH                     <48 cm               NA                0.3803373   0.3538339   0.4068406
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                0.1302185   0.1039297   0.1565073
6 months    Keneba           GAMBIA                         >=50 cm              NA                0.0685959   0.0493507   0.0878411
6 months    Keneba           GAMBIA                         <48 cm               NA                0.2463922   0.1898406   0.3029438
6 months    Keneba           GAMBIA                         [48-50) cm           NA                0.1783506   0.1417628   0.2149384
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                0.0750000   0.0278286   0.1221714
6 months    NIH-Birth        BANGLADESH                     <48 cm               NA                0.4824121   0.4129189   0.5519053
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.1758794   0.1229321   0.2288267
6 months    PROBIT           BELARUS                        >=50 cm              NA                0.0313655   0.0214735   0.0412576
6 months    PROBIT           BELARUS                        <48 cm               NA                0.1850505   0.1558530   0.2142480
6 months    PROBIT           BELARUS                        [48-50) cm           NA                0.1028291   0.0717723   0.1338858
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                0.0664999   0.0271049   0.1058950
6 months    SAS-CompFeed     INDIA                          <48 cm               NA                0.4194708   0.4002119   0.4387298
6 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                0.1477180   0.1187747   0.1766613
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.0801136   0.0695413   0.0906858
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.2683532   0.2516631   0.2850433
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.1406828   0.1288494   0.1525161
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.6875000   0.4593041   0.9156959
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.7200000   0.5949549   0.8450451
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.7500000   0.6151730   0.8848270
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                0.7072243   0.6521810   0.7622676
24 months   COHORTS          GUATEMALA                      <48 cm               NA                0.9416667   0.8996954   0.9836380
24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                0.8757062   0.8270595   0.9243529
24 months   COHORTS          INDIA                          >=50 cm              NA                0.3126335   0.2857434   0.3395235
24 months   COHORTS          INDIA                          <48 cm               NA                0.6960201   0.6760900   0.7159502
24 months   COHORTS          INDIA                          [48-50) cm           NA                0.4898929   0.4670759   0.5127099
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                0.4672755   0.4356948   0.4988562
24 months   COHORTS          PHILIPPINES                    <48 cm               NA                0.7911101   0.7602176   0.8220026
24 months   COHORTS          PHILIPPINES                    [48-50) cm           NA                0.6610278   0.6314154   0.6906401
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                0.2679684   0.1715418   0.3643949
24 months   GMS-Nepal        NEPAL                          <48 cm               NA                0.5466821   0.4845603   0.6088039
24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                0.3774685   0.3003666   0.4545704
24 months   IRC              INDIA                          >=50 cm              NA                0.3195580   0.2423591   0.3967568
24 months   IRC              INDIA                          <48 cm               NA                0.5472870   0.4523850   0.6421889
24 months   IRC              INDIA                          [48-50) cm           NA                0.3962802   0.3162356   0.4763248
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                0.1758532   0.1293558   0.2223506
24 months   JiVitA-3         BANGLADESH                     <48 cm               NA                0.5964307   0.5802869   0.6125744
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           NA                0.2714829   0.2474999   0.2954659
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                0.2901792   0.2562093   0.3241491
24 months   JiVitA-4         BANGLADESH                     <48 cm               NA                0.5133552   0.4856006   0.5411098
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                0.2912261   0.2531893   0.3292630
24 months   Keneba           GAMBIA                         >=50 cm              NA                0.2356891   0.1995388   0.2718394
24 months   Keneba           GAMBIA                         <48 cm               NA                0.4809747   0.4121181   0.5498312
24 months   Keneba           GAMBIA                         [48-50) cm           NA                0.3717972   0.3207713   0.4228230
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                0.2307692   0.0981833   0.3633551
24 months   MAL-ED           BANGLADESH                     <48 cm               NA                0.6625000   0.5586044   0.7663956
24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                0.4264706   0.3086068   0.5443344
24 months   MAL-ED           PERU                           >=50 cm              NA                0.3075722   0.1421390   0.4730054
24 months   MAL-ED           PERU                           <48 cm               NA                0.4903192   0.3693656   0.6112729
24 months   MAL-ED           PERU                           [48-50) cm           NA                0.3016546   0.1810310   0.4222783
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                0.3125000   0.1510144   0.4739856
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                0.3333333   0.1305970   0.5360697
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                0.3947368   0.2384647   0.5510090
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.4827586   0.3000080   0.6655092
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.8529412   0.7333190   0.9725634
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.8292683   0.7135349   0.9450017
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                0.3342366   0.2395911   0.4288822
24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                0.7688194   0.7040655   0.8335732
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.5130415   0.4347001   0.5913829
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                0.0625000   0.0205249   0.1044751
24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                0.3800000   0.3126646   0.4473354
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                0.2580645   0.1951194   0.3210096
24 months   PROBIT           BELARUS                        >=50 cm              NA                0.0662503   0.0397349   0.0927658
24 months   PROBIT           BELARUS                        <48 cm               NA                0.1136364   0.0286157   0.1986571
24 months   PROBIT           BELARUS                        [48-50) cm           NA                0.0844156   0.0506946   0.1181366
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                0.1492881   0.0906270   0.2079492
24 months   PROVIDE          BANGLADESH                     <48 cm               NA                0.5321757   0.4655497   0.5988017
24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                0.2498213   0.1944175   0.3052250
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.2164197   0.1702435   0.2625960
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.4604985   0.4236700   0.4973271
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.2745794   0.2380391   0.3111198


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2884615   0.2009687   0.3759544
6 months    COHORTS          GUATEMALA                      NA                   NA                0.3880814   0.3516414   0.4245214
6 months    COHORTS          INDIA                          NA                   NA                0.1864711   0.1767241   0.1962180
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2117734   0.1963625   0.2271843
6 months    IRC              INDIA                          NA                   NA                0.2442159   0.2014677   0.2869642
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2554582   0.2465868   0.2643296
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.2490050   0.2328619   0.2651480
6 months    Keneba           GAMBIA                         NA                   NA                0.1336303   0.1154530   0.1518076
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.2702703   0.2319893   0.3085512
6 months    PROBIT           BELARUS                        NA                   NA                0.0393401   0.0293640   0.0493162
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2839879   0.2652870   0.3026888
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1624111   0.1546051   0.1702171
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7264151   0.6411459   0.8116842
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8107143   0.7782403   0.8431882
24 months   COHORTS          INDIA                          NA                   NA                0.5350988   0.5209252   0.5492723
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6232596   0.6040367   0.6424826
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4476386   0.4034301   0.4918471
24 months   IRC              INDIA                          NA                   NA                0.4102564   0.3613763   0.4591366
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4981904   0.4842373   0.5121435
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3982945   0.3795521   0.4170368
24 months   Keneba           GAMBIA                         NA                   NA                0.3239437   0.2958244   0.3520629
24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4866310   0.4148009   0.5584611
24 months   MAL-ED           PERU                           NA                   NA                0.3875000   0.3117751   0.4632249
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3516484   0.2530008   0.4502959
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7403846   0.6557158   0.8250534
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5700483   0.5223021   0.6177945
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROBIT           BELARUS                        NA                   NA                0.0681537   0.0420376   0.0942697
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3463930   0.3231291   0.3696570


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level      estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  ----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            1.1333333   0.4966487    2.586223
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.6400000   0.2451020    1.671141
6 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm            4.5824656   3.5710076    5.880411
6 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            2.8788971   2.1953100    3.775343
6 months    COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    COHORTS          INDIA                          <48 cm               >=50 cm            8.3455384   6.3668944   10.939087
6 months    COHORTS          INDIA                          [48-50) cm           >=50 cm            2.7605652   2.0665542    3.687646
6 months    COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    COHORTS          PHILIPPINES                    <48 cm               >=50 cm            5.6320904   4.4521405    7.124762
6 months    COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            2.7652309   2.1572245    3.544602
6 months    IRC              INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    IRC              INDIA                          <48 cm               >=50 cm            3.4349764   2.1380622    5.518578
6 months    IRC              INDIA                          [48-50) cm           >=50 cm            1.6434177   0.9601805    2.812827
6 months    JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           18.6360934   9.8795541   35.153811
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            2.9541503   1.5311818    5.699522
6 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            2.7184676   2.2315804    3.311584
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.9307392   0.7126349    1.215595
6 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    Keneba           GAMBIA                         <48 cm               >=50 cm            3.5919391   2.5003243    5.160141
6 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm            2.6000193   1.8386962    3.676573
6 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            6.4321608   3.3739117   12.262530
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            2.3450586   1.1676868    4.709568
6 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    PROBIT           BELARUS                        <48 cm               >=50 cm            5.8998029   4.4166715    7.880974
6 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm            3.2784092   2.3338150    4.605321
6 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm            6.3078380   3.3697782   11.807549
6 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            2.2213249   1.0527317    4.687124
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            3.3496593   2.8953567    3.875245
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.7560413   1.5019021    2.053184
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            1.0472727   0.7200585    1.523182
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            1.0909091   0.7479154    1.591200
24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.3314964   1.2172746    1.456436
24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            1.2382298   1.1253130    1.362477
24 months   COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   COHORTS          INDIA                          <48 cm               >=50 cm            2.2263136   2.0352193    2.435350
24 months   COHORTS          INDIA                          [48-50) cm           >=50 cm            1.5669881   1.4228661    1.725708
24 months   COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   COHORTS          PHILIPPINES                    <48 cm               >=50 cm            1.6930270   1.5675242    1.828578
24 months   COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            1.4146424   1.3061631    1.532131
24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm            2.0400994   1.3990230    2.974937
24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            1.4086308   0.9316689    2.129770
24 months   IRC              INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   IRC              INDIA                          <48 cm               >=50 cm            1.7126376   1.2736381    2.302952
24 months   IRC              INDIA                          [48-50) cm           >=50 cm            1.2400886   0.9076379    1.694310
24 months   JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   JiVitA-3         BANGLADESH                     <48 cm               >=50 cm            3.3916400   2.5977698    4.428115
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            1.5438044   1.1722625    2.033104
24 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            1.7690973   1.5572687    2.009740
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            1.0036079   0.8421021    1.196089
24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   Keneba           GAMBIA                         <48 cm               >=50 cm            2.0407166   1.6550118    2.516311
24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm            1.5774898   1.2857856    1.935372
24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm            2.8708333   1.5825618    5.207812
24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            1.8480392   0.9768432    3.496210
24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   MAL-ED           PERU                           <48 cm               >=50 cm            1.5941598   0.8794232    2.889787
24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm            0.9807604   0.5009652    1.920076
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            1.0666667   0.4801989    2.369388
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            1.2631579   0.6587862    2.421981
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            1.7668067   1.1799532    2.645534
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            1.7177700   1.1474771    2.571497
24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            2.3002246   1.7118216    3.090879
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            1.5349648   1.1146760    2.113724
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            6.0800000   3.0356333   12.177492
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            4.1290323   2.0208559    8.436479
24 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   PROBIT           BELARUS                        <48 cm               >=50 cm            1.7152571   0.8163679    3.603898
24 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm            1.2741910   0.8209299    1.977712
24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm            3.5647561   2.3644062    5.374493
24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            1.6734170   1.0678726    2.622340
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            2.1278029   1.6939891    2.672712
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.2687357   0.9863343    1.631993


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0240385   -0.2331135   0.1850366
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.2160039    0.1798245   0.2521834
6 months    COHORTS          INDIA                          >=50 cm              NA                 0.1472523    0.1347204   0.1597841
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1367523    0.1192953   0.1542093
6 months    IRC              INDIA                          >=50 cm              NA                 0.1138478    0.0621023   0.1655934
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.2371122    0.2230749   0.2511495
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.1090963    0.0851202   0.1330724
6 months    Keneba           GAMBIA                         >=50 cm              NA                 0.0650344    0.0469873   0.0830815
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1952703    0.1436988   0.2468418
6 months    PROBIT           BELARUS                        >=50 cm              NA                 0.0079746    0.0057895   0.0101597
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                 0.2174880    0.1687815   0.2661944
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0822975    0.0720007   0.0925943
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0389151   -0.1699483   0.2477785
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.1034900    0.0682975   0.1386824
24 months   COHORTS          INDIA                          >=50 cm              NA                 0.2224653    0.1982769   0.2466537
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1559841    0.1315218   0.1804464
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1796702    0.0897551   0.2695854
24 months   IRC              INDIA                          >=50 cm              NA                 0.0906985    0.0278433   0.1535536
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.3223372    0.2761034   0.3685711
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.1081153    0.0782790   0.1379515
24 months   Keneba           GAMBIA                         >=50 cm              NA                 0.0882546    0.0605651   0.1159440
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.2558618    0.1317402   0.3799833
24 months   MAL-ED           PERU                           >=50 cm              NA                 0.0799278   -0.0689455   0.2288011
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0391484   -0.0930207   0.1713174
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2576260    0.1095014   0.4057506
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2358117    0.1522604   0.3193629
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1943093    0.1462097   0.2424089
24 months   PROBIT           BELARUS                        >=50 cm              NA                 0.0019033   -0.0017964   0.0056030
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1794316    0.1228273   0.2360359
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1299733    0.0868734   0.1730732


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0833333   -1.1149548   0.4450893
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.5565944    0.4602528   0.6357395
6 months    COHORTS          INDIA                          >=50 cm              NA                 0.7896790    0.7276978   0.8375520
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                 0.6457481    0.5666021   0.7104407
6 months    IRC              INDIA                          >=50 cm              NA                 0.4661769    0.2211021   0.6341406
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.9281839    0.8648198   0.9618468
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.4381289    0.3358020   0.5246912
6 months    Keneba           GAMBIA                         >=50 cm              NA                 0.4866742    0.3492148   0.5950993
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.7225000    0.4923498   0.8483084
6 months    PROBIT           BELARUS                        >=50 cm              NA                 0.2027084    0.1296733   0.2696145
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                 0.7658353    0.5661795   0.8736042
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.5067235    0.4433700   0.5628663
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0535714   -0.2827855   0.3017328
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.1276528    0.0811386   0.1718124
24 months   COHORTS          INDIA                          >=50 cm              NA                 0.4157463    0.3683913   0.4595508
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                 0.2502715    0.2089351   0.2894479
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.4013734    0.1623979   0.5721671
24 months   IRC              INDIA                          >=50 cm              NA                 0.2210775    0.0509916   0.3606797
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.6470161    0.5416807   0.7281424
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.2714456    0.1924499   0.3427138
24 months   Keneba           GAMBIA                         >=50 cm              NA                 0.2724380    0.1823401   0.3526080
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.5257819    0.1900215   0.7223595
24 months   MAL-ED           PERU                           >=50 cm              NA                 0.2062653   -0.2898044   0.5115424
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.1113281   -0.3564367   0.4177851
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.3479624    0.0994439   0.5278994
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.4136696    0.2436092   0.5454951
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.7566288    0.5354111   0.8725119
24 months   PROBIT           BELARUS                        >=50 cm              NA                 0.0279268   -0.0294276   0.0820858
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.5458499    0.3457866   0.6847323
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3752191    0.2385158   0.4873812

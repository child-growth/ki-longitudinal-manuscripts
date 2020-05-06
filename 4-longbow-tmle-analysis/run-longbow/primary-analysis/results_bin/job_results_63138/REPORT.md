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

**Outcome Variable:** sstunted

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

agecat      studyid          country                        birthlen      sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -----------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              0       14      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               0       34      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               1        4      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           0       40      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           1        0      92  sstunted         
Birth       CMIN             BANGLADESH                     >=50 cm              0        2      26  sstunted         
Birth       CMIN             BANGLADESH                     >=50 cm              1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     <48 cm               0       13      26  sstunted         
Birth       CMIN             BANGLADESH                     <48 cm               1        6      26  sstunted         
Birth       CMIN             BANGLADESH                     [48-50) cm           0        5      26  sstunted         
Birth       CMIN             BANGLADESH                     [48-50) cm           1        0      26  sstunted         
Birth       COHORTS          GUATEMALA                      >=50 cm              0      437     852  sstunted         
Birth       COHORTS          GUATEMALA                      >=50 cm              1        0     852  sstunted         
Birth       COHORTS          GUATEMALA                      <48 cm               0      152     852  sstunted         
Birth       COHORTS          GUATEMALA                      <48 cm               1       11     852  sstunted         
Birth       COHORTS          GUATEMALA                      [48-50) cm           0      252     852  sstunted         
Birth       COHORTS          GUATEMALA                      [48-50) cm           1        0     852  sstunted         
Birth       COHORTS          INDIA                          >=50 cm              0     1426    6640  sstunted         
Birth       COHORTS          INDIA                          >=50 cm              1        0    6640  sstunted         
Birth       COHORTS          INDIA                          <48 cm               0     2568    6640  sstunted         
Birth       COHORTS          INDIA                          <48 cm               1      206    6640  sstunted         
Birth       COHORTS          INDIA                          [48-50) cm           0     2440    6640  sstunted         
Birth       COHORTS          INDIA                          [48-50) cm           1        0    6640  sstunted         
Birth       COHORTS          PHILIPPINES                    >=50 cm              0     1129    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    >=50 cm              1        0    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    <48 cm               0      716    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    <48 cm               1       46    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    [48-50) cm           0     1159    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    [48-50) cm           1        0    3050  sstunted         
Birth       CONTENT          PERU                           >=50 cm              0        1       2  sstunted         
Birth       CONTENT          PERU                           >=50 cm              1        0       2  sstunted         
Birth       CONTENT          PERU                           <48 cm               0        1       2  sstunted         
Birth       CONTENT          PERU                           <48 cm               1        0       2  sstunted         
Birth       CONTENT          PERU                           [48-50) cm           0        0       2  sstunted         
Birth       CONTENT          PERU                           [48-50) cm           1        0       2  sstunted         
Birth       EE               PAKISTAN                       >=50 cm              0       22     240  sstunted         
Birth       EE               PAKISTAN                       >=50 cm              1        0     240  sstunted         
Birth       EE               PAKISTAN                       <48 cm               0      124     240  sstunted         
Birth       EE               PAKISTAN                       <48 cm               1       48     240  sstunted         
Birth       EE               PAKISTAN                       [48-50) cm           0       46     240  sstunted         
Birth       EE               PAKISTAN                       [48-50) cm           1        0     240  sstunted         
Birth       GMS-Nepal        NEPAL                          >=50 cm              0      104     696  sstunted         
Birth       GMS-Nepal        NEPAL                          >=50 cm              1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          <48 cm               0      353     696  sstunted         
Birth       GMS-Nepal        NEPAL                          <48 cm               1       31     696  sstunted         
Birth       GMS-Nepal        NEPAL                          [48-50) cm           0      208     696  sstunted         
Birth       GMS-Nepal        NEPAL                          [48-50) cm           1        0     696  sstunted         
Birth       IRC              INDIA                          >=50 cm              0      142     388  sstunted         
Birth       IRC              INDIA                          >=50 cm              1        0     388  sstunted         
Birth       IRC              INDIA                          <48 cm               0       92     388  sstunted         
Birth       IRC              INDIA                          <48 cm               1       16     388  sstunted         
Birth       IRC              INDIA                          [48-50) cm           0      138     388  sstunted         
Birth       IRC              INDIA                          [48-50) cm           1        0     388  sstunted         
Birth       JiVitA-3         BANGLADESH                     >=50 cm              0     1228   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     >=50 cm              1        0   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     <48 cm               0    13688   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     <48 cm               1     2448   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           0     5091   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           1        0   22455  sstunted         
Birth       JiVitA-4         BANGLADESH                     >=50 cm              0      178    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     >=50 cm              1        0    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     <48 cm               0     1680    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     <48 cm               1      233    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           0      732    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           1        0    2823  sstunted         
Birth       Keneba           GAMBIA                         >=50 cm              0      763    1543  sstunted         
Birth       Keneba           GAMBIA                         >=50 cm              1        0    1543  sstunted         
Birth       Keneba           GAMBIA                         <48 cm               0      256    1543  sstunted         
Birth       Keneba           GAMBIA                         <48 cm               1       29    1543  sstunted         
Birth       Keneba           GAMBIA                         [48-50) cm           0      495    1543  sstunted         
Birth       Keneba           GAMBIA                         [48-50) cm           1        0    1543  sstunted         
Birth       MAL-ED           BANGLADESH                     >=50 cm              0       35     231  sstunted         
Birth       MAL-ED           BANGLADESH                     >=50 cm              1        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     <48 cm               0      108     231  sstunted         
Birth       MAL-ED           BANGLADESH                     <48 cm               1        9     231  sstunted         
Birth       MAL-ED           BANGLADESH                     [48-50) cm           0       79     231  sstunted         
Birth       MAL-ED           BANGLADESH                     [48-50) cm           1        0     231  sstunted         
Birth       MAL-ED           BRAZIL                         >=50 cm              0       23      65  sstunted         
Birth       MAL-ED           BRAZIL                         >=50 cm              1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         <48 cm               0       15      65  sstunted         
Birth       MAL-ED           BRAZIL                         <48 cm               1        3      65  sstunted         
Birth       MAL-ED           BRAZIL                         [48-50) cm           0       24      65  sstunted         
Birth       MAL-ED           BRAZIL                         [48-50) cm           1        0      65  sstunted         
Birth       MAL-ED           INDIA                          >=50 cm              0        9      47  sstunted         
Birth       MAL-ED           INDIA                          >=50 cm              1        0      47  sstunted         
Birth       MAL-ED           INDIA                          <48 cm               0       20      47  sstunted         
Birth       MAL-ED           INDIA                          <48 cm               1        2      47  sstunted         
Birth       MAL-ED           INDIA                          [48-50) cm           0       16      47  sstunted         
Birth       MAL-ED           INDIA                          [48-50) cm           1        0      47  sstunted         
Birth       MAL-ED           NEPAL                          >=50 cm              0        7      27  sstunted         
Birth       MAL-ED           NEPAL                          >=50 cm              1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          <48 cm               0       11      27  sstunted         
Birth       MAL-ED           NEPAL                          <48 cm               1        1      27  sstunted         
Birth       MAL-ED           NEPAL                          [48-50) cm           0        8      27  sstunted         
Birth       MAL-ED           NEPAL                          [48-50) cm           1        0      27  sstunted         
Birth       MAL-ED           PERU                           >=50 cm              0       41     233  sstunted         
Birth       MAL-ED           PERU                           >=50 cm              1        0     233  sstunted         
Birth       MAL-ED           PERU                           <48 cm               0       88     233  sstunted         
Birth       MAL-ED           PERU                           <48 cm               1        4     233  sstunted         
Birth       MAL-ED           PERU                           [48-50) cm           0      100     233  sstunted         
Birth       MAL-ED           PERU                           [48-50) cm           1        0     233  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              0       35     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               0       34     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               1        2     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           0       52     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           1        0     123  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       20     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               0       34     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               1       10     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       61     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        0     125  sstunted         
Birth       NIH-Birth        BANGLADESH                     >=50 cm              0      124     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     >=50 cm              1        0     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     <48 cm               0      234     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     <48 cm               1       19     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           0      231     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           1        0     608  sstunted         
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              0      161     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              1        0     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     <48 cm               0      277     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     <48 cm               1       10     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           0      284     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           1        0     732  sstunted         
Birth       PROBIT           BELARUS                        >=50 cm              0    12626   13893  sstunted         
Birth       PROBIT           BELARUS                        >=50 cm              1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        <48 cm               0      142   13893  sstunted         
Birth       PROBIT           BELARUS                        <48 cm               1        5   13893  sstunted         
Birth       PROBIT           BELARUS                        [48-50) cm           0     1120   13893  sstunted         
Birth       PROBIT           BELARUS                        [48-50) cm           1        0   13893  sstunted         
Birth       PROVIDE          BANGLADESH                     >=50 cm              0      121     539  sstunted         
Birth       PROVIDE          BANGLADESH                     >=50 cm              1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     <48 cm               0      192     539  sstunted         
Birth       PROVIDE          BANGLADESH                     <48 cm               1        4     539  sstunted         
Birth       PROVIDE          BANGLADESH                     [48-50) cm           0      222     539  sstunted         
Birth       PROVIDE          BANGLADESH                     [48-50) cm           1        0     539  sstunted         
Birth       ResPak           PAKISTAN                       >=50 cm              0       10      42  sstunted         
Birth       ResPak           PAKISTAN                       >=50 cm              1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       <48 cm               0       17      42  sstunted         
Birth       ResPak           PAKISTAN                       <48 cm               1        2      42  sstunted         
Birth       ResPak           PAKISTAN                       [48-50) cm           0       13      42  sstunted         
Birth       ResPak           PAKISTAN                       [48-50) cm           1        0      42  sstunted         
Birth       SAS-CompFeed     INDIA                          >=50 cm              0      116    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          >=50 cm              1        0    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          <48 cm               0      647    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          <48 cm               1       91    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          [48-50) cm           0      398    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          [48-50) cm           1        0    1252  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              0     4125   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              1        0   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               0     3967   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               1      442   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           0     5341   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           1        0   13875  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              0       15     104  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              1        1     104  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               0       43     104  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               1        5     104  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           0       37     104  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           1        3     104  sstunted         
6 months    CMIN             BANGLADESH                     >=50 cm              0        0      12  sstunted         
6 months    CMIN             BANGLADESH                     >=50 cm              1        0      12  sstunted         
6 months    CMIN             BANGLADESH                     <48 cm               0        6      12  sstunted         
6 months    CMIN             BANGLADESH                     <48 cm               1        1      12  sstunted         
6 months    CMIN             BANGLADESH                     [48-50) cm           0        5      12  sstunted         
6 months    CMIN             BANGLADESH                     [48-50) cm           1        0      12  sstunted         
6 months    COHORTS          GUATEMALA                      >=50 cm              0      341     688  sstunted         
6 months    COHORTS          GUATEMALA                      >=50 cm              1       10     688  sstunted         
6 months    COHORTS          GUATEMALA                      <48 cm               0       90     688  sstunted         
6 months    COHORTS          GUATEMALA                      <48 cm               1       43     688  sstunted         
6 months    COHORTS          GUATEMALA                      [48-50) cm           0      180     688  sstunted         
6 months    COHORTS          GUATEMALA                      [48-50) cm           1       24     688  sstunted         
6 months    COHORTS          INDIA                          >=50 cm              0     1324    6135  sstunted         
6 months    COHORTS          INDIA                          >=50 cm              1        6    6135  sstunted         
6 months    COHORTS          INDIA                          <48 cm               0     2302    6135  sstunted         
6 months    COHORTS          INDIA                          <48 cm               1      228    6135  sstunted         
6 months    COHORTS          INDIA                          [48-50) cm           0     2238    6135  sstunted         
6 months    COHORTS          INDIA                          [48-50) cm           1       37    6135  sstunted         
6 months    COHORTS          PHILIPPINES                    >=50 cm              0      977    2701  sstunted         
6 months    COHORTS          PHILIPPINES                    >=50 cm              1       13    2701  sstunted         
6 months    COHORTS          PHILIPPINES                    <48 cm               0      593    2701  sstunted         
6 months    COHORTS          PHILIPPINES                    <48 cm               1       84    2701  sstunted         
6 months    COHORTS          PHILIPPINES                    [48-50) cm           0      999    2701  sstunted         
6 months    COHORTS          PHILIPPINES                    [48-50) cm           1       35    2701  sstunted         
6 months    CONTENT          PERU                           >=50 cm              0        1       2  sstunted         
6 months    CONTENT          PERU                           >=50 cm              1        0       2  sstunted         
6 months    CONTENT          PERU                           <48 cm               0        1       2  sstunted         
6 months    CONTENT          PERU                           <48 cm               1        0       2  sstunted         
6 months    CONTENT          PERU                           [48-50) cm           0        0       2  sstunted         
6 months    CONTENT          PERU                           [48-50) cm           1        0       2  sstunted         
6 months    EE               PAKISTAN                       >=50 cm              0       22     236  sstunted         
6 months    EE               PAKISTAN                       >=50 cm              1        0     236  sstunted         
6 months    EE               PAKISTAN                       <48 cm               0      118     236  sstunted         
6 months    EE               PAKISTAN                       <48 cm               1       52     236  sstunted         
6 months    EE               PAKISTAN                       [48-50) cm           0       43     236  sstunted         
6 months    EE               PAKISTAN                       [48-50) cm           1        1     236  sstunted         
6 months    GMS-Nepal        NEPAL                          >=50 cm              0       87     563  sstunted         
6 months    GMS-Nepal        NEPAL                          >=50 cm              1        0     563  sstunted         
6 months    GMS-Nepal        NEPAL                          <48 cm               0      285     563  sstunted         
6 months    GMS-Nepal        NEPAL                          <48 cm               1       20     563  sstunted         
6 months    GMS-Nepal        NEPAL                          [48-50) cm           0      170     563  sstunted         
6 months    GMS-Nepal        NEPAL                          [48-50) cm           1        1     563  sstunted         
6 months    IRC              INDIA                          >=50 cm              0      140     389  sstunted         
6 months    IRC              INDIA                          >=50 cm              1        2     389  sstunted         
6 months    IRC              INDIA                          <48 cm               0       91     389  sstunted         
6 months    IRC              INDIA                          <48 cm               1       18     389  sstunted         
6 months    IRC              INDIA                          [48-50) cm           0      130     389  sstunted         
6 months    IRC              INDIA                          [48-50) cm           1        8     389  sstunted         
6 months    JiVitA-3         BANGLADESH                     >=50 cm              0      804   13924  sstunted         
6 months    JiVitA-3         BANGLADESH                     >=50 cm              1        3   13924  sstunted         
6 months    JiVitA-3         BANGLADESH                     <48 cm               0     9022   13924  sstunted         
6 months    JiVitA-3         BANGLADESH                     <48 cm               1      813   13924  sstunted         
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           0     3265   13924  sstunted         
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           1       17   13924  sstunted         
6 months    JiVitA-4         BANGLADESH                     >=50 cm              0     1073    4020  sstunted         
6 months    JiVitA-4         BANGLADESH                     >=50 cm              1       28    4020  sstunted         
6 months    JiVitA-4         BANGLADESH                     <48 cm               0     1750    4020  sstunted         
6 months    JiVitA-4         BANGLADESH                     <48 cm               1      173    4020  sstunted         
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           0      982    4020  sstunted         
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           1       14    4020  sstunted         
6 months    Keneba           GAMBIA                         >=50 cm              0      666    1347  sstunted         
6 months    Keneba           GAMBIA                         >=50 cm              1       11    1347  sstunted         
6 months    Keneba           GAMBIA                         <48 cm               0      219    1347  sstunted         
6 months    Keneba           GAMBIA                         <48 cm               1       15    1347  sstunted         
6 months    Keneba           GAMBIA                         [48-50) cm           0      428    1347  sstunted         
6 months    Keneba           GAMBIA                         [48-50) cm           1        8    1347  sstunted         
6 months    MAL-ED           BANGLADESH                     >=50 cm              0       35     211  sstunted         
6 months    MAL-ED           BANGLADESH                     >=50 cm              1        0     211  sstunted         
6 months    MAL-ED           BANGLADESH                     <48 cm               0       94     211  sstunted         
6 months    MAL-ED           BANGLADESH                     <48 cm               1        7     211  sstunted         
6 months    MAL-ED           BANGLADESH                     [48-50) cm           0       75     211  sstunted         
6 months    MAL-ED           BANGLADESH                     [48-50) cm           1        0     211  sstunted         
6 months    MAL-ED           BRAZIL                         >=50 cm              0       21      59  sstunted         
6 months    MAL-ED           BRAZIL                         >=50 cm              1        0      59  sstunted         
6 months    MAL-ED           BRAZIL                         <48 cm               0       16      59  sstunted         
6 months    MAL-ED           BRAZIL                         <48 cm               1        0      59  sstunted         
6 months    MAL-ED           BRAZIL                         [48-50) cm           0       22      59  sstunted         
6 months    MAL-ED           BRAZIL                         [48-50) cm           1        0      59  sstunted         
6 months    MAL-ED           INDIA                          >=50 cm              0        8      41  sstunted         
6 months    MAL-ED           INDIA                          >=50 cm              1        0      41  sstunted         
6 months    MAL-ED           INDIA                          <48 cm               0       19      41  sstunted         
6 months    MAL-ED           INDIA                          <48 cm               1        1      41  sstunted         
6 months    MAL-ED           INDIA                          [48-50) cm           0       13      41  sstunted         
6 months    MAL-ED           INDIA                          [48-50) cm           1        0      41  sstunted         
6 months    MAL-ED           NEPAL                          >=50 cm              0        7      26  sstunted         
6 months    MAL-ED           NEPAL                          >=50 cm              1        0      26  sstunted         
6 months    MAL-ED           NEPAL                          <48 cm               0       11      26  sstunted         
6 months    MAL-ED           NEPAL                          <48 cm               1        0      26  sstunted         
6 months    MAL-ED           NEPAL                          [48-50) cm           0        8      26  sstunted         
6 months    MAL-ED           NEPAL                          [48-50) cm           1        0      26  sstunted         
6 months    MAL-ED           PERU                           >=50 cm              0       38     215  sstunted         
6 months    MAL-ED           PERU                           >=50 cm              1        0     215  sstunted         
6 months    MAL-ED           PERU                           <48 cm               0       82     215  sstunted         
6 months    MAL-ED           PERU                           <48 cm               1        6     215  sstunted         
6 months    MAL-ED           PERU                           [48-50) cm           0       88     215  sstunted         
6 months    MAL-ED           PERU                           [48-50) cm           1        1     215  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              0       29      93  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              1        0      93  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               0       21      93  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               1        3      93  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           0       40      93  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           1        0      93  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       19     118  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0     118  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               0       36     118  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               1        5     118  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       58     118  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        0     118  sstunted         
6 months    NIH-Birth        BANGLADESH                     >=50 cm              0      104     518  sstunted         
6 months    NIH-Birth        BANGLADESH                     >=50 cm              1        2     518  sstunted         
6 months    NIH-Birth        BANGLADESH                     <48 cm               0      181     518  sstunted         
6 months    NIH-Birth        BANGLADESH                     <48 cm               1       29     518  sstunted         
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           0      198     518  sstunted         
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           1        4     518  sstunted         
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              0      164     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              1        0     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     <48 cm               0      253     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     <48 cm               1       17     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           0      275     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           1        6     715  sstunted         
6 months    PROBIT           BELARUS                        >=50 cm              0    14170   15760  sstunted         
6 months    PROBIT           BELARUS                        >=50 cm              1      125   15760  sstunted         
6 months    PROBIT           BELARUS                        <48 cm               0      158   15760  sstunted         
6 months    PROBIT           BELARUS                        <48 cm               1       14   15760  sstunted         
6 months    PROBIT           BELARUS                        [48-50) cm           0     1255   15760  sstunted         
6 months    PROBIT           BELARUS                        [48-50) cm           1       38   15760  sstunted         
6 months    PROVIDE          BANGLADESH                     >=50 cm              0      143     604  sstunted         
6 months    PROVIDE          BANGLADESH                     >=50 cm              1        0     604  sstunted         
6 months    PROVIDE          BANGLADESH                     <48 cm               0      202     604  sstunted         
6 months    PROVIDE          BANGLADESH                     <48 cm               1       11     604  sstunted         
6 months    PROVIDE          BANGLADESH                     [48-50) cm           0      245     604  sstunted         
6 months    PROVIDE          BANGLADESH                     [48-50) cm           1        3     604  sstunted         
6 months    ResPak           PAKISTAN                       >=50 cm              0        6      34  sstunted         
6 months    ResPak           PAKISTAN                       >=50 cm              1        2      34  sstunted         
6 months    ResPak           PAKISTAN                       <48 cm               0       10      34  sstunted         
6 months    ResPak           PAKISTAN                       <48 cm               1        6      34  sstunted         
6 months    ResPak           PAKISTAN                       [48-50) cm           0        9      34  sstunted         
6 months    ResPak           PAKISTAN                       [48-50) cm           1        1      34  sstunted         
6 months    SAS-CompFeed     INDIA                          >=50 cm              0      191    1324  sstunted         
6 months    SAS-CompFeed     INDIA                          >=50 cm              1        5    1324  sstunted         
6 months    SAS-CompFeed     INDIA                          <48 cm               0      600    1324  sstunted         
6 months    SAS-CompFeed     INDIA                          <48 cm               1      109    1324  sstunted         
6 months    SAS-CompFeed     INDIA                          [48-50) cm           0      407    1324  sstunted         
6 months    SAS-CompFeed     INDIA                          [48-50) cm           1       12    1324  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              0     2502    8577  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              1       36    8577  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               0     2486    8577  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               1      194    8577  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           0     3242    8577  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           1      117    8577  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              0       14     106  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              1        2     106  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               0       32     106  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               1       18     106  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           0       28     106  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           1       12     106  sstunted         
24 months   CMIN             BANGLADESH                     >=50 cm              0        0      11  sstunted         
24 months   CMIN             BANGLADESH                     >=50 cm              1        0      11  sstunted         
24 months   CMIN             BANGLADESH                     <48 cm               0        2      11  sstunted         
24 months   CMIN             BANGLADESH                     <48 cm               1        4      11  sstunted         
24 months   CMIN             BANGLADESH                     [48-50) cm           0        5      11  sstunted         
24 months   CMIN             BANGLADESH                     [48-50) cm           1        0      11  sstunted         
24 months   COHORTS          GUATEMALA                      >=50 cm              0      180     560  sstunted         
24 months   COHORTS          GUATEMALA                      >=50 cm              1       83     560  sstunted         
24 months   COHORTS          GUATEMALA                      <48 cm               0       40     560  sstunted         
24 months   COHORTS          GUATEMALA                      <48 cm               1       80     560  sstunted         
24 months   COHORTS          GUATEMALA                      [48-50) cm           0       78     560  sstunted         
24 months   COHORTS          GUATEMALA                      [48-50) cm           1       99     560  sstunted         
24 months   COHORTS          INDIA                          >=50 cm              0      973    4758  sstunted         
24 months   COHORTS          INDIA                          >=50 cm              1       74    4758  sstunted         
24 months   COHORTS          INDIA                          <48 cm               0     1215    4758  sstunted         
24 months   COHORTS          INDIA                          <48 cm               1      719    4758  sstunted         
24 months   COHORTS          INDIA                          [48-50) cm           0     1474    4758  sstunted         
24 months   COHORTS          INDIA                          [48-50) cm           1      303    4758  sstunted         
24 months   COHORTS          PHILIPPINES                    >=50 cm              0      752    2442  sstunted         
24 months   COHORTS          PHILIPPINES                    >=50 cm              1      145    2442  sstunted         
24 months   COHORTS          PHILIPPINES                    <48 cm               0      329    2442  sstunted         
24 months   COHORTS          PHILIPPINES                    <48 cm               1      275    2442  sstunted         
24 months   COHORTS          PHILIPPINES                    [48-50) cm           0      655    2442  sstunted         
24 months   COHORTS          PHILIPPINES                    [48-50) cm           1      286    2442  sstunted         
24 months   CONTENT          PERU                           >=50 cm              0        1       2  sstunted         
24 months   CONTENT          PERU                           >=50 cm              1        0       2  sstunted         
24 months   CONTENT          PERU                           <48 cm               0        1       2  sstunted         
24 months   CONTENT          PERU                           <48 cm               1        0       2  sstunted         
24 months   CONTENT          PERU                           [48-50) cm           0        0       2  sstunted         
24 months   CONTENT          PERU                           [48-50) cm           1        0       2  sstunted         
24 months   EE               PAKISTAN                       >=50 cm              0       10     106  sstunted         
24 months   EE               PAKISTAN                       >=50 cm              1        0     106  sstunted         
24 months   EE               PAKISTAN                       <48 cm               0       44     106  sstunted         
24 months   EE               PAKISTAN                       <48 cm               1       30     106  sstunted         
24 months   EE               PAKISTAN                       [48-50) cm           0       13     106  sstunted         
24 months   EE               PAKISTAN                       [48-50) cm           1        9     106  sstunted         
24 months   GMS-Nepal        NEPAL                          >=50 cm              0       72     487  sstunted         
24 months   GMS-Nepal        NEPAL                          >=50 cm              1        4     487  sstunted         
24 months   GMS-Nepal        NEPAL                          <48 cm               0      213     487  sstunted         
24 months   GMS-Nepal        NEPAL                          <48 cm               1       42     487  sstunted         
24 months   GMS-Nepal        NEPAL                          [48-50) cm           0      149     487  sstunted         
24 months   GMS-Nepal        NEPAL                          [48-50) cm           1        7     487  sstunted         
24 months   IRC              INDIA                          >=50 cm              0      130     390  sstunted         
24 months   IRC              INDIA                          >=50 cm              1       12     390  sstunted         
24 months   IRC              INDIA                          <48 cm               0       91     390  sstunted         
24 months   IRC              INDIA                          <48 cm               1       19     390  sstunted         
24 months   IRC              INDIA                          [48-50) cm           0      130     390  sstunted         
24 months   IRC              INDIA                          [48-50) cm           1        8     390  sstunted         
24 months   JiVitA-3         BANGLADESH                     >=50 cm              0      389    7184  sstunted         
24 months   JiVitA-3         BANGLADESH                     >=50 cm              1        6    7184  sstunted         
24 months   JiVitA-3         BANGLADESH                     <48 cm               0     4002    7184  sstunted         
24 months   JiVitA-3         BANGLADESH                     <48 cm               1     1073    7184  sstunted         
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           0     1650    7184  sstunted         
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           1       64    7184  sstunted         
24 months   JiVitA-4         BANGLADESH                     >=50 cm              0     1030    3987  sstunted         
24 months   JiVitA-4         BANGLADESH                     >=50 cm              1       47    3987  sstunted         
24 months   JiVitA-4         BANGLADESH                     <48 cm               0     1671    3987  sstunted         
24 months   JiVitA-4         BANGLADESH                     <48 cm               1      273    3987  sstunted         
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           0      914    3987  sstunted         
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           1       52    3987  sstunted         
24 months   Keneba           GAMBIA                         >=50 cm              0      514    1065  sstunted         
24 months   Keneba           GAMBIA                         >=50 cm              1       21    1065  sstunted         
24 months   Keneba           GAMBIA                         <48 cm               0      172    1065  sstunted         
24 months   Keneba           GAMBIA                         <48 cm               1       24    1065  sstunted         
24 months   Keneba           GAMBIA                         [48-50) cm           0      296    1065  sstunted         
24 months   Keneba           GAMBIA                         [48-50) cm           1       38    1065  sstunted         
24 months   MAL-ED           BANGLADESH                     >=50 cm              0       34     187  sstunted         
24 months   MAL-ED           BANGLADESH                     >=50 cm              1        1     187  sstunted         
24 months   MAL-ED           BANGLADESH                     <48 cm               0       66     187  sstunted         
24 months   MAL-ED           BANGLADESH                     <48 cm               1       17     187  sstunted         
24 months   MAL-ED           BANGLADESH                     [48-50) cm           0       65     187  sstunted         
24 months   MAL-ED           BANGLADESH                     [48-50) cm           1        4     187  sstunted         
24 months   MAL-ED           BRAZIL                         >=50 cm              0       17      42  sstunted         
24 months   MAL-ED           BRAZIL                         >=50 cm              1        0      42  sstunted         
24 months   MAL-ED           BRAZIL                         <48 cm               0       11      42  sstunted         
24 months   MAL-ED           BRAZIL                         <48 cm               1        0      42  sstunted         
24 months   MAL-ED           BRAZIL                         [48-50) cm           0       14      42  sstunted         
24 months   MAL-ED           BRAZIL                         [48-50) cm           1        0      42  sstunted         
24 months   MAL-ED           INDIA                          >=50 cm              0        6      39  sstunted         
24 months   MAL-ED           INDIA                          >=50 cm              1        0      39  sstunted         
24 months   MAL-ED           INDIA                          <48 cm               0       13      39  sstunted         
24 months   MAL-ED           INDIA                          <48 cm               1        7      39  sstunted         
24 months   MAL-ED           INDIA                          [48-50) cm           0       12      39  sstunted         
24 months   MAL-ED           INDIA                          [48-50) cm           1        1      39  sstunted         
24 months   MAL-ED           NEPAL                          >=50 cm              0        7      26  sstunted         
24 months   MAL-ED           NEPAL                          >=50 cm              1        0      26  sstunted         
24 months   MAL-ED           NEPAL                          <48 cm               0       11      26  sstunted         
24 months   MAL-ED           NEPAL                          <48 cm               1        0      26  sstunted         
24 months   MAL-ED           NEPAL                          [48-50) cm           0        8      26  sstunted         
24 months   MAL-ED           NEPAL                          [48-50) cm           1        0      26  sstunted         
24 months   MAL-ED           PERU                           >=50 cm              0       27     160  sstunted         
24 months   MAL-ED           PERU                           >=50 cm              1        1     160  sstunted         
24 months   MAL-ED           PERU                           <48 cm               0       61     160  sstunted         
24 months   MAL-ED           PERU                           <48 cm               1       10     160  sstunted         
24 months   MAL-ED           PERU                           [48-50) cm           0       61     160  sstunted         
24 months   MAL-ED           PERU                           [48-50) cm           1        0     160  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              0       26      91  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              1        1      91  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               0       21      91  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               1        3      91  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           0       35      91  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           1        5      91  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       15     104  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        2     104  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               0       24     104  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               1       12     104  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       38     104  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1       13     104  sstunted         
24 months   NIH-Birth        BANGLADESH                     >=50 cm              0       82     414  sstunted         
24 months   NIH-Birth        BANGLADESH                     >=50 cm              1        7     414  sstunted         
24 months   NIH-Birth        BANGLADESH                     <48 cm               0      103     414  sstunted         
24 months   NIH-Birth        BANGLADESH                     <48 cm               1       63     414  sstunted         
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           0      135     414  sstunted         
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           1       24     414  sstunted         
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              0      128     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              1        0     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     <48 cm               0      172     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     <48 cm               1       28     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           0      178     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           1        8     514  sstunted         
24 months   PROBIT           BELARUS                        >=50 cm              0     3631    4035  sstunted         
24 months   PROBIT           BELARUS                        >=50 cm              1       52    4035  sstunted         
24 months   PROBIT           BELARUS                        <48 cm               0       41    4035  sstunted         
24 months   PROBIT           BELARUS                        <48 cm               1        3    4035  sstunted         
24 months   PROBIT           BELARUS                        [48-50) cm           0      298    4035  sstunted         
24 months   PROBIT           BELARUS                        [48-50) cm           1       10    4035  sstunted         
24 months   PROVIDE          BANGLADESH                     >=50 cm              0      137     578  sstunted         
24 months   PROVIDE          BANGLADESH                     >=50 cm              1        2     578  sstunted         
24 months   PROVIDE          BANGLADESH                     <48 cm               0      165     578  sstunted         
24 months   PROVIDE          BANGLADESH                     <48 cm               1       41     578  sstunted         
24 months   PROVIDE          BANGLADESH                     [48-50) cm           0      224     578  sstunted         
24 months   PROVIDE          BANGLADESH                     [48-50) cm           1        9     578  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              0      296    1608  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              1       16    1608  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               0      599    1608  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               1      112    1608  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           0      539    1608  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           1       46    1608  sstunted         


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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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

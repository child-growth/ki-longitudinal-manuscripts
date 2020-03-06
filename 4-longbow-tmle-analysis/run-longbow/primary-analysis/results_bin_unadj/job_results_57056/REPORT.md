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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid          country                        birthlen      ever_swasted   n_cell       n
----------------------------  ---------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          >=50 cm                  0       13     104
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          >=50 cm                  1        3     104
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          <48 cm                   0       36     104
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          <48 cm                   1       12     104
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          [48-50) cm               0       34     104
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          [48-50) cm               1        6     104
0-24 months (no birth wast)   CMIN             BANGLADESH                     >=50 cm                  0        1      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     >=50 cm                  1        0      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     <48 cm                   0        8      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     <48 cm                   1        0      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     [48-50) cm               0        8      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     [48-50) cm               1        0      17
0-24 months (no birth wast)   COHORTS          GUATEMALA                      >=50 cm                  0      418     821
0-24 months (no birth wast)   COHORTS          GUATEMALA                      >=50 cm                  1        2     821
0-24 months (no birth wast)   COHORTS          GUATEMALA                      <48 cm                   0      149     821
0-24 months (no birth wast)   COHORTS          GUATEMALA                      <48 cm                   1        6     821
0-24 months (no birth wast)   COHORTS          GUATEMALA                      [48-50) cm               0      243     821
0-24 months (no birth wast)   COHORTS          GUATEMALA                      [48-50) cm               1        3     821
0-24 months (no birth wast)   COHORTS          INDIA                          >=50 cm                  0     1349    6400
0-24 months (no birth wast)   COHORTS          INDIA                          >=50 cm                  1       40    6400
0-24 months (no birth wast)   COHORTS          INDIA                          <48 cm                   0     2473    6400
0-24 months (no birth wast)   COHORTS          INDIA                          <48 cm                   1      171    6400
0-24 months (no birth wast)   COHORTS          INDIA                          [48-50) cm               0     2249    6400
0-24 months (no birth wast)   COHORTS          INDIA                          [48-50) cm               1      118    6400
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    >=50 cm                  0     1044    3011
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    >=50 cm                  1       77    3011
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    <48 cm                   0      674    3011
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    <48 cm                   1       66    3011
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    [48-50) cm               0     1044    3011
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    [48-50) cm               1      106    3011
0-24 months (no birth wast)   CONTENT          PERU                           >=50 cm                  0        1       2
0-24 months (no birth wast)   CONTENT          PERU                           >=50 cm                  1        0       2
0-24 months (no birth wast)   CONTENT          PERU                           <48 cm                   0        1       2
0-24 months (no birth wast)   CONTENT          PERU                           <48 cm                   1        0       2
0-24 months (no birth wast)   CONTENT          PERU                           [48-50) cm               0        0       2
0-24 months (no birth wast)   CONTENT          PERU                           [48-50) cm               1        0       2
0-24 months (no birth wast)   EE               PAKISTAN                       >=50 cm                  0       19     240
0-24 months (no birth wast)   EE               PAKISTAN                       >=50 cm                  1        5     240
0-24 months (no birth wast)   EE               PAKISTAN                       <48 cm                   0      128     240
0-24 months (no birth wast)   EE               PAKISTAN                       <48 cm                   1       34     240
0-24 months (no birth wast)   EE               PAKISTAN                       [48-50) cm               0       49     240
0-24 months (no birth wast)   EE               PAKISTAN                       [48-50) cm               1        5     240
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          >=50 cm                  0       93     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          >=50 cm                  1       15     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          <48 cm                   0      278     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          <48 cm                   1       72     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          [48-50) cm               0      157     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          [48-50) cm               1       44     659
0-24 months (no birth wast)   IRC              INDIA                          >=50 cm                  0      114     390
0-24 months (no birth wast)   IRC              INDIA                          >=50 cm                  1       28     390
0-24 months (no birth wast)   IRC              INDIA                          <48 cm                   0       91     390
0-24 months (no birth wast)   IRC              INDIA                          <48 cm                   1       20     390
0-24 months (no birth wast)   IRC              INDIA                          [48-50) cm               0      110     390
0-24 months (no birth wast)   IRC              INDIA                          [48-50) cm               1       27     390
0-24 months (no birth wast)   Keneba           GAMBIA                         >=50 cm                  0      658    1547
0-24 months (no birth wast)   Keneba           GAMBIA                         >=50 cm                  1      101    1547
0-24 months (no birth wast)   Keneba           GAMBIA                         <48 cm                   0      247    1547
0-24 months (no birth wast)   Keneba           GAMBIA                         <48 cm                   1       46    1547
0-24 months (no birth wast)   Keneba           GAMBIA                         [48-50) cm               0      416    1547
0-24 months (no birth wast)   Keneba           GAMBIA                         [48-50) cm               1       79    1547
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     >=50 cm                  0       36     229
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     >=50 cm                  1        3     229
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     <48 cm                   0      106     229
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     <48 cm                   1        5     229
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     [48-50) cm               0       75     229
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     [48-50) cm               1        4     229
0-24 months (no birth wast)   MAL-ED           BRAZIL                         >=50 cm                  0       29      65
0-24 months (no birth wast)   MAL-ED           BRAZIL                         >=50 cm                  1        1      65
0-24 months (no birth wast)   MAL-ED           BRAZIL                         <48 cm                   0       17      65
0-24 months (no birth wast)   MAL-ED           BRAZIL                         <48 cm                   1        0      65
0-24 months (no birth wast)   MAL-ED           BRAZIL                         [48-50) cm               0       18      65
0-24 months (no birth wast)   MAL-ED           BRAZIL                         [48-50) cm               1        0      65
0-24 months (no birth wast)   MAL-ED           INDIA                          >=50 cm                  0        8      47
0-24 months (no birth wast)   MAL-ED           INDIA                          >=50 cm                  1        1      47
0-24 months (no birth wast)   MAL-ED           INDIA                          <48 cm                   0       19      47
0-24 months (no birth wast)   MAL-ED           INDIA                          <48 cm                   1        1      47
0-24 months (no birth wast)   MAL-ED           INDIA                          [48-50) cm               0       16      47
0-24 months (no birth wast)   MAL-ED           INDIA                          [48-50) cm               1        2      47
0-24 months (no birth wast)   MAL-ED           NEPAL                          >=50 cm                  0        8      27
0-24 months (no birth wast)   MAL-ED           NEPAL                          >=50 cm                  1        0      27
0-24 months (no birth wast)   MAL-ED           NEPAL                          <48 cm                   0       12      27
0-24 months (no birth wast)   MAL-ED           NEPAL                          <48 cm                   1        0      27
0-24 months (no birth wast)   MAL-ED           NEPAL                          [48-50) cm               0        7      27
0-24 months (no birth wast)   MAL-ED           NEPAL                          [48-50) cm               1        0      27
0-24 months (no birth wast)   MAL-ED           PERU                           >=50 cm                  0       51     233
0-24 months (no birth wast)   MAL-ED           PERU                           >=50 cm                  1        1     233
0-24 months (no birth wast)   MAL-ED           PERU                           <48 cm                   0       87     233
0-24 months (no birth wast)   MAL-ED           PERU                           <48 cm                   1        1     233
0-24 months (no birth wast)   MAL-ED           PERU                           [48-50) cm               0       91     233
0-24 months (no birth wast)   MAL-ED           PERU                           [48-50) cm               1        2     233
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   >=50 cm                  0       41     119
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   >=50 cm                  1        1     119
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   <48 cm                   0       28     119
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   <48 cm                   1        3     119
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   [48-50) cm               0       41     119
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   [48-50) cm               1        5     119
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       32     124
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        0     124
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       38     124
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        3     124
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       49     124
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        2     124
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     >=50 cm                  0      120     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     >=50 cm                  1       10     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     <48 cm                   0      204     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     <48 cm                   1       24     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     [48-50) cm               0      204     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     [48-50) cm               1       19     581
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     >=50 cm                  0      168     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     >=50 cm                  1        0     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     <48 cm                   0      280     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     <48 cm                   1       10     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     [48-50) cm               0      286     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     [48-50) cm               1       10     754
0-24 months (no birth wast)   PROBIT           BELARUS                        >=50 cm                  0    15120   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        >=50 cm                  1      177   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        <48 cm                   0      186   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        <48 cm                   1        3   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        [48-50) cm               0     1369   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        [48-50) cm               1       24   16879
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     >=50 cm                  0      164     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     >=50 cm                  1        2     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     <48 cm                   0      230     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     <48 cm                   1        9     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     [48-50) cm               0      274     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     [48-50) cm               1        8     687
0-24 months (no birth wast)   ResPak           PAKISTAN                       >=50 cm                  0       11      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       >=50 cm                  1        1      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       <48 cm                   0       15      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       <48 cm                   1        0      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       [48-50) cm               0       12      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       [48-50) cm               1        2      41
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          >=50 cm                  0      204    1489
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          >=50 cm                  1       15    1489
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          <48 cm                   0      678    1489
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          <48 cm                   1      117    1489
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          [48-50) cm               0      437    1489
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          [48-50) cm               1       38    1489
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3885   13501
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       >=50 cm                  1      103   13501
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       <48 cm                   0     4106   13501
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       <48 cm                   1      179   13501
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       [48-50) cm               0     5034   13501
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       [48-50) cm               1      194   13501
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          >=50 cm                  0       12     101
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          >=50 cm                  1        3     101
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          <48 cm                   0       38     101
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          <48 cm                   1        8     101
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          [48-50) cm               0       35     101
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          [48-50) cm               1        5     101
0-6 months (no birth wast)    CMIN             BANGLADESH                     >=50 cm                  0        1      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     >=50 cm                  1        0      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     <48 cm                   0        8      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     <48 cm                   1        0      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     [48-50) cm               0        8      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     [48-50) cm               1        0      17
0-6 months (no birth wast)    COHORTS          GUATEMALA                      >=50 cm                  0      405     793
0-6 months (no birth wast)    COHORTS          GUATEMALA                      >=50 cm                  1        0     793
0-6 months (no birth wast)    COHORTS          GUATEMALA                      <48 cm                   0      150     793
0-6 months (no birth wast)    COHORTS          GUATEMALA                      <48 cm                   1        1     793
0-6 months (no birth wast)    COHORTS          GUATEMALA                      [48-50) cm               0      236     793
0-6 months (no birth wast)    COHORTS          GUATEMALA                      [48-50) cm               1        1     793
0-6 months (no birth wast)    COHORTS          INDIA                          >=50 cm                  0     1279    6052
0-6 months (no birth wast)    COHORTS          INDIA                          >=50 cm                  1       17    6052
0-6 months (no birth wast)    COHORTS          INDIA                          <48 cm                   0     2457    6052
0-6 months (no birth wast)    COHORTS          INDIA                          <48 cm                   1       49    6052
0-6 months (no birth wast)    COHORTS          INDIA                          [48-50) cm               0     2198    6052
0-6 months (no birth wast)    COHORTS          INDIA                          [48-50) cm               1       52    6052
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    >=50 cm                  0     1086    2990
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    >=50 cm                  1       27    2990
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    <48 cm                   0      723    2990
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    <48 cm                   1       12    2990
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    [48-50) cm               0     1115    2990
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    [48-50) cm               1       27    2990
0-6 months (no birth wast)    CONTENT          PERU                           >=50 cm                  0        1       2
0-6 months (no birth wast)    CONTENT          PERU                           >=50 cm                  1        0       2
0-6 months (no birth wast)    CONTENT          PERU                           <48 cm                   0        1       2
0-6 months (no birth wast)    CONTENT          PERU                           <48 cm                   1        0       2
0-6 months (no birth wast)    CONTENT          PERU                           [48-50) cm               0        0       2
0-6 months (no birth wast)    CONTENT          PERU                           [48-50) cm               1        0       2
0-6 months (no birth wast)    EE               PAKISTAN                       >=50 cm                  0       22     238
0-6 months (no birth wast)    EE               PAKISTAN                       >=50 cm                  1        2     238
0-6 months (no birth wast)    EE               PAKISTAN                       <48 cm                   0      153     238
0-6 months (no birth wast)    EE               PAKISTAN                       <48 cm                   1        8     238
0-6 months (no birth wast)    EE               PAKISTAN                       [48-50) cm               0       53     238
0-6 months (no birth wast)    EE               PAKISTAN                       [48-50) cm               1        0     238
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          >=50 cm                  0       99     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          >=50 cm                  1        4     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          <48 cm                   0      328     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          <48 cm                   1       15     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          [48-50) cm               0      183     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          [48-50) cm               1       12     641
0-6 months (no birth wast)    IRC              INDIA                          >=50 cm                  0      111     372
0-6 months (no birth wast)    IRC              INDIA                          >=50 cm                  1       20     372
0-6 months (no birth wast)    IRC              INDIA                          <48 cm                   0       97     372
0-6 months (no birth wast)    IRC              INDIA                          <48 cm                   1       12     372
0-6 months (no birth wast)    IRC              INDIA                          [48-50) cm               0      107     372
0-6 months (no birth wast)    IRC              INDIA                          [48-50) cm               1       25     372
0-6 months (no birth wast)    Keneba           GAMBIA                         >=50 cm                  0      726    1533
0-6 months (no birth wast)    Keneba           GAMBIA                         >=50 cm                  1       25    1533
0-6 months (no birth wast)    Keneba           GAMBIA                         <48 cm                   0      278    1533
0-6 months (no birth wast)    Keneba           GAMBIA                         <48 cm                   1       14    1533
0-6 months (no birth wast)    Keneba           GAMBIA                         [48-50) cm               0      463    1533
0-6 months (no birth wast)    Keneba           GAMBIA                         [48-50) cm               1       27    1533
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     >=50 cm                  0       36     228
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     >=50 cm                  1        3     228
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     <48 cm                   0      109     228
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     <48 cm                   1        1     228
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     [48-50) cm               0       76     228
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     [48-50) cm               1        3     228
0-6 months (no birth wast)    MAL-ED           BRAZIL                         >=50 cm                  0       29      65
0-6 months (no birth wast)    MAL-ED           BRAZIL                         >=50 cm                  1        1      65
0-6 months (no birth wast)    MAL-ED           BRAZIL                         <48 cm                   0       17      65
0-6 months (no birth wast)    MAL-ED           BRAZIL                         <48 cm                   1        0      65
0-6 months (no birth wast)    MAL-ED           BRAZIL                         [48-50) cm               0       18      65
0-6 months (no birth wast)    MAL-ED           BRAZIL                         [48-50) cm               1        0      65
0-6 months (no birth wast)    MAL-ED           INDIA                          >=50 cm                  0        9      47
0-6 months (no birth wast)    MAL-ED           INDIA                          >=50 cm                  1        0      47
0-6 months (no birth wast)    MAL-ED           INDIA                          <48 cm                   0       20      47
0-6 months (no birth wast)    MAL-ED           INDIA                          <48 cm                   1        0      47
0-6 months (no birth wast)    MAL-ED           INDIA                          [48-50) cm               0       16      47
0-6 months (no birth wast)    MAL-ED           INDIA                          [48-50) cm               1        2      47
0-6 months (no birth wast)    MAL-ED           NEPAL                          >=50 cm                  0        8      27
0-6 months (no birth wast)    MAL-ED           NEPAL                          >=50 cm                  1        0      27
0-6 months (no birth wast)    MAL-ED           NEPAL                          <48 cm                   0       12      27
0-6 months (no birth wast)    MAL-ED           NEPAL                          <48 cm                   1        0      27
0-6 months (no birth wast)    MAL-ED           NEPAL                          [48-50) cm               0        7      27
0-6 months (no birth wast)    MAL-ED           NEPAL                          [48-50) cm               1        0      27
0-6 months (no birth wast)    MAL-ED           PERU                           >=50 cm                  0       51     233
0-6 months (no birth wast)    MAL-ED           PERU                           >=50 cm                  1        1     233
0-6 months (no birth wast)    MAL-ED           PERU                           <48 cm                   0       88     233
0-6 months (no birth wast)    MAL-ED           PERU                           <48 cm                   1        0     233
0-6 months (no birth wast)    MAL-ED           PERU                           [48-50) cm               0       93     233
0-6 months (no birth wast)    MAL-ED           PERU                           [48-50) cm               1        0     233
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   >=50 cm                  0       41     118
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   >=50 cm                  1        1     118
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   <48 cm                   0       30     118
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   <48 cm                   1        1     118
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   [48-50) cm               0       45     118
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   [48-50) cm               1        0     118
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       32     124
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        0     124
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       40     124
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        1     124
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       50     124
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        1     124
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     >=50 cm                  0      126     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     >=50 cm                  1        2     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     <48 cm                   0      217     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     <48 cm                   1        1     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     [48-50) cm               0      213     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     [48-50) cm               1        5     564
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     >=50 cm                  0      167     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     >=50 cm                  1        0     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     <48 cm                   0      288     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     <48 cm                   1        0     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     [48-50) cm               0      293     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     [48-50) cm               1        1     749
0-6 months (no birth wast)    PROBIT           BELARUS                        >=50 cm                  0    14949   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        >=50 cm                  1      165   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        <48 cm                   0      186   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        <48 cm                   1        3   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        [48-50) cm               0     1366   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        [48-50) cm               1       24   16693
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     >=50 cm                  0      165     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     >=50 cm                  1        1     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     <48 cm                   0      235     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     <48 cm                   1        2     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     [48-50) cm               0      277     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     [48-50) cm               1        3     683
0-6 months (no birth wast)    ResPak           PAKISTAN                       >=50 cm                  0       11      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       >=50 cm                  1        1      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       <48 cm                   0       15      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       <48 cm                   1        0      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       [48-50) cm               0       13      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       [48-50) cm               1        1      41
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          >=50 cm                  0      214    1463
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          >=50 cm                  1        2    1463
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          <48 cm                   0      745    1463
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          <48 cm                   1       33    1463
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          [48-50) cm               0      458    1463
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          [48-50) cm               1       11    1463
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3875   13254
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       >=50 cm                  1       34   13254
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       <48 cm                   0     4150   13254
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       <48 cm                   1       43   13254
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       [48-50) cm               0     5097   13254
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       [48-50) cm               1       55   13254
6-24 months                   CMC-V-BCS-2002   INDIA                          >=50 cm                  0       16     106
6-24 months                   CMC-V-BCS-2002   INDIA                          >=50 cm                  1        0     106
6-24 months                   CMC-V-BCS-2002   INDIA                          <48 cm                   0       45     106
6-24 months                   CMC-V-BCS-2002   INDIA                          <48 cm                   1        5     106
6-24 months                   CMC-V-BCS-2002   INDIA                          [48-50) cm               0       39     106
6-24 months                   CMC-V-BCS-2002   INDIA                          [48-50) cm               1        1     106
6-24 months                   CMIN             BANGLADESH                     >=50 cm                  0        0      12
6-24 months                   CMIN             BANGLADESH                     >=50 cm                  1        0      12
6-24 months                   CMIN             BANGLADESH                     <48 cm                   0        6      12
6-24 months                   CMIN             BANGLADESH                     <48 cm                   1        0      12
6-24 months                   CMIN             BANGLADESH                     [48-50) cm               0        6      12
6-24 months                   CMIN             BANGLADESH                     [48-50) cm               1        0      12
6-24 months                   COHORTS          GUATEMALA                      >=50 cm                  0      360     727
6-24 months                   COHORTS          GUATEMALA                      >=50 cm                  1        2     727
6-24 months                   COHORTS          GUATEMALA                      <48 cm                   0      136     727
6-24 months                   COHORTS          GUATEMALA                      <48 cm                   1        6     727
6-24 months                   COHORTS          GUATEMALA                      [48-50) cm               0      221     727
6-24 months                   COHORTS          GUATEMALA                      [48-50) cm               1        2     727
6-24 months                   COHORTS          INDIA                          >=50 cm                  0     1319    6169
6-24 months                   COHORTS          INDIA                          >=50 cm                  1       23    6169
6-24 months                   COHORTS          INDIA                          <48 cm                   0     2407    6169
6-24 months                   COHORTS          INDIA                          <48 cm                   1      139    6169
6-24 months                   COHORTS          INDIA                          [48-50) cm               0     2210    6169
6-24 months                   COHORTS          INDIA                          [48-50) cm               1       71    6169
6-24 months                   COHORTS          PHILIPPINES                    >=50 cm                  0      986    2802
6-24 months                   COHORTS          PHILIPPINES                    >=50 cm                  1       51    2802
6-24 months                   COHORTS          PHILIPPINES                    <48 cm                   0      644    2802
6-24 months                   COHORTS          PHILIPPINES                    <48 cm                   1       55    2802
6-24 months                   COHORTS          PHILIPPINES                    [48-50) cm               0      984    2802
6-24 months                   COHORTS          PHILIPPINES                    [48-50) cm               1       82    2802
6-24 months                   CONTENT          PERU                           >=50 cm                  0        1       2
6-24 months                   CONTENT          PERU                           >=50 cm                  1        0       2
6-24 months                   CONTENT          PERU                           <48 cm                   0        1       2
6-24 months                   CONTENT          PERU                           <48 cm                   1        0       2
6-24 months                   CONTENT          PERU                           [48-50) cm               0        0       2
6-24 months                   CONTENT          PERU                           [48-50) cm               1        0       2
6-24 months                   EE               PAKISTAN                       >=50 cm                  0       21     237
6-24 months                   EE               PAKISTAN                       >=50 cm                  1        3     237
6-24 months                   EE               PAKISTAN                       <48 cm                   0      132     237
6-24 months                   EE               PAKISTAN                       <48 cm                   1       28     237
6-24 months                   EE               PAKISTAN                       [48-50) cm               0       48     237
6-24 months                   EE               PAKISTAN                       [48-50) cm               1        5     237
6-24 months                   GMS-Nepal        NEPAL                          >=50 cm                  0       87     589
6-24 months                   GMS-Nepal        NEPAL                          >=50 cm                  1       13     589
6-24 months                   GMS-Nepal        NEPAL                          <48 cm                   0      248     589
6-24 months                   GMS-Nepal        NEPAL                          <48 cm                   1       63     589
6-24 months                   GMS-Nepal        NEPAL                          [48-50) cm               0      142     589
6-24 months                   GMS-Nepal        NEPAL                          [48-50) cm               1       36     589
6-24 months                   IRC              INDIA                          >=50 cm                  0      133     391
6-24 months                   IRC              INDIA                          >=50 cm                  1        9     391
6-24 months                   IRC              INDIA                          <48 cm                   0      102     391
6-24 months                   IRC              INDIA                          <48 cm                   1        9     391
6-24 months                   IRC              INDIA                          [48-50) cm               0      133     391
6-24 months                   IRC              INDIA                          [48-50) cm               1        5     391
6-24 months                   Keneba           GAMBIA                         >=50 cm                  0      664    1487
6-24 months                   Keneba           GAMBIA                         >=50 cm                  1       79    1487
6-24 months                   Keneba           GAMBIA                         <48 cm                   0      235    1487
6-24 months                   Keneba           GAMBIA                         <48 cm                   1       33    1487
6-24 months                   Keneba           GAMBIA                         [48-50) cm               0      420    1487
6-24 months                   Keneba           GAMBIA                         [48-50) cm               1       56    1487
6-24 months                   MAL-ED           BANGLADESH                     >=50 cm                  0       39     212
6-24 months                   MAL-ED           BANGLADESH                     >=50 cm                  1        0     212
6-24 months                   MAL-ED           BANGLADESH                     <48 cm                   0       95     212
6-24 months                   MAL-ED           BANGLADESH                     <48 cm                   1        4     212
6-24 months                   MAL-ED           BANGLADESH                     [48-50) cm               0       73     212
6-24 months                   MAL-ED           BANGLADESH                     [48-50) cm               1        1     212
6-24 months                   MAL-ED           BRAZIL                         >=50 cm                  0       27      58
6-24 months                   MAL-ED           BRAZIL                         >=50 cm                  1        0      58
6-24 months                   MAL-ED           BRAZIL                         <48 cm                   0       15      58
6-24 months                   MAL-ED           BRAZIL                         <48 cm                   1        0      58
6-24 months                   MAL-ED           BRAZIL                         [48-50) cm               0       16      58
6-24 months                   MAL-ED           BRAZIL                         [48-50) cm               1        0      58
6-24 months                   MAL-ED           INDIA                          >=50 cm                  0        7      41
6-24 months                   MAL-ED           INDIA                          >=50 cm                  1        1      41
6-24 months                   MAL-ED           INDIA                          <48 cm                   0       17      41
6-24 months                   MAL-ED           INDIA                          <48 cm                   1        1      41
6-24 months                   MAL-ED           INDIA                          [48-50) cm               0       15      41
6-24 months                   MAL-ED           INDIA                          [48-50) cm               1        0      41
6-24 months                   MAL-ED           NEPAL                          >=50 cm                  0        8      26
6-24 months                   MAL-ED           NEPAL                          >=50 cm                  1        0      26
6-24 months                   MAL-ED           NEPAL                          <48 cm                   0       11      26
6-24 months                   MAL-ED           NEPAL                          <48 cm                   1        0      26
6-24 months                   MAL-ED           NEPAL                          [48-50) cm               0        7      26
6-24 months                   MAL-ED           NEPAL                          [48-50) cm               1        0      26
6-24 months                   MAL-ED           PERU                           >=50 cm                  0       48     213
6-24 months                   MAL-ED           PERU                           >=50 cm                  1        0     213
6-24 months                   MAL-ED           PERU                           <48 cm                   0       83     213
6-24 months                   MAL-ED           PERU                           <48 cm                   1        1     213
6-24 months                   MAL-ED           PERU                           [48-50) cm               0       79     213
6-24 months                   MAL-ED           PERU                           [48-50) cm               1        2     213
6-24 months                   MAL-ED           SOUTH AFRICA                   >=50 cm                  0       35      97
6-24 months                   MAL-ED           SOUTH AFRICA                   >=50 cm                  1        0      97
6-24 months                   MAL-ED           SOUTH AFRICA                   <48 cm                   0       21      97
6-24 months                   MAL-ED           SOUTH AFRICA                   <48 cm                   1        2      97
6-24 months                   MAL-ED           SOUTH AFRICA                   [48-50) cm               0       33      97
6-24 months                   MAL-ED           SOUTH AFRICA                   [48-50) cm               1        6      97
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       32     120
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        0     120
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       37     120
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        2     120
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       48     120
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        1     120
6-24 months                   NIH-Birth        BANGLADESH                     >=50 cm                  0      112     522
6-24 months                   NIH-Birth        BANGLADESH                     >=50 cm                  1        9     522
6-24 months                   NIH-Birth        BANGLADESH                     <48 cm                   0      179     522
6-24 months                   NIH-Birth        BANGLADESH                     <48 cm                   1       23     522
6-24 months                   NIH-Birth        BANGLADESH                     [48-50) cm               0      183     522
6-24 months                   NIH-Birth        BANGLADESH                     [48-50) cm               1       16     522
6-24 months                   NIH-Crypto       BANGLADESH                     >=50 cm                  0      165     730
6-24 months                   NIH-Crypto       BANGLADESH                     >=50 cm                  1        0     730
6-24 months                   NIH-Crypto       BANGLADESH                     <48 cm                   0      270     730
6-24 months                   NIH-Crypto       BANGLADESH                     <48 cm                   1       10     730
6-24 months                   NIH-Crypto       BANGLADESH                     [48-50) cm               0      275     730
6-24 months                   NIH-Crypto       BANGLADESH                     [48-50) cm               1       10     730
6-24 months                   PROBIT           BELARUS                        >=50 cm                  0    15040   16598
6-24 months                   PROBIT           BELARUS                        >=50 cm                  1       12   16598
6-24 months                   PROBIT           BELARUS                        <48 cm                   0      179   16598
6-24 months                   PROBIT           BELARUS                        <48 cm                   1        0   16598
6-24 months                   PROBIT           BELARUS                        [48-50) cm               0     1367   16598
6-24 months                   PROBIT           BELARUS                        [48-50) cm               1        0   16598
6-24 months                   PROVIDE          BANGLADESH                     >=50 cm                  0      148     615
6-24 months                   PROVIDE          BANGLADESH                     >=50 cm                  1        1     615
6-24 months                   PROVIDE          BANGLADESH                     <48 cm                   0      213     615
6-24 months                   PROVIDE          BANGLADESH                     <48 cm                   1        7     615
6-24 months                   PROVIDE          BANGLADESH                     [48-50) cm               0      241     615
6-24 months                   PROVIDE          BANGLADESH                     [48-50) cm               1        5     615
6-24 months                   ResPak           PAKISTAN                       >=50 cm                  0       11      32
6-24 months                   ResPak           PAKISTAN                       >=50 cm                  1        0      32
6-24 months                   ResPak           PAKISTAN                       <48 cm                   0       12      32
6-24 months                   ResPak           PAKISTAN                       <48 cm                   1        0      32
6-24 months                   ResPak           PAKISTAN                       [48-50) cm               0        8      32
6-24 months                   ResPak           PAKISTAN                       [48-50) cm               1        1      32
6-24 months                   SAS-CompFeed     INDIA                          >=50 cm                  0      196    1376
6-24 months                   SAS-CompFeed     INDIA                          >=50 cm                  1       14    1376
6-24 months                   SAS-CompFeed     INDIA                          <48 cm                   0      638    1376
6-24 months                   SAS-CompFeed     INDIA                          <48 cm                   1       89    1376
6-24 months                   SAS-CompFeed     INDIA                          [48-50) cm               0      411    1376
6-24 months                   SAS-CompFeed     INDIA                          [48-50) cm               1       28    1376
6-24 months                   ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3001   10690
6-24 months                   ZVITAMBO         ZIMBABWE                       >=50 cm                  1       71   10690
6-24 months                   ZVITAMBO         ZIMBABWE                       <48 cm                   0     3285   10690
6-24 months                   ZVITAMBO         ZIMBABWE                       <48 cm                   1      139   10690
6-24 months                   ZVITAMBO         ZIMBABWE                       [48-50) cm               0     4050   10690
6-24 months                   ZVITAMBO         ZIMBABWE                       [48-50) cm               1      144   10690


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN

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
![](/tmp/aeeaea0d-812c-460d-a43e-22be9f430ccf/efb4304d-ed32-44ca-a20d-a0132683f7d1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aeeaea0d-812c-460d-a43e-22be9f430ccf/efb4304d-ed32-44ca-a20d-a0132683f7d1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aeeaea0d-812c-460d-a43e-22be9f430ccf/efb4304d-ed32-44ca-a20d-a0132683f7d1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aeeaea0d-812c-460d-a43e-22be9f430ccf/efb4304d-ed32-44ca-a20d-a0132683f7d1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS        INDIA         >=50 cm              NA                0.0287977   0.0200021   0.0375933
0-24 months (no birth wast)   COHORTS        INDIA         <48 cm               NA                0.0646747   0.0552991   0.0740504
0-24 months (no birth wast)   COHORTS        INDIA         [48-50) cm           NA                0.0498521   0.0410837   0.0586205
0-24 months (no birth wast)   COHORTS        PHILIPPINES   >=50 cm              NA                0.0686887   0.0538803   0.0834970
0-24 months (no birth wast)   COHORTS        PHILIPPINES   <48 cm               NA                0.0891892   0.0686504   0.1097280
0-24 months (no birth wast)   COHORTS        PHILIPPINES   [48-50) cm           NA                0.0921739   0.0754524   0.1088955
0-24 months (no birth wast)   EE             PAKISTAN      >=50 cm              NA                0.2083333   0.0455164   0.3711503
0-24 months (no birth wast)   EE             PAKISTAN      <48 cm               NA                0.2098765   0.1470379   0.2727152
0-24 months (no birth wast)   EE             PAKISTAN      [48-50) cm           NA                0.0925926   0.0151202   0.1700650
0-24 months (no birth wast)   GMS-Nepal      NEPAL         >=50 cm              NA                0.1388889   0.0736165   0.2041612
0-24 months (no birth wast)   GMS-Nepal      NEPAL         <48 cm               NA                0.2057143   0.1633339   0.2480946
0-24 months (no birth wast)   GMS-Nepal      NEPAL         [48-50) cm           NA                0.2189055   0.1616971   0.2761139
0-24 months (no birth wast)   IRC            INDIA         >=50 cm              NA                0.1971831   0.1316585   0.2627077
0-24 months (no birth wast)   IRC            INDIA         <48 cm               NA                0.1801802   0.1085894   0.2517709
0-24 months (no birth wast)   IRC            INDIA         [48-50) cm           NA                0.1970803   0.1303838   0.2637768
0-24 months (no birth wast)   Keneba         GAMBIA        >=50 cm              NA                0.1330698   0.1088986   0.1572411
0-24 months (no birth wast)   Keneba         GAMBIA        <48 cm               NA                0.1569966   0.1153275   0.1986657
0-24 months (no birth wast)   Keneba         GAMBIA        [48-50) cm           NA                0.1595960   0.1273228   0.1918691
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    >=50 cm              NA                0.0769231   0.0310775   0.1227687
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    <48 cm               NA                0.1052632   0.0653937   0.1451326
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.0852018   0.0485279   0.1218757
0-24 months (no birth wast)   SAS-CompFeed   INDIA         >=50 cm              NA                0.0684932   0.0306007   0.1063856
0-24 months (no birth wast)   SAS-CompFeed   INDIA         <48 cm               NA                0.1471698   0.1107294   0.1836102
0-24 months (no birth wast)   SAS-CompFeed   INDIA         [48-50) cm           NA                0.0800000   0.0576654   0.1023346
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0258275   0.0209043   0.0307507
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0417736   0.0357830   0.0477643
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0371079   0.0319838   0.0422320
0-6 months (no birth wast)    COHORTS        INDIA         >=50 cm              NA                0.0131173   0.0069224   0.0193122
0-6 months (no birth wast)    COHORTS        INDIA         <48 cm               NA                0.0195531   0.0141317   0.0249745
0-6 months (no birth wast)    COHORTS        INDIA         [48-50) cm           NA                0.0231111   0.0169021   0.0293202
0-6 months (no birth wast)    COHORTS        PHILIPPINES   >=50 cm              NA                0.0242588   0.0152186   0.0332989
0-6 months (no birth wast)    COHORTS        PHILIPPINES   <48 cm               NA                0.0163265   0.0071633   0.0254898
0-6 months (no birth wast)    COHORTS        PHILIPPINES   [48-50) cm           NA                0.0236427   0.0148294   0.0324561
0-6 months (no birth wast)    IRC            INDIA         >=50 cm              NA                0.1526718   0.0909978   0.2143458
0-6 months (no birth wast)    IRC            INDIA         <48 cm               NA                0.1100917   0.0512522   0.1689313
0-6 months (no birth wast)    IRC            INDIA         [48-50) cm           NA                0.1893939   0.1224620   0.2563259
0-6 months (no birth wast)    Keneba         GAMBIA        >=50 cm              NA                0.0332889   0.0204548   0.0461231
0-6 months (no birth wast)    Keneba         GAMBIA        <48 cm               NA                0.0479452   0.0234319   0.0724585
0-6 months (no birth wast)    Keneba         GAMBIA        [48-50) cm           NA                0.0551020   0.0348920   0.0753121
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0086979   0.0057869   0.0116089
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0102552   0.0072056   0.0133047
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0106755   0.0078691   0.0134818
6-24 months                   COHORTS        INDIA         >=50 cm              NA                0.0171386   0.0101941   0.0240831
6-24 months                   COHORTS        INDIA         <48 cm               NA                0.0545954   0.0457699   0.0634210
6-24 months                   COHORTS        INDIA         [48-50) cm           NA                0.0311267   0.0239995   0.0382539
6-24 months                   COHORTS        PHILIPPINES   >=50 cm              NA                0.0491803   0.0360165   0.0623441
6-24 months                   COHORTS        PHILIPPINES   <48 cm               NA                0.0786838   0.0587205   0.0986472
6-24 months                   COHORTS        PHILIPPINES   [48-50) cm           NA                0.0769231   0.0609240   0.0929221
6-24 months                   GMS-Nepal      NEPAL         >=50 cm              NA                0.1300000   0.0640297   0.1959703
6-24 months                   GMS-Nepal      NEPAL         <48 cm               NA                0.2025723   0.1578656   0.2472790
6-24 months                   GMS-Nepal      NEPAL         [48-50) cm           NA                0.2022472   0.1431887   0.2613057
6-24 months                   IRC            INDIA         >=50 cm              NA                0.0633803   0.0232549   0.1035056
6-24 months                   IRC            INDIA         <48 cm               NA                0.0810811   0.0302369   0.1319252
6-24 months                   IRC            INDIA         [48-50) cm           NA                0.0362319   0.0050145   0.0674493
6-24 months                   Keneba         GAMBIA        >=50 cm              NA                0.1063257   0.0841535   0.1284979
6-24 months                   Keneba         GAMBIA        <48 cm               NA                0.1231343   0.0837809   0.1624878
6-24 months                   Keneba         GAMBIA        [48-50) cm           NA                0.1176471   0.0886935   0.1466006
6-24 months                   NIH-Birth      BANGLADESH    >=50 cm              NA                0.0743802   0.0275833   0.1211770
6-24 months                   NIH-Birth      BANGLADESH    <48 cm               NA                0.1138614   0.0700156   0.1577072
6-24 months                   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.0804020   0.0425865   0.1182176
6-24 months                   SAS-CompFeed   INDIA         >=50 cm              NA                0.0666667   0.0284639   0.1048695
6-24 months                   SAS-CompFeed   INDIA         <48 cm               NA                0.1224209   0.0852818   0.1595601
6-24 months                   SAS-CompFeed   INDIA         [48-50) cm           NA                0.0637813   0.0438535   0.0837091
6-24 months                   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0231120   0.0177983   0.0284257
6-24 months                   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0405958   0.0339852   0.0472064
6-24 months                   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0343348   0.0288237   0.0398458


### Parameter: E(Y)


agecat                        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS        INDIA         NA                   NA                0.0514062   0.0459957   0.0568168
0-24 months (no birth wast)   COHORTS        PHILIPPINES   NA                   NA                0.0826968   0.0728574   0.0925361
0-24 months (no birth wast)   EE             PAKISTAN      NA                   NA                0.1833333   0.1342773   0.2323893
0-24 months (no birth wast)   GMS-Nepal      NEPAL         NA                   NA                0.1987860   0.1682929   0.2292792
0-24 months (no birth wast)   IRC            INDIA         NA                   NA                0.1923077   0.1531430   0.2314724
0-24 months (no birth wast)   Keneba         GAMBIA        NA                   NA                0.1460892   0.1284833   0.1636951
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    NA                   NA                0.0912220   0.0677898   0.1146542
0-24 months (no birth wast)   SAS-CompFeed   INDIA         NA                   NA                0.1141706   0.0903032   0.1380379
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      NA                   NA                0.0352566   0.0321456   0.0383677
0-6 months (no birth wast)    COHORTS        INDIA         NA                   NA                0.0194977   0.0160139   0.0229815
0-6 months (no birth wast)    COHORTS        PHILIPPINES   NA                   NA                0.0220736   0.0168064   0.0273407
0-6 months (no birth wast)    IRC            INDIA         NA                   NA                0.1532258   0.1165727   0.1898789
0-6 months (no birth wast)    Keneba         GAMBIA        NA                   NA                0.0430528   0.0328889   0.0532168
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      NA                   NA                0.0099593   0.0082687   0.0116498
6-24 months                   COHORTS        INDIA         NA                   NA                0.0377695   0.0330119   0.0425271
6-24 months                   COHORTS        PHILIPPINES   NA                   NA                0.0670949   0.0578297   0.0763601
6-24 months                   GMS-Nepal      NEPAL         NA                   NA                0.1901528   0.1584343   0.2218713
6-24 months                   IRC            INDIA         NA                   NA                0.0588235   0.0354714   0.0821757
6-24 months                   Keneba         GAMBIA        NA                   NA                0.1129792   0.0968836   0.1290747
6-24 months                   NIH-Birth      BANGLADESH    NA                   NA                0.0919540   0.0671416   0.1167664
6-24 months                   SAS-CompFeed   INDIA         NA                   NA                0.0952035   0.0698704   0.1205365
6-24 months                   ZVITAMBO       ZIMBABWE      NA                   NA                0.0331151   0.0297229   0.0365072


### Parameter: RR


agecat                        studyid        country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS        INDIA         <48 cm               >=50 cm           2.2458302   1.6015817   3.149233
0-24 months (no birth wast)   COHORTS        INDIA         [48-50) cm           >=50 cm           1.7311153   1.2169094   2.462599
0-24 months (no birth wast)   COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS        PHILIPPINES   <48 cm               >=50 cm           1.2984556   0.9471731   1.780020
0-24 months (no birth wast)   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           1.3419085   1.0124098   1.778646
0-24 months (no birth wast)   EE             PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   EE             PAKISTAN      <48 cm               >=50 cm           1.0074074   0.4362537   2.326329
0-24 months (no birth wast)   EE             PAKISTAN      [48-50) cm           >=50 cm           0.4444444   0.1414439   1.396532
0-24 months (no birth wast)   GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.4811429   0.8866373   2.474275
0-24 months (no birth wast)   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.5761194   0.9205617   2.698518
0-24 months (no birth wast)   IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   IRC            INDIA         <48 cm               >=50 cm           0.9137709   0.5443581   1.533875
0-24 months (no birth wast)   IRC            INDIA         [48-50) cm           >=50 cm           0.9994786   0.6219992   1.606043
0-24 months (no birth wast)   Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba         GAMBIA        <48 cm               >=50 cm           1.1798060   0.8553287   1.627377
0-24 months (no birth wast)   Keneba         GAMBIA        [48-50) cm           >=50 cm           1.1993399   0.9138864   1.573955
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    <48 cm               >=50 cm           1.3684211   0.6753624   2.772698
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           1.1076233   0.5310185   2.310333
0-24 months (no birth wast)   SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.1486792   1.1303642   4.084367
0-24 months (no birth wast)   SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.1680000   0.6479979   2.105291
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           1.6174100   1.2741600   2.053129
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.4367595   1.1354301   1.818058
0-6 months (no birth wast)    COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS        INDIA         <48 cm               >=50 cm           1.4906342   0.8620467   2.577576
0-6 months (no birth wast)    COHORTS        INDIA         [48-50) cm           >=50 cm           1.7618824   1.0233090   3.033521
0-6 months (no birth wast)    COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS        PHILIPPINES   <48 cm               >=50 cm           0.6730159   0.3431161   1.320108
0-6 months (no birth wast)    COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           0.9746060   0.5753262   1.650988
0-6 months (no birth wast)    IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    IRC            INDIA         <48 cm               >=50 cm           0.7211009   0.3690116   1.409133
0-6 months (no birth wast)    IRC            INDIA         [48-50) cm           >=50 cm           1.2405303   0.7252843   2.121810
0-6 months (no birth wast)    Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba         GAMBIA        <48 cm               >=50 cm           1.4402740   0.7591817   2.732401
0-6 months (no birth wast)    Keneba         GAMBIA        [48-50) cm           >=50 cm           1.6552653   0.9722224   2.818186
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           1.1790449   0.7535223   1.844865
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.2273646   0.8019526   1.878445
6-24 months                   COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   COHORTS        INDIA         <48 cm               >=50 cm           3.1855255   2.0592980   4.927685
6-24 months                   COHORTS        INDIA         [48-50) cm           >=50 cm           1.8161752   1.1403271   2.892584
6-24 months                   COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   COHORTS        PHILIPPINES   <48 cm               >=50 cm           1.5999046   1.1064323   2.313467
6-24 months                   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           1.5641026   1.1144256   2.195227
6-24 months                   GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.5582488   0.8960008   2.709975
6-24 months                   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.5557476   0.8662977   2.793902
6-24 months                   IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   IRC            INDIA         <48 cm               >=50 cm           1.2792793   0.5247750   3.118585
6-24 months                   IRC            INDIA         [48-50) cm           >=50 cm           0.5716586   0.1962438   1.665243
6-24 months                   Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   Keneba         GAMBIA        <48 cm               >=50 cm           1.1580862   0.7906947   1.696184
6-24 months                   Keneba         GAMBIA        [48-50) cm           >=50 cm           1.1064780   0.8014037   1.527687
6-24 months                   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   NIH-Birth      BANGLADESH    <48 cm               >=50 cm           1.5308031   0.7320864   3.200931
6-24 months                   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           1.0809604   0.4927882   2.371151
6-24 months                   SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   SAS-CompFeed   INDIA         <48 cm               >=50 cm           1.8363136   0.9258878   3.641961
6-24 months                   SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.9567198   0.5702048   1.605235
6-24 months                   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           1.7564828   1.3252155   2.328098
6-24 months                   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.4855830   1.1223332   1.966401


### Parameter: PAR


agecat                        studyid        country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS        INDIA         >=50 cm              NA                 0.0226086    0.0140613   0.0311558
0-24 months (no birth wast)   COHORTS        PHILIPPINES   >=50 cm              NA                 0.0140081    0.0016462   0.0263701
0-24 months (no birth wast)   EE             PAKISTAN      >=50 cm              NA                -0.0250000   -0.1786684   0.1286684
0-24 months (no birth wast)   GMS-Nepal      NEPAL         >=50 cm              NA                 0.0598972   -0.0016972   0.1214915
0-24 months (no birth wast)   IRC            INDIA         >=50 cm              NA                -0.0048754   -0.0568448   0.0470940
0-24 months (no birth wast)   Keneba         GAMBIA        >=50 cm              NA                 0.0130194   -0.0048949   0.0309336
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.0142990   -0.0270570   0.0556549
0-24 months (no birth wast)   SAS-CompFeed   INDIA         >=50 cm              NA                 0.0456774    0.0047799   0.0865750
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0094292    0.0050023   0.0138561
0-6 months (no birth wast)    COHORTS        INDIA         >=50 cm              NA                 0.0063804    0.0005428   0.0122180
0-6 months (no birth wast)    COHORTS        PHILIPPINES   >=50 cm              NA                -0.0021852   -0.0091583   0.0047880
0-6 months (no birth wast)    IRC            INDIA         >=50 cm              NA                 0.0005541   -0.0491269   0.0502350
0-6 months (no birth wast)    Keneba         GAMBIA        >=50 cm              NA                 0.0097639   -0.0005626   0.0200904
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0012614   -0.0012553   0.0037780
6-24 months                   COHORTS        INDIA         >=50 cm              NA                 0.0206309    0.0135684   0.0276934
6-24 months                   COHORTS        PHILIPPINES   >=50 cm              NA                 0.0179146    0.0064749   0.0293543
6-24 months                   GMS-Nepal      NEPAL         >=50 cm              NA                 0.0601528   -0.0021397   0.1224453
6-24 months                   IRC            INDIA         >=50 cm              NA                -0.0045568   -0.0359562   0.0268427
6-24 months                   Keneba         GAMBIA        >=50 cm              NA                 0.0066534   -0.0094523   0.0227592
6-24 months                   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.0175739   -0.0247385   0.0598862
6-24 months                   SAS-CompFeed   INDIA         >=50 cm              NA                 0.0285368   -0.0111505   0.0682242
6-24 months                   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0100031    0.0051539   0.0148522


### Parameter: PAF


agecat                        studyid        country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS        INDIA         >=50 cm              NA                 0.4398017    0.2544759   0.5790583
0-24 months (no birth wast)   COHORTS        PHILIPPINES   >=50 cm              NA                 0.1693912    0.0069972   0.3052276
0-24 months (no birth wast)   EE             PAKISTAN      >=50 cm              NA                -0.1363636   -1.3752424   0.4563408
0-24 months (no birth wast)   GMS-Nepal      NEPAL         >=50 cm              NA                 0.3013147   -0.0851182   0.5501309
0-24 months (no birth wast)   IRC            INDIA         >=50 cm              NA                -0.0253521   -0.3345184   0.2121900
0-24 months (no birth wast)   Keneba         GAMBIA        >=50 cm              NA                 0.0891194   -0.0417726   0.2035656
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.1567489   -0.4410506   0.5065597
0-24 months (no birth wast)   SAS-CompFeed   INDIA         >=50 cm              NA                 0.4000806   -0.0442441   0.6553456
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.2674436    0.1329876   0.3810482
0-6 months (no birth wast)    COHORTS        INDIA         >=50 cm              NA                 0.3272390   -0.0411514   0.5652818
0-6 months (no birth wast)    COHORTS        PHILIPPINES   >=50 cm              NA                -0.0989953   -0.4638648   0.1749301
0-6 months (no birth wast)    IRC            INDIA         >=50 cm              NA                 0.0036159   -0.3795908   0.2803799
0-6 months (no birth wast)    Keneba         GAMBIA        >=50 cm              NA                 0.2267885   -0.0467921   0.4288685
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.1266541   -0.1651915   0.3454011
6-24 months                   COHORTS        INDIA         >=50 cm              NA                 0.5462317    0.3336453   0.6909969
6-24 months                   COHORTS        PHILIPPINES   >=50 cm              NA                 0.2670038    0.0795803   0.4162626
6-24 months                   GMS-Nepal      NEPAL         >=50 cm              NA                 0.3163393   -0.0992634   0.5748135
6-24 months                   IRC            INDIA         >=50 cm              NA                -0.0774648   -0.7670506   0.3430124
6-24 months                   Keneba         GAMBIA        >=50 cm              NA                 0.0588909   -0.0948091   0.1910131
6-24 months                   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.1911157   -0.4244304   0.5406628
6-24 months                   SAS-CompFeed   INDIA         >=50 cm              NA                 0.2997455   -0.2288550   0.6009649
6-24 months                   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.3020705    0.1430146   0.4316056

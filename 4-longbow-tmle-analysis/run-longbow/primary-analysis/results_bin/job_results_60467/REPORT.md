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
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     >=50 cm                  0     1191   21905
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     >=50 cm                  1       43   21905
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     <48 cm                   0    15062   21905
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     <48 cm                   1      599   21905
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     [48-50) cm               0     4824   21905
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     [48-50) cm               1      186   21905
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     >=50 cm                  0     1183    4464
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     >=50 cm                  1       47    4464
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     <48 cm                   0     2036    4464
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     <48 cm                   1      125    4464
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     [48-50) cm               0     1037    4464
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     [48-50) cm               1       36    4464
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
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     >=50 cm                  0     1194   21725
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     >=50 cm                  1       26   21725
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     <48 cm                   0    15283   21725
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     <48 cm                   1      248   21725
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     [48-50) cm               0     4863   21725
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     [48-50) cm               1      111   21725
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     >=50 cm                  0     1205    4359
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     >=50 cm                  1        4    4359
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     <48 cm                   0     2082    4359
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     <48 cm                   1       11    4359
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     [48-50) cm               0     1051    4359
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     [48-50) cm               1        6    4359
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
6-24 months                   JiVitA-3         BANGLADESH                     >=50 cm                  0      830   14310
6-24 months                   JiVitA-3         BANGLADESH                     >=50 cm                  1       18   14310
6-24 months                   JiVitA-3         BANGLADESH                     <48 cm                   0     9731   14310
6-24 months                   JiVitA-3         BANGLADESH                     <48 cm                   1      375   14310
6-24 months                   JiVitA-3         BANGLADESH                     [48-50) cm               0     3275   14310
6-24 months                   JiVitA-3         BANGLADESH                     [48-50) cm               1       81   14310
6-24 months                   JiVitA-4         BANGLADESH                     >=50 cm                  0     1180    4474
6-24 months                   JiVitA-4         BANGLADESH                     >=50 cm                  1       45    4474
6-24 months                   JiVitA-4         BANGLADESH                     <48 cm                   0     2051    4474
6-24 months                   JiVitA-4         BANGLADESH                     <48 cm                   1      121    4474
6-24 months                   JiVitA-4         BANGLADESH                     [48-50) cm               0     1045    4474
6-24 months                   JiVitA-4         BANGLADESH                     [48-50) cm               1       32    4474
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
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/a4905dde-61be-469f-8977-bbbabd4cdc9a/f5765c6b-66bd-4741-afb0-a96ce104749c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a4905dde-61be-469f-8977-bbbabd4cdc9a/f5765c6b-66bd-4741-afb0-a96ce104749c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a4905dde-61be-469f-8977-bbbabd4cdc9a/f5765c6b-66bd-4741-afb0-a96ce104749c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a4905dde-61be-469f-8977-bbbabd4cdc9a/f5765c6b-66bd-4741-afb0-a96ce104749c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS        INDIA         >=50 cm              NA                0.0294089   0.0206708   0.0381469
0-24 months (no birth wast)   COHORTS        INDIA         <48 cm               NA                0.0626722   0.0534095   0.0719349
0-24 months (no birth wast)   COHORTS        INDIA         [48-50) cm           NA                0.0507404   0.0417815   0.0596993
0-24 months (no birth wast)   COHORTS        PHILIPPINES   >=50 cm              NA                0.0695859   0.0545729   0.0845988
0-24 months (no birth wast)   COHORTS        PHILIPPINES   <48 cm               NA                0.0866869   0.0665021   0.1068718
0-24 months (no birth wast)   COHORTS        PHILIPPINES   [48-50) cm           NA                0.0927263   0.0758678   0.1095847
0-24 months (no birth wast)   EE             PAKISTAN      >=50 cm              NA                0.2083333   0.0455164   0.3711503
0-24 months (no birth wast)   EE             PAKISTAN      <48 cm               NA                0.2098765   0.1470379   0.2727152
0-24 months (no birth wast)   EE             PAKISTAN      [48-50) cm           NA                0.0925926   0.0151202   0.1700650
0-24 months (no birth wast)   GMS-Nepal      NEPAL         >=50 cm              NA                0.1404457   0.0737214   0.2071701
0-24 months (no birth wast)   GMS-Nepal      NEPAL         <48 cm               NA                0.2072348   0.1648149   0.2496547
0-24 months (no birth wast)   GMS-Nepal      NEPAL         [48-50) cm           NA                0.2156308   0.1577566   0.2735049
0-24 months (no birth wast)   IRC            INDIA         >=50 cm              NA                0.1998407   0.1339610   0.2657204
0-24 months (no birth wast)   IRC            INDIA         <48 cm               NA                0.1819744   0.1101968   0.2537520
0-24 months (no birth wast)   IRC            INDIA         [48-50) cm           NA                0.2015986   0.1350045   0.2681927
0-24 months (no birth wast)   JiVitA-3       BANGLADESH    >=50 cm              NA                0.0378863   0.0250857   0.0506870
0-24 months (no birth wast)   JiVitA-3       BANGLADESH    <48 cm               NA                0.0379886   0.0346698   0.0413074
0-24 months (no birth wast)   JiVitA-3       BANGLADESH    [48-50) cm           NA                0.0376855   0.0310978   0.0442731
0-24 months (no birth wast)   JiVitA-4       BANGLADESH    >=50 cm              NA                0.0415215   0.0288312   0.0542119
0-24 months (no birth wast)   JiVitA-4       BANGLADESH    <48 cm               NA                0.0563796   0.0456120   0.0671473
0-24 months (no birth wast)   JiVitA-4       BANGLADESH    [48-50) cm           NA                0.0345634   0.0218947   0.0472321
0-24 months (no birth wast)   Keneba         GAMBIA        >=50 cm              NA                0.1302691   0.1063382   0.1542001
0-24 months (no birth wast)   Keneba         GAMBIA        <48 cm               NA                0.1624140   0.1195636   0.2052644
0-24 months (no birth wast)   Keneba         GAMBIA        [48-50) cm           NA                0.1562879   0.1241729   0.1884029
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    >=50 cm              NA                0.0812922   0.0329468   0.1296376
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    <48 cm               NA                0.1003034   0.0609892   0.1396175
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.0867862   0.0495847   0.1239878
0-24 months (no birth wast)   SAS-CompFeed   INDIA         >=50 cm              NA                0.0691592   0.0305706   0.1077478
0-24 months (no birth wast)   SAS-CompFeed   INDIA         <48 cm               NA                0.1409706   0.1039073   0.1780338
0-24 months (no birth wast)   SAS-CompFeed   INDIA         [48-50) cm           NA                0.0838432   0.0618113   0.1058751
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0259203   0.0208973   0.0309434
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0419721   0.0359063   0.0480378
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0366667   0.0315221   0.0418114
0-6 months (no birth wast)    COHORTS        INDIA         >=50 cm              NA                0.0129375   0.0068147   0.0190604
0-6 months (no birth wast)    COHORTS        INDIA         <48 cm               NA                0.0197667   0.0143054   0.0252280
0-6 months (no birth wast)    COHORTS        INDIA         [48-50) cm           NA                0.0230024   0.0167987   0.0292062
0-6 months (no birth wast)    COHORTS        PHILIPPINES   >=50 cm              NA                0.0236800   0.0148554   0.0325045
0-6 months (no birth wast)    COHORTS        PHILIPPINES   <48 cm               NA                0.0158400   0.0068647   0.0248154
0-6 months (no birth wast)    COHORTS        PHILIPPINES   [48-50) cm           NA                0.0236665   0.0148562   0.0324769
0-6 months (no birth wast)    IRC            INDIA         >=50 cm              NA                0.1438509   0.0812648   0.2064370
0-6 months (no birth wast)    IRC            INDIA         <48 cm               NA                0.1036636   0.0438339   0.1634934
0-6 months (no birth wast)    IRC            INDIA         [48-50) cm           NA                0.1841543   0.1163560   0.2519525
0-6 months (no birth wast)    JiVitA-3       BANGLADESH    >=50 cm              NA                0.0227933   0.0119513   0.0336352
0-6 months (no birth wast)    JiVitA-3       BANGLADESH    <48 cm               NA                0.0159696   0.0137719   0.0181672
0-6 months (no birth wast)    JiVitA-3       BANGLADESH    [48-50) cm           NA                0.0219967   0.0169428   0.0270506
0-6 months (no birth wast)    Keneba         GAMBIA        >=50 cm              NA                0.0328420   0.0200102   0.0456737
0-6 months (no birth wast)    Keneba         GAMBIA        <48 cm               NA                0.0483492   0.0237014   0.0729970
0-6 months (no birth wast)    Keneba         GAMBIA        [48-50) cm           NA                0.0552791   0.0349622   0.0755960
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0088022   0.0058482   0.0117561
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0107949   0.0075525   0.0140374
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0104229   0.0076266   0.0132191
6-24 months                   COHORTS        INDIA         >=50 cm              NA                0.0179484   0.0107196   0.0251772
6-24 months                   COHORTS        INDIA         <48 cm               NA                0.0521551   0.0436308   0.0606793
6-24 months                   COHORTS        INDIA         [48-50) cm           NA                0.0316482   0.0244116   0.0388848
6-24 months                   COHORTS        PHILIPPINES   >=50 cm              NA                0.0498852   0.0366207   0.0631497
6-24 months                   COHORTS        PHILIPPINES   <48 cm               NA                0.0766658   0.0569639   0.0963677
6-24 months                   COHORTS        PHILIPPINES   [48-50) cm           NA                0.0765291   0.0605672   0.0924910
6-24 months                   GMS-Nepal      NEPAL         >=50 cm              NA                0.1282699   0.0609249   0.1956150
6-24 months                   GMS-Nepal      NEPAL         <48 cm               NA                0.2023622   0.1571888   0.2475356
6-24 months                   GMS-Nepal      NEPAL         [48-50) cm           NA                0.2003314   0.1407280   0.2599348
6-24 months                   IRC            INDIA         >=50 cm              NA                0.0633803   0.0232549   0.1035056
6-24 months                   IRC            INDIA         <48 cm               NA                0.0810811   0.0302369   0.1319252
6-24 months                   IRC            INDIA         [48-50) cm           NA                0.0362319   0.0050145   0.0674493
6-24 months                   JiVitA-3       BANGLADESH    >=50 cm              NA                0.0208826   0.0121283   0.0296368
6-24 months                   JiVitA-3       BANGLADESH    <48 cm               NA                0.0373194   0.0333235   0.0413152
6-24 months                   JiVitA-3       BANGLADESH    [48-50) cm           NA                0.0241462   0.0184185   0.0298738
6-24 months                   JiVitA-4       BANGLADESH    >=50 cm              NA                0.0393472   0.0269855   0.0517089
6-24 months                   JiVitA-4       BANGLADESH    <48 cm               NA                0.0545412   0.0435952   0.0654872
6-24 months                   JiVitA-4       BANGLADESH    [48-50) cm           NA                0.0306726   0.0194666   0.0418786
6-24 months                   Keneba         GAMBIA        >=50 cm              NA                0.1060107   0.0838836   0.1281378
6-24 months                   Keneba         GAMBIA        <48 cm               NA                0.1235783   0.0847447   0.1624119
6-24 months                   Keneba         GAMBIA        [48-50) cm           NA                0.1155696   0.0868470   0.1442921
6-24 months                   NIH-Birth      BANGLADESH    >=50 cm              NA                0.0743802   0.0275833   0.1211770
6-24 months                   NIH-Birth      BANGLADESH    <48 cm               NA                0.1138614   0.0700156   0.1577072
6-24 months                   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.0804020   0.0425865   0.1182176
6-24 months                   SAS-CompFeed   INDIA         >=50 cm              NA                0.0681222   0.0277196   0.1085248
6-24 months                   SAS-CompFeed   INDIA         <48 cm               NA                0.1182046   0.0805423   0.1558669
6-24 months                   SAS-CompFeed   INDIA         [48-50) cm           NA                0.0659324   0.0453362   0.0865287
6-24 months                   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0233277   0.0178672   0.0287881
6-24 months                   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0408492   0.0341498   0.0475485
6-24 months                   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0341982   0.0286158   0.0397805


### Parameter: E(Y)


agecat                        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS        INDIA         NA                   NA                0.0514063   0.0459957   0.0568168
0-24 months (no birth wast)   COHORTS        PHILIPPINES   NA                   NA                0.0826968   0.0728574   0.0925361
0-24 months (no birth wast)   EE             PAKISTAN      NA                   NA                0.1833333   0.1342773   0.2323893
0-24 months (no birth wast)   GMS-Nepal      NEPAL         NA                   NA                0.1987860   0.1682929   0.2292792
0-24 months (no birth wast)   IRC            INDIA         NA                   NA                0.1923077   0.1531430   0.2314724
0-24 months (no birth wast)   JiVitA-3       BANGLADESH    NA                   NA                0.0377996   0.0348944   0.0407048
0-24 months (no birth wast)   JiVitA-4       BANGLADESH    NA                   NA                0.0465950   0.0398949   0.0532951
0-24 months (no birth wast)   Keneba         GAMBIA        NA                   NA                0.1460892   0.1284833   0.1636951
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    NA                   NA                0.0912220   0.0677898   0.1146542
0-24 months (no birth wast)   SAS-CompFeed   INDIA         NA                   NA                0.1141706   0.0903032   0.1380379
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      NA                   NA                0.0352566   0.0321456   0.0383677
0-6 months (no birth wast)    COHORTS        INDIA         NA                   NA                0.0194977   0.0160139   0.0229815
0-6 months (no birth wast)    COHORTS        PHILIPPINES   NA                   NA                0.0220736   0.0168064   0.0273407
0-6 months (no birth wast)    IRC            INDIA         NA                   NA                0.1532258   0.1165727   0.1898789
0-6 months (no birth wast)    JiVitA-3       BANGLADESH    NA                   NA                0.0177215   0.0156439   0.0197992
0-6 months (no birth wast)    Keneba         GAMBIA        NA                   NA                0.0430528   0.0328889   0.0532168
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      NA                   NA                0.0099593   0.0082687   0.0116498
6-24 months                   COHORTS        INDIA         NA                   NA                0.0377695   0.0330119   0.0425271
6-24 months                   COHORTS        PHILIPPINES   NA                   NA                0.0670949   0.0578297   0.0763601
6-24 months                   GMS-Nepal      NEPAL         NA                   NA                0.1901528   0.1584343   0.2218713
6-24 months                   IRC            INDIA         NA                   NA                0.0588235   0.0354714   0.0821757
6-24 months                   JiVitA-3       BANGLADESH    NA                   NA                0.0331237   0.0300503   0.0361971
6-24 months                   JiVitA-4       BANGLADESH    NA                   NA                0.0442557   0.0375111   0.0510003
6-24 months                   Keneba         GAMBIA        NA                   NA                0.1129792   0.0968836   0.1290747
6-24 months                   NIH-Birth      BANGLADESH    NA                   NA                0.0919540   0.0671416   0.1167664
6-24 months                   SAS-CompFeed   INDIA         NA                   NA                0.0952035   0.0698704   0.1205365
6-24 months                   ZVITAMBO       ZIMBABWE      NA                   NA                0.0331151   0.0297229   0.0365072


### Parameter: RR


agecat                        studyid        country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS        INDIA         <48 cm               >=50 cm           2.1310649   1.5295141   2.969203
0-24 months (no birth wast)   COHORTS        INDIA         [48-50) cm           >=50 cm           1.7253443   1.2214735   2.437067
0-24 months (no birth wast)   COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS        PHILIPPINES   <48 cm               >=50 cm           1.2457548   0.9075115   1.710066
0-24 months (no birth wast)   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           1.3325447   1.0054150   1.766112
0-24 months (no birth wast)   EE             PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   EE             PAKISTAN      <48 cm               >=50 cm           1.0074074   0.4362537   2.326329
0-24 months (no birth wast)   EE             PAKISTAN      [48-50) cm           >=50 cm           0.4444444   0.1414439   1.396532
0-24 months (no birth wast)   GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.4755508   0.8794935   2.475573
0-24 months (no birth wast)   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.5353316   0.8897227   2.649413
0-24 months (no birth wast)   IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   IRC            INDIA         <48 cm               >=50 cm           0.9105973   0.5450338   1.521351
0-24 months (no birth wast)   IRC            INDIA         [48-50) cm           >=50 cm           1.0087966   0.6319430   1.610383
0-24 months (no birth wast)   JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3       BANGLADESH    <48 cm               >=50 cm           1.0027001   0.7095480   1.416969
0-24 months (no birth wast)   JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           0.9946982   0.6863267   1.441623
0-24 months (no birth wast)   JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4       BANGLADESH    <48 cm               >=50 cm           1.3578409   0.9428057   1.955580
0-24 months (no birth wast)   JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           0.8324210   0.5152375   1.344865
0-24 months (no birth wast)   Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba         GAMBIA        <48 cm               >=50 cm           1.2467573   0.9045634   1.718402
0-24 months (no birth wast)   Keneba         GAMBIA        [48-50) cm           >=50 cm           1.1997311   0.9105703   1.580718
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    <48 cm               >=50 cm           1.2338622   0.6060461   2.512047
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           1.0675837   0.5141549   2.216715
0-24 months (no birth wast)   SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.0383487   1.0577109   3.928167
0-24 months (no birth wast)   SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.2123216   0.6711113   2.189985
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           1.6192712   1.2715469   2.062086
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.4145928   1.1135943   1.796949
0-6 months (no birth wast)    COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS        INDIA         <48 cm               >=50 cm           1.5278594   0.8833452   2.642630
0-6 months (no birth wast)    COHORTS        INDIA         [48-50) cm           >=50 cm           1.7779645   1.0312621   3.065329
0-6 months (no birth wast)    COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS        PHILIPPINES   <48 cm               >=50 cm           0.6689201   0.3394483   1.318180
0-6 months (no birth wast)    COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           0.9994332   0.5901634   1.692526
0-6 months (no birth wast)    IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    IRC            INDIA         <48 cm               >=50 cm           0.7206326   0.3493601   1.486464
0-6 months (no birth wast)    IRC            INDIA         [48-50) cm           >=50 cm           1.2801748   0.7240508   2.263443
0-6 months (no birth wast)    JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3       BANGLADESH    <48 cm               >=50 cm           0.7006261   0.4316509   1.137208
0-6 months (no birth wast)    JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           0.9650519   0.5741869   1.621990
0-6 months (no birth wast)    Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba         GAMBIA        <48 cm               >=50 cm           1.4721783   0.7746838   2.797669
0-6 months (no birth wast)    Keneba         GAMBIA        [48-50) cm           >=50 cm           1.6831849   0.9847254   2.877057
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           1.2263932   0.7817554   1.923927
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.1841239   0.7705893   1.819581
6-24 months                   COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   COHORTS        INDIA         <48 cm               >=50 cm           2.9058374   1.8818770   4.486951
6-24 months                   COHORTS        INDIA         [48-50) cm           >=50 cm           1.7632899   1.1101204   2.800769
6-24 months                   COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   COHORTS        PHILIPPINES   <48 cm               >=50 cm           1.5368440   1.0621630   2.223660
6-24 months                   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           1.5341033   1.0950391   2.149214
6-24 months                   GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.5776278   0.8918804   2.790631
6-24 months                   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.5617954   0.8548846   2.853256
6-24 months                   IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   IRC            INDIA         <48 cm               >=50 cm           1.2792793   0.5247750   3.118585
6-24 months                   IRC            INDIA         [48-50) cm           >=50 cm           0.5716586   0.1962438   1.665243
6-24 months                   JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3       BANGLADESH    <48 cm               >=50 cm           1.7871060   1.1577338   2.758620
6-24 months                   JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           1.1562833   0.7155089   1.868588
6-24 months                   JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4       BANGLADESH    <48 cm               >=50 cm           1.3861524   0.9499160   2.022725
6-24 months                   JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           0.7795368   0.4799591   1.266103
6-24 months                   Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   Keneba         GAMBIA        <48 cm               >=50 cm           1.1657154   0.7995986   1.699468
6-24 months                   Keneba         GAMBIA        [48-50) cm           >=50 cm           1.0901692   0.7881341   1.507953
6-24 months                   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   NIH-Birth      BANGLADESH    <48 cm               >=50 cm           1.5308031   0.7320864   3.200931
6-24 months                   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           1.0809604   0.4927882   2.371151
6-24 months                   SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   SAS-CompFeed   INDIA         <48 cm               >=50 cm           1.7351843   0.8461293   3.558398
6-24 months                   SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.9678550   0.5633431   1.662829
6-24 months                   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           1.7511041   1.3157779   2.330459
6-24 months                   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.4659928   1.1020353   1.950151


### Parameter: PAR


agecat                        studyid        country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS        INDIA         >=50 cm              NA                 0.0219974    0.0134966   0.0304982
0-24 months (no birth wast)   COHORTS        PHILIPPINES   >=50 cm              NA                 0.0131109    0.0005977   0.0256242
0-24 months (no birth wast)   EE             PAKISTAN      >=50 cm              NA                -0.0250000   -0.1786684   0.1286684
0-24 months (no birth wast)   GMS-Nepal      NEPAL         >=50 cm              NA                 0.0583403   -0.0045545   0.1212352
0-24 months (no birth wast)   IRC            INDIA         >=50 cm              NA                -0.0075330   -0.0598672   0.0448012
0-24 months (no birth wast)   JiVitA-3       BANGLADESH    >=50 cm              NA                -0.0000867   -0.0124319   0.0122584
0-24 months (no birth wast)   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.0050734   -0.0063751   0.0165219
0-24 months (no birth wast)   Keneba         GAMBIA        >=50 cm              NA                 0.0158201   -0.0019947   0.0336349
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.0099298   -0.0335388   0.0533985
0-24 months (no birth wast)   SAS-CompFeed   INDIA         >=50 cm              NA                 0.0450114    0.0029031   0.0871197
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0093363    0.0048014   0.0138712
0-6 months (no birth wast)    COHORTS        INDIA         >=50 cm              NA                 0.0065602    0.0007829   0.0123374
0-6 months (no birth wast)    COHORTS        PHILIPPINES   >=50 cm              NA                -0.0016064   -0.0084105   0.0051978
0-6 months (no birth wast)    IRC            INDIA         >=50 cm              NA                 0.0093749   -0.0411895   0.0599393
0-6 months (no birth wast)    JiVitA-3       BANGLADESH    >=50 cm              NA                -0.0050718   -0.0153816   0.0052381
0-6 months (no birth wast)    Keneba         GAMBIA        >=50 cm              NA                 0.0102109   -0.0001151   0.0205368
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0011571   -0.0013991   0.0037133
6-24 months                   COHORTS        INDIA         >=50 cm              NA                 0.0198211    0.0125285   0.0271137
6-24 months                   COHORTS        PHILIPPINES   >=50 cm              NA                 0.0172097    0.0056973   0.0287221
6-24 months                   GMS-Nepal      NEPAL         >=50 cm              NA                 0.0618829   -0.0015957   0.1253614
6-24 months                   IRC            INDIA         >=50 cm              NA                -0.0045568   -0.0359562   0.0268427
6-24 months                   JiVitA-3       BANGLADESH    >=50 cm              NA                 0.0122411    0.0034717   0.0210105
6-24 months                   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.0049085   -0.0063378   0.0161548
6-24 months                   Keneba         GAMBIA        >=50 cm              NA                 0.0069685   -0.0091180   0.0230549
6-24 months                   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.0175739   -0.0247385   0.0598862
6-24 months                   SAS-CompFeed   INDIA         >=50 cm              NA                 0.0270813   -0.0154109   0.0695734
6-24 months                   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0097874    0.0047921   0.0147827


### Parameter: PAF


agecat                        studyid        country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS        INDIA         >=50 cm              NA                 0.4279127    0.2445576   0.5667653
0-24 months (no birth wast)   COHORTS        PHILIPPINES   >=50 cm              NA                 0.1585421   -0.0060677   0.2962189
0-24 months (no birth wast)   EE             PAKISTAN      >=50 cm              NA                -0.1363636   -1.3752424   0.4563408
0-24 months (no birth wast)   GMS-Nepal      NEPAL         >=50 cm              NA                 0.2934830   -0.1026759   0.5473137
0-24 months (no birth wast)   IRC            INDIA         >=50 cm              NA                -0.0391715   -0.3502498   0.2002388
0-24 months (no birth wast)   JiVitA-3       BANGLADESH    >=50 cm              NA                -0.0022947   -0.3883717   0.2764224
0-24 months (no birth wast)   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.1088840   -0.1726815   0.3228445
0-24 months (no birth wast)   Keneba         GAMBIA        >=50 cm              NA                 0.1082905   -0.0218824   0.2218813
0-24 months (no birth wast)   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.1088534   -0.5201883   0.4776027
0-24 months (no birth wast)   SAS-CompFeed   INDIA         >=50 cm              NA                 0.3942467   -0.0654438   0.6556017
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.2648099    0.1266796   0.3810926
0-6 months (no birth wast)    COHORTS        INDIA         >=50 cm              NA                 0.3364589   -0.0278075   0.5716253
0-6 months (no birth wast)    COHORTS        PHILIPPINES   >=50 cm              NA                -0.0727741   -0.4292859   0.1948117
0-6 months (no birth wast)    IRC            INDIA         >=50 cm              NA                 0.0611837   -0.3348064   0.3396975
0-6 months (no birth wast)    JiVitA-3       BANGLADESH    >=50 cm              NA                -0.2861917   -1.0147986   0.1789308
0-6 months (no birth wast)    Keneba         GAMBIA        >=50 cm              NA                 0.2371711   -0.0370087   0.4388591
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.1161823   -0.1806138   0.3383665
6-24 months                   COHORTS        INDIA         >=50 cm              NA                 0.5247915    0.3035980   0.6757288
6-24 months                   COHORTS        PHILIPPINES   >=50 cm              NA                 0.2564979    0.0678022   0.4069977
6-24 months                   GMS-Nepal      NEPAL         >=50 cm              NA                 0.3254376   -0.1026603   0.5873304
6-24 months                   IRC            INDIA         >=50 cm              NA                -0.0774648   -0.7670506   0.3430124
6-24 months                   JiVitA-3       BANGLADESH    >=50 cm              NA                 0.3695580    0.0465987   0.5831167
6-24 months                   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.1109120   -0.1811512   0.3307567
6-24 months                   Keneba         GAMBIA        >=50 cm              NA                 0.0616794   -0.0918334   0.1936082
6-24 months                   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.1911157   -0.4244304   0.5406628
6-24 months                   SAS-CompFeed   INDIA         >=50 cm              NA                 0.2844565   -0.2932542   0.6040976
6-24 months                   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.2955574    0.1309585   0.4289808

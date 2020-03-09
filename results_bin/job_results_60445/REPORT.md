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

**Outcome Variable:** ever_wasted

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

agecat                        studyid          country                        birthlen      ever_wasted   n_cell       n
----------------------------  ---------------  -----------------------------  -----------  ------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          >=50 cm                 0       11     104
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          >=50 cm                 1        5     104
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          <48 cm                  0       22     104
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          <48 cm                  1       26     104
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          [48-50) cm              0       18     104
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          [48-50) cm              1       22     104
0-24 months (no birth wast)   CMIN             BANGLADESH                     >=50 cm                 0        1      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     >=50 cm                 1        0      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     <48 cm                  0        5      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     <48 cm                  1        3      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     [48-50) cm              0        6      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     [48-50) cm              1        2      17
0-24 months (no birth wast)   COHORTS          GUATEMALA                      >=50 cm                 0      382     821
0-24 months (no birth wast)   COHORTS          GUATEMALA                      >=50 cm                 1       38     821
0-24 months (no birth wast)   COHORTS          GUATEMALA                      <48 cm                  0      130     821
0-24 months (no birth wast)   COHORTS          GUATEMALA                      <48 cm                  1       25     821
0-24 months (no birth wast)   COHORTS          GUATEMALA                      [48-50) cm              0      219     821
0-24 months (no birth wast)   COHORTS          GUATEMALA                      [48-50) cm              1       27     821
0-24 months (no birth wast)   COHORTS          INDIA                          >=50 cm                 0     1185    6400
0-24 months (no birth wast)   COHORTS          INDIA                          >=50 cm                 1      204    6400
0-24 months (no birth wast)   COHORTS          INDIA                          <48 cm                  0     2044    6400
0-24 months (no birth wast)   COHORTS          INDIA                          <48 cm                  1      600    6400
0-24 months (no birth wast)   COHORTS          INDIA                          [48-50) cm              0     1924    6400
0-24 months (no birth wast)   COHORTS          INDIA                          [48-50) cm              1      443    6400
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    >=50 cm                 0      848    3011
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    >=50 cm                 1      273    3011
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    <48 cm                  0      454    3011
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    <48 cm                  1      286    3011
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    [48-50) cm              0      795    3011
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    [48-50) cm              1      355    3011
0-24 months (no birth wast)   CONTENT          PERU                           >=50 cm                 0        1       2
0-24 months (no birth wast)   CONTENT          PERU                           >=50 cm                 1        0       2
0-24 months (no birth wast)   CONTENT          PERU                           <48 cm                  0        1       2
0-24 months (no birth wast)   CONTENT          PERU                           <48 cm                  1        0       2
0-24 months (no birth wast)   CONTENT          PERU                           [48-50) cm              0        0       2
0-24 months (no birth wast)   CONTENT          PERU                           [48-50) cm              1        0       2
0-24 months (no birth wast)   EE               PAKISTAN                       >=50 cm                 0       11     240
0-24 months (no birth wast)   EE               PAKISTAN                       >=50 cm                 1       13     240
0-24 months (no birth wast)   EE               PAKISTAN                       <48 cm                  0       63     240
0-24 months (no birth wast)   EE               PAKISTAN                       <48 cm                  1       99     240
0-24 months (no birth wast)   EE               PAKISTAN                       [48-50) cm              0       30     240
0-24 months (no birth wast)   EE               PAKISTAN                       [48-50) cm              1       24     240
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          >=50 cm                 0       66     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          >=50 cm                 1       42     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          <48 cm                  0      163     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          <48 cm                  1      187     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          [48-50) cm              0      100     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          [48-50) cm              1      101     659
0-24 months (no birth wast)   IRC              INDIA                          >=50 cm                 0       64     390
0-24 months (no birth wast)   IRC              INDIA                          >=50 cm                 1       78     390
0-24 months (no birth wast)   IRC              INDIA                          <48 cm                  0       48     390
0-24 months (no birth wast)   IRC              INDIA                          <48 cm                  1       63     390
0-24 months (no birth wast)   IRC              INDIA                          [48-50) cm              0       71     390
0-24 months (no birth wast)   IRC              INDIA                          [48-50) cm              1       66     390
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     >=50 cm                 0     1017   21905
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     >=50 cm                 1      217   21905
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     <48 cm                  0    12889   21905
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     <48 cm                  1     2772   21905
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     [48-50) cm              0     4150   21905
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     [48-50) cm              1      860   21905
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     >=50 cm                 0      951    4464
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     >=50 cm                 1      279    4464
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     <48 cm                  0     1498    4464
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     <48 cm                  1      663    4464
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     [48-50) cm              0      826    4464
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     [48-50) cm              1      247    4464
0-24 months (no birth wast)   Keneba           GAMBIA                         >=50 cm                 0      476    1547
0-24 months (no birth wast)   Keneba           GAMBIA                         >=50 cm                 1      283    1547
0-24 months (no birth wast)   Keneba           GAMBIA                         <48 cm                  0      173    1547
0-24 months (no birth wast)   Keneba           GAMBIA                         <48 cm                  1      120    1547
0-24 months (no birth wast)   Keneba           GAMBIA                         [48-50) cm              0      300    1547
0-24 months (no birth wast)   Keneba           GAMBIA                         [48-50) cm              1      195    1547
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     >=50 cm                 0       31     229
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     >=50 cm                 1        8     229
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     <48 cm                  0       80     229
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     <48 cm                  1       31     229
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     [48-50) cm              0       64     229
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     [48-50) cm              1       15     229
0-24 months (no birth wast)   MAL-ED           BRAZIL                         >=50 cm                 0       29      65
0-24 months (no birth wast)   MAL-ED           BRAZIL                         >=50 cm                 1        1      65
0-24 months (no birth wast)   MAL-ED           BRAZIL                         <48 cm                  0       15      65
0-24 months (no birth wast)   MAL-ED           BRAZIL                         <48 cm                  1        2      65
0-24 months (no birth wast)   MAL-ED           BRAZIL                         [48-50) cm              0       17      65
0-24 months (no birth wast)   MAL-ED           BRAZIL                         [48-50) cm              1        1      65
0-24 months (no birth wast)   MAL-ED           INDIA                          >=50 cm                 0        6      47
0-24 months (no birth wast)   MAL-ED           INDIA                          >=50 cm                 1        3      47
0-24 months (no birth wast)   MAL-ED           INDIA                          <48 cm                  0       11      47
0-24 months (no birth wast)   MAL-ED           INDIA                          <48 cm                  1        9      47
0-24 months (no birth wast)   MAL-ED           INDIA                          [48-50) cm              0       10      47
0-24 months (no birth wast)   MAL-ED           INDIA                          [48-50) cm              1        8      47
0-24 months (no birth wast)   MAL-ED           NEPAL                          >=50 cm                 0        7      27
0-24 months (no birth wast)   MAL-ED           NEPAL                          >=50 cm                 1        1      27
0-24 months (no birth wast)   MAL-ED           NEPAL                          <48 cm                  0        9      27
0-24 months (no birth wast)   MAL-ED           NEPAL                          <48 cm                  1        3      27
0-24 months (no birth wast)   MAL-ED           NEPAL                          [48-50) cm              0        5      27
0-24 months (no birth wast)   MAL-ED           NEPAL                          [48-50) cm              1        2      27
0-24 months (no birth wast)   MAL-ED           PERU                           >=50 cm                 0       49     233
0-24 months (no birth wast)   MAL-ED           PERU                           >=50 cm                 1        3     233
0-24 months (no birth wast)   MAL-ED           PERU                           <48 cm                  0       79     233
0-24 months (no birth wast)   MAL-ED           PERU                           <48 cm                  1        9     233
0-24 months (no birth wast)   MAL-ED           PERU                           [48-50) cm              0       86     233
0-24 months (no birth wast)   MAL-ED           PERU                           [48-50) cm              1        7     233
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   >=50 cm                 0       36     119
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   >=50 cm                 1        6     119
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   <48 cm                  0       28     119
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   <48 cm                  1        3     119
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   [48-50) cm              0       39     119
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   [48-50) cm              1        7     119
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0       30     124
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        2     124
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                  0       29     124
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       12     124
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0       43     124
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        8     124
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     >=50 cm                 0      100     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     >=50 cm                 1       30     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     <48 cm                  0      152     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     <48 cm                  1       76     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     [48-50) cm              0      156     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     [48-50) cm              1       67     581
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     >=50 cm                 0      149     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     >=50 cm                 1       19     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     <48 cm                  0      243     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     <48 cm                  1       47     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     [48-50) cm              0      254     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     [48-50) cm              1       42     754
0-24 months (no birth wast)   PROBIT           BELARUS                        >=50 cm                 0    14289   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        >=50 cm                 1     1008   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        <48 cm                  0      174   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        <48 cm                  1       15   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        [48-50) cm              0     1268   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        [48-50) cm              1      125   16879
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     >=50 cm                 0      149     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     >=50 cm                 1       17     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     <48 cm                  0      177     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     <48 cm                  1       62     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     [48-50) cm              0      239     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     [48-50) cm              1       43     687
0-24 months (no birth wast)   ResPak           PAKISTAN                       >=50 cm                 0        7      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       >=50 cm                 1        5      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       <48 cm                  0        8      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       <48 cm                  1        7      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       [48-50) cm              0        9      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       [48-50) cm              1        5      41
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          >=50 cm                 0      161    1489
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          >=50 cm                 1       58    1489
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          <48 cm                  0      475    1489
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          <48 cm                  1      320    1489
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          [48-50) cm              0      313    1489
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          [48-50) cm              1      162    1489
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       >=50 cm                 0     3676   13501
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       >=50 cm                 1      312   13501
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       <48 cm                  0     3764   13501
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       <48 cm                  1      521   13501
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       [48-50) cm              0     4684   13501
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       [48-50) cm              1      544   13501
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          >=50 cm                 0       10     101
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          >=50 cm                 1        5     101
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          <48 cm                  0       27     101
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          <48 cm                  1       19     101
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          [48-50) cm              0       19     101
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          [48-50) cm              1       21     101
0-6 months (no birth wast)    CMIN             BANGLADESH                     >=50 cm                 0        1      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     >=50 cm                 1        0      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     <48 cm                  0        7      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     <48 cm                  1        1      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     [48-50) cm              0        8      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     [48-50) cm              1        0      17
0-6 months (no birth wast)    COHORTS          GUATEMALA                      >=50 cm                 0      399     793
0-6 months (no birth wast)    COHORTS          GUATEMALA                      >=50 cm                 1        6     793
0-6 months (no birth wast)    COHORTS          GUATEMALA                      <48 cm                  0      145     793
0-6 months (no birth wast)    COHORTS          GUATEMALA                      <48 cm                  1        6     793
0-6 months (no birth wast)    COHORTS          GUATEMALA                      [48-50) cm              0      231     793
0-6 months (no birth wast)    COHORTS          GUATEMALA                      [48-50) cm              1        6     793
0-6 months (no birth wast)    COHORTS          INDIA                          >=50 cm                 0     1189    6052
0-6 months (no birth wast)    COHORTS          INDIA                          >=50 cm                 1      107    6052
0-6 months (no birth wast)    COHORTS          INDIA                          <48 cm                  0     2294    6052
0-6 months (no birth wast)    COHORTS          INDIA                          <48 cm                  1      212    6052
0-6 months (no birth wast)    COHORTS          INDIA                          [48-50) cm              0     2035    6052
0-6 months (no birth wast)    COHORTS          INDIA                          [48-50) cm              1      215    6052
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    >=50 cm                 0     1006    2990
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    >=50 cm                 1      107    2990
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    <48 cm                  0      670    2990
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    <48 cm                  1       65    2990
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    [48-50) cm              0     1031    2990
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    [48-50) cm              1      111    2990
0-6 months (no birth wast)    CONTENT          PERU                           >=50 cm                 0        1       2
0-6 months (no birth wast)    CONTENT          PERU                           >=50 cm                 1        0       2
0-6 months (no birth wast)    CONTENT          PERU                           <48 cm                  0        1       2
0-6 months (no birth wast)    CONTENT          PERU                           <48 cm                  1        0       2
0-6 months (no birth wast)    CONTENT          PERU                           [48-50) cm              0        0       2
0-6 months (no birth wast)    CONTENT          PERU                           [48-50) cm              1        0       2
0-6 months (no birth wast)    EE               PAKISTAN                       >=50 cm                 0       16     238
0-6 months (no birth wast)    EE               PAKISTAN                       >=50 cm                 1        8     238
0-6 months (no birth wast)    EE               PAKISTAN                       <48 cm                  0      127     238
0-6 months (no birth wast)    EE               PAKISTAN                       <48 cm                  1       34     238
0-6 months (no birth wast)    EE               PAKISTAN                       [48-50) cm              0       41     238
0-6 months (no birth wast)    EE               PAKISTAN                       [48-50) cm              1       12     238
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          >=50 cm                 0       84     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          >=50 cm                 1       19     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          <48 cm                  0      285     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          <48 cm                  1       58     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          [48-50) cm              0      149     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          [48-50) cm              1       46     641
0-6 months (no birth wast)    IRC              INDIA                          >=50 cm                 0       83     372
0-6 months (no birth wast)    IRC              INDIA                          >=50 cm                 1       48     372
0-6 months (no birth wast)    IRC              INDIA                          <48 cm                  0       75     372
0-6 months (no birth wast)    IRC              INDIA                          <48 cm                  1       34     372
0-6 months (no birth wast)    IRC              INDIA                          [48-50) cm              0       84     372
0-6 months (no birth wast)    IRC              INDIA                          [48-50) cm              1       48     372
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     >=50 cm                 0     1087   21725
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     >=50 cm                 1      133   21725
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     <48 cm                  0    14501   21725
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     <48 cm                  1     1030   21725
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     [48-50) cm              0     4485   21725
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     [48-50) cm              1      489   21725
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     >=50 cm                 0     1174    4359
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     >=50 cm                 1       35    4359
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     <48 cm                  0     2032    4359
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     <48 cm                  1       61    4359
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     [48-50) cm              0     1027    4359
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     [48-50) cm              1       30    4359
0-6 months (no birth wast)    Keneba           GAMBIA                         >=50 cm                 0      667    1533
0-6 months (no birth wast)    Keneba           GAMBIA                         >=50 cm                 1       84    1533
0-6 months (no birth wast)    Keneba           GAMBIA                         <48 cm                  0      254    1533
0-6 months (no birth wast)    Keneba           GAMBIA                         <48 cm                  1       38    1533
0-6 months (no birth wast)    Keneba           GAMBIA                         [48-50) cm              0      430    1533
0-6 months (no birth wast)    Keneba           GAMBIA                         [48-50) cm              1       60    1533
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     >=50 cm                 0       36     228
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     >=50 cm                 1        3     228
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     <48 cm                  0      101     228
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     <48 cm                  1        9     228
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     [48-50) cm              0       75     228
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     [48-50) cm              1        4     228
0-6 months (no birth wast)    MAL-ED           BRAZIL                         >=50 cm                 0       29      65
0-6 months (no birth wast)    MAL-ED           BRAZIL                         >=50 cm                 1        1      65
0-6 months (no birth wast)    MAL-ED           BRAZIL                         <48 cm                  0       17      65
0-6 months (no birth wast)    MAL-ED           BRAZIL                         <48 cm                  1        0      65
0-6 months (no birth wast)    MAL-ED           BRAZIL                         [48-50) cm              0       18      65
0-6 months (no birth wast)    MAL-ED           BRAZIL                         [48-50) cm              1        0      65
0-6 months (no birth wast)    MAL-ED           INDIA                          >=50 cm                 0        7      47
0-6 months (no birth wast)    MAL-ED           INDIA                          >=50 cm                 1        2      47
0-6 months (no birth wast)    MAL-ED           INDIA                          <48 cm                  0       18      47
0-6 months (no birth wast)    MAL-ED           INDIA                          <48 cm                  1        2      47
0-6 months (no birth wast)    MAL-ED           INDIA                          [48-50) cm              0       14      47
0-6 months (no birth wast)    MAL-ED           INDIA                          [48-50) cm              1        4      47
0-6 months (no birth wast)    MAL-ED           NEPAL                          >=50 cm                 0        7      27
0-6 months (no birth wast)    MAL-ED           NEPAL                          >=50 cm                 1        1      27
0-6 months (no birth wast)    MAL-ED           NEPAL                          <48 cm                  0       11      27
0-6 months (no birth wast)    MAL-ED           NEPAL                          <48 cm                  1        1      27
0-6 months (no birth wast)    MAL-ED           NEPAL                          [48-50) cm              0        7      27
0-6 months (no birth wast)    MAL-ED           NEPAL                          [48-50) cm              1        0      27
0-6 months (no birth wast)    MAL-ED           PERU                           >=50 cm                 0       50     233
0-6 months (no birth wast)    MAL-ED           PERU                           >=50 cm                 1        2     233
0-6 months (no birth wast)    MAL-ED           PERU                           <48 cm                  0       86     233
0-6 months (no birth wast)    MAL-ED           PERU                           <48 cm                  1        2     233
0-6 months (no birth wast)    MAL-ED           PERU                           [48-50) cm              0       92     233
0-6 months (no birth wast)    MAL-ED           PERU                           [48-50) cm              1        1     233
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   >=50 cm                 0       38     118
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   >=50 cm                 1        4     118
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   <48 cm                  0       30     118
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   <48 cm                  1        1     118
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   [48-50) cm              0       41     118
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   [48-50) cm              1        4     118
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0       31     124
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        1     124
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                  0       40     124
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                  1        1     124
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0       49     124
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        2     124
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     >=50 cm                 0      120     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     >=50 cm                 1        8     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     <48 cm                  0      201     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     <48 cm                  1       17     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     [48-50) cm              0      198     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     [48-50) cm              1       20     564
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     >=50 cm                 0      161     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     >=50 cm                 1        6     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     <48 cm                  0      282     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     <48 cm                  1        6     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     [48-50) cm              0      286     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     [48-50) cm              1        8     749
0-6 months (no birth wast)    PROBIT           BELARUS                        >=50 cm                 0    14212   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        >=50 cm                 1      902   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        <48 cm                  0      178   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        <48 cm                  1       11   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        [48-50) cm              0     1281   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        [48-50) cm              1      109   16693
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     >=50 cm                 0      157     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     >=50 cm                 1        9     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     <48 cm                  0      221     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     <48 cm                  1       16     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     [48-50) cm              0      268     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     [48-50) cm              1       12     683
0-6 months (no birth wast)    ResPak           PAKISTAN                       >=50 cm                 0        8      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       >=50 cm                 1        4      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       <48 cm                  0       12      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       <48 cm                  1        3      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       [48-50) cm              0       11      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       [48-50) cm              1        3      41
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          >=50 cm                 0      196    1463
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          >=50 cm                 1       20    1463
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          <48 cm                  0      670    1463
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          <48 cm                  1      108    1463
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          [48-50) cm              0      412    1463
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          [48-50) cm              1       57    1463
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       >=50 cm                 0     3810   13254
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       >=50 cm                 1       99   13254
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       <48 cm                  0     4061   13254
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       <48 cm                  1      132   13254
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       [48-50) cm              0     4956   13254
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       [48-50) cm              1      196   13254
6-24 months                   CMC-V-BCS-2002   INDIA                          >=50 cm                 0       16     106
6-24 months                   CMC-V-BCS-2002   INDIA                          >=50 cm                 1        0     106
6-24 months                   CMC-V-BCS-2002   INDIA                          <48 cm                  0       38     106
6-24 months                   CMC-V-BCS-2002   INDIA                          <48 cm                  1       12     106
6-24 months                   CMC-V-BCS-2002   INDIA                          [48-50) cm              0       32     106
6-24 months                   CMC-V-BCS-2002   INDIA                          [48-50) cm              1        8     106
6-24 months                   CMIN             BANGLADESH                     >=50 cm                 0        0      12
6-24 months                   CMIN             BANGLADESH                     >=50 cm                 1        0      12
6-24 months                   CMIN             BANGLADESH                     <48 cm                  0        4      12
6-24 months                   CMIN             BANGLADESH                     <48 cm                  1        2      12
6-24 months                   CMIN             BANGLADESH                     [48-50) cm              0        4      12
6-24 months                   CMIN             BANGLADESH                     [48-50) cm              1        2      12
6-24 months                   COHORTS          GUATEMALA                      >=50 cm                 0      327     727
6-24 months                   COHORTS          GUATEMALA                      >=50 cm                 1       35     727
6-24 months                   COHORTS          GUATEMALA                      <48 cm                  0      123     727
6-24 months                   COHORTS          GUATEMALA                      <48 cm                  1       19     727
6-24 months                   COHORTS          GUATEMALA                      [48-50) cm              0      200     727
6-24 months                   COHORTS          GUATEMALA                      [48-50) cm              1       23     727
6-24 months                   COHORTS          INDIA                          >=50 cm                 0     1235    6169
6-24 months                   COHORTS          INDIA                          >=50 cm                 1      107    6169
6-24 months                   COHORTS          INDIA                          <48 cm                  0     2132    6169
6-24 months                   COHORTS          INDIA                          <48 cm                  1      414    6169
6-24 months                   COHORTS          INDIA                          [48-50) cm              0     2039    6169
6-24 months                   COHORTS          INDIA                          [48-50) cm              1      242    6169
6-24 months                   COHORTS          PHILIPPINES                    >=50 cm                 0      829    2802
6-24 months                   COHORTS          PHILIPPINES                    >=50 cm                 1      208    2802
6-24 months                   COHORTS          PHILIPPINES                    <48 cm                  0      443    2802
6-24 months                   COHORTS          PHILIPPINES                    <48 cm                  1      256    2802
6-24 months                   COHORTS          PHILIPPINES                    [48-50) cm              0      783    2802
6-24 months                   COHORTS          PHILIPPINES                    [48-50) cm              1      283    2802
6-24 months                   CONTENT          PERU                           >=50 cm                 0        1       2
6-24 months                   CONTENT          PERU                           >=50 cm                 1        0       2
6-24 months                   CONTENT          PERU                           <48 cm                  0        1       2
6-24 months                   CONTENT          PERU                           <48 cm                  1        0       2
6-24 months                   CONTENT          PERU                           [48-50) cm              0        0       2
6-24 months                   CONTENT          PERU                           [48-50) cm              1        0       2
6-24 months                   EE               PAKISTAN                       >=50 cm                 0       15     237
6-24 months                   EE               PAKISTAN                       >=50 cm                 1        9     237
6-24 months                   EE               PAKISTAN                       <48 cm                  0       76     237
6-24 months                   EE               PAKISTAN                       <48 cm                  1       84     237
6-24 months                   EE               PAKISTAN                       [48-50) cm              0       36     237
6-24 months                   EE               PAKISTAN                       [48-50) cm              1       17     237
6-24 months                   GMS-Nepal        NEPAL                          >=50 cm                 0       67     589
6-24 months                   GMS-Nepal        NEPAL                          >=50 cm                 1       33     589
6-24 months                   GMS-Nepal        NEPAL                          <48 cm                  0      150     589
6-24 months                   GMS-Nepal        NEPAL                          <48 cm                  1      161     589
6-24 months                   GMS-Nepal        NEPAL                          [48-50) cm              0       94     589
6-24 months                   GMS-Nepal        NEPAL                          [48-50) cm              1       84     589
6-24 months                   IRC              INDIA                          >=50 cm                 0       98     391
6-24 months                   IRC              INDIA                          >=50 cm                 1       44     391
6-24 months                   IRC              INDIA                          <48 cm                  0       70     391
6-24 months                   IRC              INDIA                          <48 cm                  1       41     391
6-24 months                   IRC              INDIA                          [48-50) cm              0      100     391
6-24 months                   IRC              INDIA                          [48-50) cm              1       38     391
6-24 months                   JiVitA-3         BANGLADESH                     >=50 cm                 0      749   14310
6-24 months                   JiVitA-3         BANGLADESH                     >=50 cm                 1       99   14310
6-24 months                   JiVitA-3         BANGLADESH                     <48 cm                  0     8244   14310
6-24 months                   JiVitA-3         BANGLADESH                     <48 cm                  1     1862   14310
6-24 months                   JiVitA-3         BANGLADESH                     [48-50) cm              0     2925   14310
6-24 months                   JiVitA-3         BANGLADESH                     [48-50) cm              1      431   14310
6-24 months                   JiVitA-4         BANGLADESH                     >=50 cm                 0      965    4474
6-24 months                   JiVitA-4         BANGLADESH                     >=50 cm                 1      260    4474
6-24 months                   JiVitA-4         BANGLADESH                     <48 cm                  0     1537    4474
6-24 months                   JiVitA-4         BANGLADESH                     <48 cm                  1      635    4474
6-24 months                   JiVitA-4         BANGLADESH                     [48-50) cm              0      849    4474
6-24 months                   JiVitA-4         BANGLADESH                     [48-50) cm              1      228    4474
6-24 months                   Keneba           GAMBIA                         >=50 cm                 0      501    1487
6-24 months                   Keneba           GAMBIA                         >=50 cm                 1      242    1487
6-24 months                   Keneba           GAMBIA                         <48 cm                  0      173    1487
6-24 months                   Keneba           GAMBIA                         <48 cm                  1       95    1487
6-24 months                   Keneba           GAMBIA                         [48-50) cm              0      313    1487
6-24 months                   Keneba           GAMBIA                         [48-50) cm              1      163    1487
6-24 months                   MAL-ED           BANGLADESH                     >=50 cm                 0       34     212
6-24 months                   MAL-ED           BANGLADESH                     >=50 cm                 1        5     212
6-24 months                   MAL-ED           BANGLADESH                     <48 cm                  0       77     212
6-24 months                   MAL-ED           BANGLADESH                     <48 cm                  1       22     212
6-24 months                   MAL-ED           BANGLADESH                     [48-50) cm              0       60     212
6-24 months                   MAL-ED           BANGLADESH                     [48-50) cm              1       14     212
6-24 months                   MAL-ED           BRAZIL                         >=50 cm                 0       27      58
6-24 months                   MAL-ED           BRAZIL                         >=50 cm                 1        0      58
6-24 months                   MAL-ED           BRAZIL                         <48 cm                  0       13      58
6-24 months                   MAL-ED           BRAZIL                         <48 cm                  1        2      58
6-24 months                   MAL-ED           BRAZIL                         [48-50) cm              0       15      58
6-24 months                   MAL-ED           BRAZIL                         [48-50) cm              1        1      58
6-24 months                   MAL-ED           INDIA                          >=50 cm                 0        6      41
6-24 months                   MAL-ED           INDIA                          >=50 cm                 1        2      41
6-24 months                   MAL-ED           INDIA                          <48 cm                  0        9      41
6-24 months                   MAL-ED           INDIA                          <48 cm                  1        9      41
6-24 months                   MAL-ED           INDIA                          [48-50) cm              0        9      41
6-24 months                   MAL-ED           INDIA                          [48-50) cm              1        6      41
6-24 months                   MAL-ED           NEPAL                          >=50 cm                 0        7      26
6-24 months                   MAL-ED           NEPAL                          >=50 cm                 1        1      26
6-24 months                   MAL-ED           NEPAL                          <48 cm                  0        8      26
6-24 months                   MAL-ED           NEPAL                          <48 cm                  1        3      26
6-24 months                   MAL-ED           NEPAL                          [48-50) cm              0        5      26
6-24 months                   MAL-ED           NEPAL                          [48-50) cm              1        2      26
6-24 months                   MAL-ED           PERU                           >=50 cm                 0       46     213
6-24 months                   MAL-ED           PERU                           >=50 cm                 1        2     213
6-24 months                   MAL-ED           PERU                           <48 cm                  0       76     213
6-24 months                   MAL-ED           PERU                           <48 cm                  1        8     213
6-24 months                   MAL-ED           PERU                           [48-50) cm              0       75     213
6-24 months                   MAL-ED           PERU                           [48-50) cm              1        6     213
6-24 months                   MAL-ED           SOUTH AFRICA                   >=50 cm                 0       32      97
6-24 months                   MAL-ED           SOUTH AFRICA                   >=50 cm                 1        3      97
6-24 months                   MAL-ED           SOUTH AFRICA                   <48 cm                  0       20      97
6-24 months                   MAL-ED           SOUTH AFRICA                   <48 cm                  1        3      97
6-24 months                   MAL-ED           SOUTH AFRICA                   [48-50) cm              0       34      97
6-24 months                   MAL-ED           SOUTH AFRICA                   [48-50) cm              1        5      97
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0       31     120
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        1     120
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                  0       28     120
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       11     120
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0       42     120
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        7     120
6-24 months                   NIH-Birth        BANGLADESH                     >=50 cm                 0       94     522
6-24 months                   NIH-Birth        BANGLADESH                     >=50 cm                 1       27     522
6-24 months                   NIH-Birth        BANGLADESH                     <48 cm                  0      132     522
6-24 months                   NIH-Birth        BANGLADESH                     <48 cm                  1       70     522
6-24 months                   NIH-Birth        BANGLADESH                     [48-50) cm              0      142     522
6-24 months                   NIH-Birth        BANGLADESH                     [48-50) cm              1       57     522
6-24 months                   NIH-Crypto       BANGLADESH                     >=50 cm                 0      151     730
6-24 months                   NIH-Crypto       BANGLADESH                     >=50 cm                 1       14     730
6-24 months                   NIH-Crypto       BANGLADESH                     <48 cm                  0      236     730
6-24 months                   NIH-Crypto       BANGLADESH                     <48 cm                  1       44     730
6-24 months                   NIH-Crypto       BANGLADESH                     [48-50) cm              0      247     730
6-24 months                   NIH-Crypto       BANGLADESH                     [48-50) cm              1       38     730
6-24 months                   PROBIT           BELARUS                        >=50 cm                 0    14933   16598
6-24 months                   PROBIT           BELARUS                        >=50 cm                 1      119   16598
6-24 months                   PROBIT           BELARUS                        <48 cm                  0      175   16598
6-24 months                   PROBIT           BELARUS                        <48 cm                  1        4   16598
6-24 months                   PROBIT           BELARUS                        [48-50) cm              0     1351   16598
6-24 months                   PROBIT           BELARUS                        [48-50) cm              1       16   16598
6-24 months                   PROVIDE          BANGLADESH                     >=50 cm                 0      139     615
6-24 months                   PROVIDE          BANGLADESH                     >=50 cm                 1       10     615
6-24 months                   PROVIDE          BANGLADESH                     <48 cm                  0      165     615
6-24 months                   PROVIDE          BANGLADESH                     <48 cm                  1       55     615
6-24 months                   PROVIDE          BANGLADESH                     [48-50) cm              0      212     615
6-24 months                   PROVIDE          BANGLADESH                     [48-50) cm              1       34     615
6-24 months                   ResPak           PAKISTAN                       >=50 cm                 0       10      32
6-24 months                   ResPak           PAKISTAN                       >=50 cm                 1        1      32
6-24 months                   ResPak           PAKISTAN                       <48 cm                  0        8      32
6-24 months                   ResPak           PAKISTAN                       <48 cm                  1        4      32
6-24 months                   ResPak           PAKISTAN                       [48-50) cm              0        6      32
6-24 months                   ResPak           PAKISTAN                       [48-50) cm              1        3      32
6-24 months                   SAS-CompFeed     INDIA                          >=50 cm                 0      166    1376
6-24 months                   SAS-CompFeed     INDIA                          >=50 cm                 1       44    1376
6-24 months                   SAS-CompFeed     INDIA                          <48 cm                  0      476    1376
6-24 months                   SAS-CompFeed     INDIA                          <48 cm                  1      251    1376
6-24 months                   SAS-CompFeed     INDIA                          [48-50) cm              0      313    1376
6-24 months                   SAS-CompFeed     INDIA                          [48-50) cm              1      126    1376
6-24 months                   ZVITAMBO         ZIMBABWE                       >=50 cm                 0     2848   10690
6-24 months                   ZVITAMBO         ZIMBABWE                       >=50 cm                 1      224   10690
6-24 months                   ZVITAMBO         ZIMBABWE                       <48 cm                  0     3007   10690
6-24 months                   ZVITAMBO         ZIMBABWE                       <48 cm                  1      417   10690
6-24 months                   ZVITAMBO         ZIMBABWE                       [48-50) cm              0     3812   10690
6-24 months                   ZVITAMBO         ZIMBABWE                       [48-50) cm              1      382   10690


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

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
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
![](/tmp/7288e95f-ca7e-4b6c-bc9a-faea9f1cf0d8/bae04374-d418-4d61-a2dc-9fd03f828db1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7288e95f-ca7e-4b6c-bc9a-faea9f1cf0d8/bae04374-d418-4d61-a2dc-9fd03f828db1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7288e95f-ca7e-4b6c-bc9a-faea9f1cf0d8/bae04374-d418-4d61-a2dc-9fd03f828db1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7288e95f-ca7e-4b6c-bc9a-faea9f1cf0d8/bae04374-d418-4d61-a2dc-9fd03f828db1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA         >=50 cm              NA                0.3125000   0.0842832   0.5407168
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA         <48 cm               NA                0.5416667   0.4000278   0.6833055
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA         [48-50) cm           NA                0.5500000   0.3950813   0.7049187
0-24 months (no birth wast)   COHORTS          GUATEMALA     >=50 cm              NA                0.0892893   0.0617857   0.1167928
0-24 months (no birth wast)   COHORTS          GUATEMALA     <48 cm               NA                0.1640376   0.1055593   0.2225159
0-24 months (no birth wast)   COHORTS          GUATEMALA     [48-50) cm           NA                0.1109736   0.0717482   0.1501990
0-24 months (no birth wast)   COHORTS          INDIA         >=50 cm              NA                0.1455227   0.1268309   0.1642145
0-24 months (no birth wast)   COHORTS          INDIA         <48 cm               NA                0.2267679   0.2107744   0.2427615
0-24 months (no birth wast)   COHORTS          INDIA         [48-50) cm           NA                0.1867681   0.1709253   0.2026109
0-24 months (no birth wast)   COHORTS          PHILIPPINES   >=50 cm              NA                0.2443156   0.2193175   0.2693136
0-24 months (no birth wast)   COHORTS          PHILIPPINES   <48 cm               NA                0.3800801   0.3450564   0.4151038
0-24 months (no birth wast)   COHORTS          PHILIPPINES   [48-50) cm           NA                0.3084942   0.2817517   0.3352367
0-24 months (no birth wast)   EE               PAKISTAN      >=50 cm              NA                0.4778496   0.2657854   0.6899138
0-24 months (no birth wast)   EE               PAKISTAN      <48 cm               NA                0.6102486   0.5350849   0.6854123
0-24 months (no birth wast)   EE               PAKISTAN      [48-50) cm           NA                0.4303598   0.2924433   0.5682763
0-24 months (no birth wast)   GMS-Nepal        NEPAL         >=50 cm              NA                0.3865292   0.2937367   0.4793218
0-24 months (no birth wast)   GMS-Nepal        NEPAL         <48 cm               NA                0.5363453   0.4839685   0.5887220
0-24 months (no birth wast)   GMS-Nepal        NEPAL         [48-50) cm           NA                0.4969344   0.4274804   0.5663884
0-24 months (no birth wast)   IRC              INDIA         >=50 cm              NA                0.5469069   0.4643642   0.6294496
0-24 months (no birth wast)   IRC              INDIA         <48 cm               NA                0.5637960   0.4708344   0.6567577
0-24 months (no birth wast)   IRC              INDIA         [48-50) cm           NA                0.4807985   0.3967455   0.5648516
0-24 months (no birth wast)   JiVitA-3         BANGLADESH    >=50 cm              NA                0.1822824   0.1578182   0.2067465
0-24 months (no birth wast)   JiVitA-3         BANGLADESH    <48 cm               NA                0.1773691   0.1705705   0.1841678
0-24 months (no birth wast)   JiVitA-3         BANGLADESH    [48-50) cm           NA                0.1678792   0.1551556   0.1806028
0-24 months (no birth wast)   JiVitA-4         BANGLADESH    >=50 cm              NA                0.2353383   0.2087520   0.2619247
0-24 months (no birth wast)   JiVitA-4         BANGLADESH    <48 cm               NA                0.3074414   0.2835217   0.3313612
0-24 months (no birth wast)   JiVitA-4         BANGLADESH    [48-50) cm           NA                0.2275949   0.1963375   0.2588523
0-24 months (no birth wast)   Keneba           GAMBIA        >=50 cm              NA                0.3661288   0.3319225   0.4003351
0-24 months (no birth wast)   Keneba           GAMBIA        <48 cm               NA                0.4179127   0.3617988   0.4740267
0-24 months (no birth wast)   Keneba           GAMBIA        [48-50) cm           NA                0.3936775   0.3498596   0.4374954
0-24 months (no birth wast)   MAL-ED           BANGLADESH    >=50 cm              NA                0.2051282   0.0781213   0.3321351
0-24 months (no birth wast)   MAL-ED           BANGLADESH    <48 cm               NA                0.2792793   0.1956343   0.3629242
0-24 months (no birth wast)   MAL-ED           BANGLADESH    [48-50) cm           NA                0.1898734   0.1031985   0.2765483
0-24 months (no birth wast)   NIH-Birth        BANGLADESH    >=50 cm              NA                0.2333599   0.1609232   0.3057967
0-24 months (no birth wast)   NIH-Birth        BANGLADESH    <48 cm               NA                0.3286189   0.2671477   0.3900900
0-24 months (no birth wast)   NIH-Birth        BANGLADESH    [48-50) cm           NA                0.3025234   0.2419818   0.3630649
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH    >=50 cm              NA                0.1134639   0.0654011   0.1615267
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH    <48 cm               NA                0.1626543   0.1199679   0.2053408
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH    [48-50) cm           NA                0.1422462   0.1023590   0.1821334
0-24 months (no birth wast)   PROBIT           BELARUS       >=50 cm              NA                0.0659149   0.0540009   0.0778289
0-24 months (no birth wast)   PROBIT           BELARUS       <48 cm               NA                0.0758928   0.0497187   0.1020669
0-24 months (no birth wast)   PROBIT           BELARUS       [48-50) cm           NA                0.0891977   0.0744454   0.1039499
0-24 months (no birth wast)   PROVIDE          BANGLADESH    >=50 cm              NA                0.1003976   0.0538401   0.1469552
0-24 months (no birth wast)   PROVIDE          BANGLADESH    <48 cm               NA                0.2589140   0.2032017   0.3146263
0-24 months (no birth wast)   PROVIDE          BANGLADESH    [48-50) cm           NA                0.1544305   0.1120845   0.1967765
0-24 months (no birth wast)   ResPak           PAKISTAN      >=50 cm              NA                0.4166667   0.1342618   0.6990715
0-24 months (no birth wast)   ResPak           PAKISTAN      <48 cm               NA                0.4666667   0.2110630   0.7222704
0-24 months (no birth wast)   ResPak           PAKISTAN      [48-50) cm           NA                0.3571429   0.1030314   0.6112543
0-24 months (no birth wast)   SAS-CompFeed     INDIA         >=50 cm              NA                0.2637020   0.2174764   0.3099276
0-24 months (no birth wast)   SAS-CompFeed     INDIA         <48 cm               NA                0.4024206   0.3440764   0.4607648
0-24 months (no birth wast)   SAS-CompFeed     INDIA         [48-50) cm           NA                0.3397383   0.2680299   0.4114467
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE      >=50 cm              NA                0.0778582   0.0694240   0.0862925
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE      <48 cm               NA                0.1231855   0.1131826   0.1331884
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE      [48-50) cm           NA                0.1043970   0.0959439   0.1128501
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA         >=50 cm              NA                0.3333333   0.0935843   0.5730824
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA         <48 cm               NA                0.4130435   0.2700452   0.5560417
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA         [48-50) cm           NA                0.5250000   0.3694732   0.6805268
0-6 months (no birth wast)    COHORTS          GUATEMALA     >=50 cm              NA                0.0148148   0.0030414   0.0265882
0-6 months (no birth wast)    COHORTS          GUATEMALA     <48 cm               NA                0.0397351   0.0085594   0.0709108
0-6 months (no birth wast)    COHORTS          GUATEMALA     [48-50) cm           NA                0.0253165   0.0053049   0.0453280
0-6 months (no birth wast)    COHORTS          INDIA         >=50 cm              NA                0.0808706   0.0659785   0.0957628
0-6 months (no birth wast)    COHORTS          INDIA         <48 cm               NA                0.0842210   0.0732952   0.0951469
0-6 months (no birth wast)    COHORTS          INDIA         [48-50) cm           NA                0.0950916   0.0828380   0.1073452
0-6 months (no birth wast)    COHORTS          PHILIPPINES   >=50 cm              NA                0.0955173   0.0781830   0.1128516
0-6 months (no birth wast)    COHORTS          PHILIPPINES   <48 cm               NA                0.0893112   0.0687641   0.1098583
0-6 months (no birth wast)    COHORTS          PHILIPPINES   [48-50) cm           NA                0.0968968   0.0796391   0.1141545
0-6 months (no birth wast)    EE               PAKISTAN      >=50 cm              NA                0.3333333   0.1443382   0.5223284
0-6 months (no birth wast)    EE               PAKISTAN      <48 cm               NA                0.2111801   0.1480023   0.2743580
0-6 months (no birth wast)    EE               PAKISTAN      [48-50) cm           NA                0.2264151   0.1135054   0.3393248
0-6 months (no birth wast)    GMS-Nepal        NEPAL         >=50 cm              NA                0.1899373   0.1137365   0.2661380
0-6 months (no birth wast)    GMS-Nepal        NEPAL         <48 cm               NA                0.1696762   0.1299365   0.2094160
0-6 months (no birth wast)    GMS-Nepal        NEPAL         [48-50) cm           NA                0.2387402   0.1790475   0.2984329
0-6 months (no birth wast)    IRC              INDIA         >=50 cm              NA                0.3737668   0.2896454   0.4578882
0-6 months (no birth wast)    IRC              INDIA         <48 cm               NA                0.3203831   0.2329778   0.4077884
0-6 months (no birth wast)    IRC              INDIA         [48-50) cm           NA                0.3665436   0.2842561   0.4488311
0-6 months (no birth wast)    JiVitA-3         BANGLADESH    >=50 cm              NA                0.1217958   0.1008032   0.1427884
0-6 months (no birth wast)    JiVitA-3         BANGLADESH    <48 cm               NA                0.0659075   0.0614964   0.0703186
0-6 months (no birth wast)    JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0989735   0.0887072   0.1092399
0-6 months (no birth wast)    JiVitA-4         BANGLADESH    >=50 cm              NA                0.0292954   0.0192416   0.0393491
0-6 months (no birth wast)    JiVitA-4         BANGLADESH    <48 cm               NA                0.0291679   0.0210698   0.0372660
0-6 months (no birth wast)    JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0299612   0.0183929   0.0415294
0-6 months (no birth wast)    Keneba           GAMBIA        >=50 cm              NA                0.1113752   0.0888160   0.1339345
0-6 months (no birth wast)    Keneba           GAMBIA        <48 cm               NA                0.1320961   0.0927159   0.1714762
0-6 months (no birth wast)    Keneba           GAMBIA        [48-50) cm           NA                0.1205707   0.0917838   0.1493575
0-6 months (no birth wast)    NIH-Birth        BANGLADESH    >=50 cm              NA                0.0625000   0.0205285   0.1044715
0-6 months (no birth wast)    NIH-Birth        BANGLADESH    <48 cm               NA                0.0779817   0.0423553   0.1136080
0-6 months (no birth wast)    NIH-Birth        BANGLADESH    [48-50) cm           NA                0.0917431   0.0533904   0.1300959
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH    >=50 cm              NA                0.0359281   0.0076825   0.0641738
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH    <48 cm               NA                0.0208333   0.0043270   0.0373396
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH    [48-50) cm           NA                0.0272109   0.0086009   0.0458208
0-6 months (no birth wast)    PROBIT           BELARUS       >=50 cm              NA                0.0597119   0.0486137   0.0708100
0-6 months (no birth wast)    PROBIT           BELARUS       <48 cm               NA                0.0571364   0.0365345   0.0777383
0-6 months (no birth wast)    PROBIT           BELARUS       [48-50) cm           NA                0.0782564   0.0627493   0.0937634
0-6 months (no birth wast)    PROVIDE          BANGLADESH    >=50 cm              NA                0.0542169   0.0197442   0.0886896
0-6 months (no birth wast)    PROVIDE          BANGLADESH    <48 cm               NA                0.0675105   0.0355437   0.0994774
0-6 months (no birth wast)    PROVIDE          BANGLADESH    [48-50) cm           NA                0.0428571   0.0191168   0.0665975
0-6 months (no birth wast)    SAS-CompFeed     INDIA         >=50 cm              NA                0.0951832   0.0555614   0.1348050
0-6 months (no birth wast)    SAS-CompFeed     INDIA         <48 cm               NA                0.1365927   0.1032717   0.1699136
0-6 months (no birth wast)    SAS-CompFeed     INDIA         [48-50) cm           NA                0.1233237   0.0693453   0.1773020
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE      >=50 cm              NA                0.0250518   0.0201410   0.0299627
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE      <48 cm               NA                0.0324178   0.0268666   0.0379689
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE      [48-50) cm           NA                0.0377508   0.0324631   0.0430385
6-24 months                   COHORTS          GUATEMALA     >=50 cm              NA                0.0961579   0.0656479   0.1266678
6-24 months                   COHORTS          GUATEMALA     <48 cm               NA                0.1348631   0.0774413   0.1922850
6-24 months                   COHORTS          GUATEMALA     [48-50) cm           NA                0.1037343   0.0631137   0.1443549
6-24 months                   COHORTS          INDIA         >=50 cm              NA                0.0788958   0.0644153   0.0933762
6-24 months                   COHORTS          INDIA         <48 cm               NA                0.1615669   0.1472189   0.1759150
6-24 months                   COHORTS          INDIA         [48-50) cm           NA                0.1072113   0.0943456   0.1200771
6-24 months                   COHORTS          PHILIPPINES   >=50 cm              NA                0.2024194   0.1782230   0.2266158
6-24 months                   COHORTS          PHILIPPINES   <48 cm               NA                0.3540214   0.3188050   0.3892377
6-24 months                   COHORTS          PHILIPPINES   [48-50) cm           NA                0.2654841   0.2390520   0.2919161
6-24 months                   EE               PAKISTAN      >=50 cm              NA                0.3750000   0.1809041   0.5690959
6-24 months                   EE               PAKISTAN      <48 cm               NA                0.5250000   0.4474588   0.6025412
6-24 months                   EE               PAKISTAN      [48-50) cm           NA                0.3207547   0.1948250   0.4466844
6-24 months                   GMS-Nepal        NEPAL         >=50 cm              NA                0.3253107   0.2322120   0.4184094
6-24 months                   GMS-Nepal        NEPAL         <48 cm               NA                0.5184459   0.4626944   0.5741973
6-24 months                   GMS-Nepal        NEPAL         [48-50) cm           NA                0.4662524   0.3929500   0.5395548
6-24 months                   IRC              INDIA         >=50 cm              NA                0.3130960   0.2360971   0.3900948
6-24 months                   IRC              INDIA         <48 cm               NA                0.3681042   0.2775410   0.4586675
6-24 months                   IRC              INDIA         [48-50) cm           NA                0.2777343   0.2026861   0.3527824
6-24 months                   JiVitA-3         BANGLADESH    >=50 cm              NA                0.1170108   0.0932967   0.1407250
6-24 months                   JiVitA-3         BANGLADESH    <48 cm               NA                0.1849683   0.1767522   0.1931844
6-24 months                   JiVitA-3         BANGLADESH    [48-50) cm           NA                0.1258487   0.1126575   0.1390399
6-24 months                   JiVitA-4         BANGLADESH    >=50 cm              NA                0.2211737   0.1946351   0.2477123
6-24 months                   JiVitA-4         BANGLADESH    <48 cm               NA                0.2931201   0.2697793   0.3164610
6-24 months                   JiVitA-4         BANGLADESH    [48-50) cm           NA                0.2101523   0.1787117   0.2415928
6-24 months                   Keneba           GAMBIA        >=50 cm              NA                0.3213957   0.2878043   0.3549871
6-24 months                   Keneba           GAMBIA        <48 cm               NA                0.3613638   0.3043648   0.4183627
6-24 months                   Keneba           GAMBIA        [48-50) cm           NA                0.3416752   0.2986279   0.3847226
6-24 months                   MAL-ED           BANGLADESH    >=50 cm              NA                0.1282051   0.0230326   0.2333777
6-24 months                   MAL-ED           BANGLADESH    <48 cm               NA                0.2222222   0.1401344   0.3043100
6-24 months                   MAL-ED           BANGLADESH    [48-50) cm           NA                0.1891892   0.0997420   0.2786364
6-24 months                   NIH-Birth        BANGLADESH    >=50 cm              NA                0.2290279   0.1550303   0.3030255
6-24 months                   NIH-Birth        BANGLADESH    <48 cm               NA                0.3301873   0.2645371   0.3958376
6-24 months                   NIH-Birth        BANGLADESH    [48-50) cm           NA                0.2834947   0.2203664   0.3466231
6-24 months                   NIH-Crypto       BANGLADESH    >=50 cm              NA                0.0881896   0.0447068   0.1316724
6-24 months                   NIH-Crypto       BANGLADESH    <48 cm               NA                0.1533547   0.1111235   0.1955859
6-24 months                   NIH-Crypto       BANGLADESH    [48-50) cm           NA                0.1329034   0.0935977   0.1722091
6-24 months                   PROVIDE          BANGLADESH    >=50 cm              NA                0.0646456   0.0247663   0.1045248
6-24 months                   PROVIDE          BANGLADESH    <48 cm               NA                0.2500588   0.1923591   0.3077585
6-24 months                   PROVIDE          BANGLADESH    [48-50) cm           NA                0.1405103   0.0966660   0.1843545
6-24 months                   SAS-CompFeed     INDIA         >=50 cm              NA                0.2058709   0.1334129   0.2783289
6-24 months                   SAS-CompFeed     INDIA         <48 cm               NA                0.3472324   0.3032259   0.3912388
6-24 months                   SAS-CompFeed     INDIA         [48-50) cm           NA                0.2853554   0.2248906   0.3458202
6-24 months                   ZVITAMBO         ZIMBABWE      >=50 cm              NA                0.0733332   0.0639337   0.0827326
6-24 months                   ZVITAMBO         ZIMBABWE      <48 cm               NA                0.1218820   0.1108006   0.1329634
6-24 months                   ZVITAMBO         ZIMBABWE      [48-50) cm           NA                0.0910899   0.0822507   0.0999290


### Parameter: E(Y)


agecat                        studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA         NA                   NA                0.5096154   0.4130727   0.6061580
0-24 months (no birth wast)   COHORTS          GUATEMALA     NA                   NA                0.1096224   0.0882390   0.1310059
0-24 months (no birth wast)   COHORTS          INDIA         NA                   NA                0.1948438   0.1851392   0.2045483
0-24 months (no birth wast)   COHORTS          PHILIPPINES   NA                   NA                0.3035536   0.2871278   0.3199794
0-24 months (no birth wast)   EE               PAKISTAN      NA                   NA                0.5666667   0.5038429   0.6294904
0-24 months (no birth wast)   GMS-Nepal        NEPAL         NA                   NA                0.5007587   0.4625551   0.5389624
0-24 months (no birth wast)   IRC              INDIA         NA                   NA                0.5307692   0.4811763   0.5803621
0-24 months (no birth wast)   JiVitA-3         BANGLADESH    NA                   NA                0.1757133   0.1696451   0.1817815
0-24 months (no birth wast)   JiVitA-4         BANGLADESH    NA                   NA                0.2663530   0.2512746   0.2814315
0-24 months (no birth wast)   Keneba           GAMBIA        NA                   NA                0.3865546   0.3622809   0.4108284
0-24 months (no birth wast)   MAL-ED           BANGLADESH    NA                   NA                0.2358079   0.1807067   0.2909091
0-24 months (no birth wast)   NIH-Birth        BANGLADESH    NA                   NA                0.2977625   0.2605481   0.3349769
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH    NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   PROBIT           BELARUS       NA                   NA                0.0680135   0.0562135   0.0798135
0-24 months (no birth wast)   PROVIDE          BANGLADESH    NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ResPak           PAKISTAN      NA                   NA                0.4146341   0.2619604   0.5673079
0-24 months (no birth wast)   SAS-CompFeed     INDIA         NA                   NA                0.3626595   0.3120201   0.4132989
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE      NA                   NA                0.1019924   0.0968873   0.1070976
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA         NA                   NA                0.4455446   0.3481293   0.5429598
0-6 months (no birth wast)    COHORTS          GUATEMALA     NA                   NA                0.0226986   0.0123257   0.0330715
0-6 months (no birth wast)    COHORTS          INDIA         NA                   NA                0.0882353   0.0810887   0.0953819
0-6 months (no birth wast)    COHORTS          PHILIPPINES   NA                   NA                0.0946488   0.0841546   0.1051431
0-6 months (no birth wast)    EE               PAKISTAN      NA                   NA                0.2268908   0.1735692   0.2802123
0-6 months (no birth wast)    GMS-Nepal        NEPAL         NA                   NA                0.1918877   0.1613794   0.2223959
0-6 months (no birth wast)    IRC              INDIA         NA                   NA                0.3494624   0.3009450   0.3979798
0-6 months (no birth wast)    JiVitA-3         BANGLADESH    NA                   NA                0.0760414   0.0718411   0.0802418
0-6 months (no birth wast)    JiVitA-4         BANGLADESH    NA                   NA                0.0289057   0.0236101   0.0342013
0-6 months (no birth wast)    Keneba           GAMBIA        NA                   NA                0.1187215   0.1025243   0.1349187
0-6 months (no birth wast)    NIH-Birth        BANGLADESH    NA                   NA                0.0797872   0.0574049   0.1021695
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH    NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    PROBIT           BELARUS       NA                   NA                0.0612233   0.0502388   0.0722078
0-6 months (no birth wast)    PROVIDE          BANGLADESH    NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    SAS-CompFeed     INDIA         NA                   NA                0.1264525   0.0961151   0.1567899
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE      NA                   NA                0.0322167   0.0292105   0.0352229
6-24 months                   COHORTS          GUATEMALA     NA                   NA                0.1059147   0.0835302   0.1282992
6-24 months                   COHORTS          INDIA         NA                   NA                0.1236829   0.1154669   0.1318989
6-24 months                   COHORTS          PHILIPPINES   NA                   NA                0.2665953   0.2502200   0.2829706
6-24 months                   EE               PAKISTAN      NA                   NA                0.4641350   0.4005079   0.5277621
6-24 months                   GMS-Nepal        NEPAL         NA                   NA                0.4719864   0.4316361   0.5123367
6-24 months                   IRC              INDIA         NA                   NA                0.3145780   0.2684931   0.3606629
6-24 months                   JiVitA-3         BANGLADESH    NA                   NA                0.1671558   0.1603545   0.1739571
6-24 months                   JiVitA-4         BANGLADESH    NA                   NA                0.2510058   0.2361044   0.2659072
6-24 months                   Keneba           GAMBIA        NA                   NA                0.3362475   0.3122276   0.3602674
6-24 months                   MAL-ED           BANGLADESH    NA                   NA                0.1933962   0.1401044   0.2466881
6-24 months                   NIH-Birth        BANGLADESH    NA                   NA                0.2950192   0.2558591   0.3341792
6-24 months                   NIH-Crypto       BANGLADESH    NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   PROVIDE          BANGLADESH    NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   SAS-CompFeed     INDIA         NA                   NA                0.3059593   0.2629068   0.3490118
6-24 months                   ZVITAMBO         ZIMBABWE      NA                   NA                0.0956969   0.0901201   0.1012737


### Parameter: RR


agecat                        studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA         <48 cm               >=50 cm           1.7333333   0.7979976   3.7649791
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA         [48-50) cm           >=50 cm           1.7600000   0.8045947   3.8498887
0-24 months (no birth wast)   COHORTS          GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          GUATEMALA     <48 cm               >=50 cm           1.8371476   1.1472863   2.9418212
0-24 months (no birth wast)   COHORTS          GUATEMALA     [48-50) cm           >=50 cm           1.2428543   0.7776224   1.9864229
0-24 months (no birth wast)   COHORTS          INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          INDIA         <48 cm               >=50 cm           1.5582999   1.3462411   1.8037619
0-24 months (no birth wast)   COHORTS          INDIA         [48-50) cm           >=50 cm           1.2834295   1.1005987   1.4966320
0-24 months (no birth wast)   COHORTS          PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          PHILIPPINES   <48 cm               >=50 cm           1.5556932   1.3560840   1.7846840
0-24 months (no birth wast)   COHORTS          PHILIPPINES   [48-50) cm           >=50 cm           1.2626876   1.1047160   1.4432488
0-24 months (no birth wast)   EE               PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   EE               PAKISTAN      <48 cm               >=50 cm           1.2770727   0.8061549   2.0230783
0-24 months (no birth wast)   EE               PAKISTAN      [48-50) cm           >=50 cm           0.9006177   0.5220599   1.5536766
0-24 months (no birth wast)   GMS-Nepal        NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   GMS-Nepal        NEPAL         <48 cm               >=50 cm           1.3875931   1.0704858   1.7986365
0-24 months (no birth wast)   GMS-Nepal        NEPAL         [48-50) cm           >=50 cm           1.2856323   0.9744575   1.6961749
0-24 months (no birth wast)   IRC              INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   IRC              INDIA         <48 cm               >=50 cm           1.0308812   0.8243414   1.2891698
0-24 months (no birth wast)   IRC              INDIA         [48-50) cm           >=50 cm           0.8791232   0.6977281   1.1076773
0-24 months (no birth wast)   JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.9730461   0.8464939   1.1185180
0-24 months (no birth wast)   JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.9209844   0.7905593   1.0729269
0-24 months (no birth wast)   JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.3063806   1.1415613   1.4949967
0-24 months (no birth wast)   JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9670965   0.8098668   1.1548511
0-24 months (no birth wast)   Keneba           GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   Keneba           GAMBIA        <48 cm               >=50 cm           1.1414363   0.9699611   1.3432260
0-24 months (no birth wast)   Keneba           GAMBIA        [48-50) cm           >=50 cm           1.0752431   0.9301847   1.2429228
0-24 months (no birth wast)   MAL-ED           BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           BANGLADESH    <48 cm               >=50 cm           1.3614865   0.6843977   2.7084331
0-24 months (no birth wast)   MAL-ED           BANGLADESH    [48-50) cm           >=50 cm           0.9256329   0.4289036   1.9976429
0-24 months (no birth wast)   NIH-Birth        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Birth        BANGLADESH    <48 cm               >=50 cm           1.4082061   0.9804381   2.0226106
0-24 months (no birth wast)   NIH-Birth        BANGLADESH    [48-50) cm           >=50 cm           1.2963811   0.8965132   1.8746002
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH    <48 cm               >=50 cm           1.4335339   0.8709264   2.3595787
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH    [48-50) cm           >=50 cm           1.2536692   0.7541380   2.0840833
0-24 months (no birth wast)   PROBIT           BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROBIT           BELARUS       <48 cm               >=50 cm           1.1513760   0.7926234   1.6725051
0-24 months (no birth wast)   PROBIT           BELARUS       [48-50) cm           >=50 cm           1.3532250   1.1737337   1.5601647
0-24 months (no birth wast)   PROVIDE          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH    <48 cm               >=50 cm           2.5788852   1.5466754   4.2999642
0-24 months (no birth wast)   PROVIDE          BANGLADESH    [48-50) cm           >=50 cm           1.5381882   0.8968782   2.6380648
0-24 months (no birth wast)   ResPak           PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ResPak           PAKISTAN      <48 cm               >=50 cm           1.1200000   0.4685596   2.6771410
0-24 months (no birth wast)   ResPak           PAKISTAN      [48-50) cm           >=50 cm           0.8571429   0.3208401   2.2899064
0-24 months (no birth wast)   SAS-CompFeed     INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   SAS-CompFeed     INDIA         <48 cm               >=50 cm           1.5260432   1.2770104   1.8236404
0-24 months (no birth wast)   SAS-CompFeed     INDIA         [48-50) cm           >=50 cm           1.2883417   1.0456177   1.5874104
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE      <48 cm               >=50 cm           1.5821773   1.3818830   1.8115030
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE      [48-50) cm           >=50 cm           1.3408604   1.1712670   1.5350100
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA         <48 cm               >=50 cm           1.2391304   0.5577621   2.7528657
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA         [48-50) cm           >=50 cm           1.5750000   0.7235318   3.4284946
0-6 months (no birth wast)    COHORTS          GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    COHORTS          GUATEMALA     <48 cm               >=50 cm           2.6821192   0.8779688   8.1936434
0-6 months (no birth wast)    COHORTS          GUATEMALA     [48-50) cm           >=50 cm           1.7088608   0.5570751   5.2420314
0-6 months (no birth wast)    COHORTS          INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    COHORTS          INDIA         <48 cm               >=50 cm           1.0414292   0.8313916   1.3045293
0-6 months (no birth wast)    COHORTS          INDIA         [48-50) cm           >=50 cm           1.1758480   0.9391559   1.4721927
0-6 months (no birth wast)    COHORTS          PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    COHORTS          PHILIPPINES   <48 cm               >=50 cm           0.9350258   0.6976020   1.2532552
0-6 months (no birth wast)    COHORTS          PHILIPPINES   [48-50) cm           >=50 cm           1.0144423   0.7868114   1.3079288
0-6 months (no birth wast)    EE               PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    EE               PAKISTAN      <48 cm               >=50 cm           0.6335404   0.3337033   1.2027851
0-6 months (no birth wast)    EE               PAKISTAN      [48-50) cm           >=50 cm           0.6792453   0.3192243   1.4452978
0-6 months (no birth wast)    GMS-Nepal        NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    GMS-Nepal        NEPAL         <48 cm               >=50 cm           0.8933279   0.5615286   1.4211827
0-6 months (no birth wast)    GMS-Nepal        NEPAL         [48-50) cm           >=50 cm           1.2569424   0.7837699   2.0157753
0-6 months (no birth wast)    IRC              INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    IRC              INDIA         <48 cm               >=50 cm           0.8571738   0.6016249   1.2212708
0-6 months (no birth wast)    IRC              INDIA         [48-50) cm           >=50 cm           0.9806746   0.7133698   1.3481405
0-6 months (no birth wast)    JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.5411312   0.4507553   0.6496274
0-6 months (no birth wast)    JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.8126185   0.6652792   0.9925891
0-6 months (no birth wast)    JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.9956485   0.6357465   1.5592944
0-6 months (no birth wast)    JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           1.0227266   0.6085892   1.7186793
0-6 months (no birth wast)    Keneba           GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    Keneba           GAMBIA        <48 cm               >=50 cm           1.1860452   0.8272438   1.7004700
0-6 months (no birth wast)    Keneba           GAMBIA        [48-50) cm           >=50 cm           1.0825626   0.7915559   1.4805548
0-6 months (no birth wast)    NIH-Birth        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    NIH-Birth        BANGLADESH    <48 cm               >=50 cm           1.2477064   0.5538262   2.8109386
0-6 months (no birth wast)    NIH-Birth        BANGLADESH    [48-50) cm           >=50 cm           1.4678899   0.6655069   3.2376837
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH    <48 cm               >=50 cm           0.5798611   0.1899253   1.7703747
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH    [48-50) cm           >=50 cm           0.7573696   0.2671556   2.1470963
0-6 months (no birth wast)    PROBIT           BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROBIT           BELARUS       <48 cm               >=50 cm           0.9568682   0.6371939   1.4369203
0-6 months (no birth wast)    PROBIT           BELARUS       [48-50) cm           >=50 cm           1.3105669   1.1113467   1.5454993
0-6 months (no birth wast)    PROVIDE          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROVIDE          BANGLADESH    <48 cm               >=50 cm           1.2451946   0.5635598   2.7512779
0-6 months (no birth wast)    PROVIDE          BANGLADESH    [48-50) cm           >=50 cm           0.7904762   0.3401375   1.8370590
0-6 months (no birth wast)    SAS-CompFeed     INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    SAS-CompFeed     INDIA         <48 cm               >=50 cm           1.4350505   0.8072065   2.5512305
0-6 months (no birth wast)    SAS-CompFeed     INDIA         [48-50) cm           >=50 cm           1.2956457   0.6640331   2.5280334
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE      <48 cm               >=50 cm           1.2940282   0.9975514   1.6786193
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE      [48-50) cm           >=50 cm           1.5069080   1.1842903   1.9174113
6-24 months                   COHORTS          GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          GUATEMALA     <48 cm               >=50 cm           1.4025182   0.8243913   2.3860723
6-24 months                   COHORTS          GUATEMALA     [48-50) cm           >=50 cm           1.0787915   0.6517379   1.7856736
6-24 months                   COHORTS          INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          INDIA         <48 cm               >=50 cm           2.0478523   1.6706728   2.5101857
6-24 months                   COHORTS          INDIA         [48-50) cm           >=50 cm           1.3588979   1.0917961   1.6913448
6-24 months                   COHORTS          PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          PHILIPPINES   <48 cm               >=50 cm           1.7489497   1.4979006   2.0420748
6-24 months                   COHORTS          PHILIPPINES   [48-50) cm           >=50 cm           1.3115543   1.1231774   1.5315254
6-24 months                   EE               PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   EE               PAKISTAN      <48 cm               >=50 cm           1.4000000   0.8172766   2.3982088
6-24 months                   EE               PAKISTAN      [48-50) cm           >=50 cm           0.8553459   0.4466890   1.6378658
6-24 months                   GMS-Nepal        NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   GMS-Nepal        NEPAL         <48 cm               >=50 cm           1.5936945   1.1739392   2.1635381
6-24 months                   GMS-Nepal        NEPAL         [48-50) cm           >=50 cm           1.4332525   1.0343716   1.9859524
6-24 months                   IRC              INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   IRC              INDIA         <48 cm               >=50 cm           1.1756913   0.8304464   1.6644664
6-24 months                   IRC              INDIA         [48-50) cm           >=50 cm           0.8870580   0.6155275   1.2783699
6-24 months                   JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.5807790   1.2875219   1.9408309
6-24 months                   JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.0755304   0.8637700   1.3392054
6-24 months                   JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.3252938   1.1508285   1.5262081
6-24 months                   JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9501685   0.7840654   1.1514602
6-24 months                   Keneba           GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   Keneba           GAMBIA        <48 cm               >=50 cm           1.1243579   0.9314296   1.3572476
6-24 months                   Keneba           GAMBIA        [48-50) cm           >=50 cm           1.0630983   0.9029878   1.2515983
6-24 months                   MAL-ED           BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           BANGLADESH    <48 cm               >=50 cm           1.7333333   0.7049479   4.2619383
6-24 months                   MAL-ED           BANGLADESH    [48-50) cm           >=50 cm           1.4756757   0.5725124   3.8036181
6-24 months                   NIH-Birth        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Birth        BANGLADESH    <48 cm               >=50 cm           1.4416903   0.9882352   2.1032148
6-24 months                   NIH-Birth        BANGLADESH    [48-50) cm           >=50 cm           1.2378174   0.8367431   1.8311377
6-24 months                   NIH-Crypto       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Crypto       BANGLADESH    <48 cm               >=50 cm           1.7389204   0.9891191   3.0571083
6-24 months                   NIH-Crypto       BANGLADESH    [48-50) cm           >=50 cm           1.5070188   0.8488221   2.6755968
6-24 months                   PROVIDE          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   PROVIDE          BANGLADESH    <48 cm               >=50 cm           3.8681514   2.0014570   7.4758518
6-24 months                   PROVIDE          BANGLADESH    [48-50) cm           >=50 cm           2.1735488   1.0885224   4.3401167
6-24 months                   SAS-CompFeed     INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   SAS-CompFeed     INDIA         <48 cm               >=50 cm           1.6866511   1.2413457   2.2916999
6-24 months                   SAS-CompFeed     INDIA         [48-50) cm           >=50 cm           1.3860891   0.9453789   2.0322466
6-24 months                   ZVITAMBO         ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ZVITAMBO         ZIMBABWE      <48 cm               >=50 cm           1.6620308   1.4203805   1.9447934
6-24 months                   ZVITAMBO         ZIMBABWE      [48-50) cm           >=50 cm           1.2421375   1.0577274   1.4586988


### Parameter: PAR


agecat                        studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA         >=50 cm              NA                 0.1971154   -0.0159054    0.4101362
0-24 months (no birth wast)   COHORTS          GUATEMALA     >=50 cm              NA                 0.0203331   -0.0006660    0.0413322
0-24 months (no birth wast)   COHORTS          INDIA         >=50 cm              NA                 0.0493211    0.0321606    0.0664815
0-24 months (no birth wast)   COHORTS          PHILIPPINES   >=50 cm              NA                 0.0592381    0.0385770    0.0798992
0-24 months (no birth wast)   EE               PAKISTAN      >=50 cm              NA                 0.0888171   -0.1124931    0.2901273
0-24 months (no birth wast)   GMS-Nepal        NEPAL         >=50 cm              NA                 0.1142295    0.0288938    0.1995652
0-24 months (no birth wast)   IRC              INDIA         >=50 cm              NA                -0.0161377   -0.0821023    0.0498269
0-24 months (no birth wast)   JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0065691   -0.0305185    0.0173804
0-24 months (no birth wast)   JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0310147    0.0075980    0.0544314
0-24 months (no birth wast)   Keneba           GAMBIA        >=50 cm              NA                 0.0204258   -0.0041486    0.0450001
0-24 months (no birth wast)   MAL-ED           BANGLADESH    >=50 cm              NA                 0.0306797   -0.0862501    0.1476095
0-24 months (no birth wast)   NIH-Birth        BANGLADESH    >=50 cm              NA                 0.0644026   -0.0010279    0.1298330
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH    >=50 cm              NA                 0.0297722   -0.0139360    0.0734804
0-24 months (no birth wast)   PROBIT           BELARUS       >=50 cm              NA                 0.0020986    0.0007655    0.0034317
0-24 months (no birth wast)   PROVIDE          BANGLADESH    >=50 cm              NA                 0.0771861    0.0330609    0.1213112
0-24 months (no birth wast)   ResPak           PAKISTAN      >=50 cm              NA                -0.0020325   -0.2394717    0.2354067
0-24 months (no birth wast)   SAS-CompFeed     INDIA         >=50 cm              NA                 0.0989575    0.0540231    0.1438920
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.0241342    0.0166216    0.0316469
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA         >=50 cm              NA                 0.1122112   -0.1111633    0.3355858
0-6 months (no birth wast)    COHORTS          GUATEMALA     >=50 cm              NA                 0.0078838   -0.0023448    0.0181124
0-6 months (no birth wast)    COHORTS          INDIA         >=50 cm              NA                 0.0073647   -0.0060143    0.0207436
0-6 months (no birth wast)    COHORTS          PHILIPPINES   >=50 cm              NA                -0.0008685   -0.0145710    0.0128340
0-6 months (no birth wast)    EE               PAKISTAN      >=50 cm              NA                -0.1064426   -0.2835258    0.0706407
0-6 months (no birth wast)    GMS-Nepal        NEPAL         >=50 cm              NA                 0.0019504   -0.0681391    0.0720399
0-6 months (no birth wast)    IRC              INDIA         >=50 cm              NA                -0.0243044   -0.0917296    0.0431208
0-6 months (no birth wast)    JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0457544   -0.0660456   -0.0254632
0-6 months (no birth wast)    JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0003897   -0.0090274    0.0082481
0-6 months (no birth wast)    Keneba           GAMBIA        >=50 cm              NA                 0.0073462   -0.0092094    0.0239019
0-6 months (no birth wast)    NIH-Birth        BANGLADESH    >=50 cm              NA                 0.0172872   -0.0209617    0.0555361
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH    >=50 cm              NA                -0.0092259   -0.0332159    0.0147641
0-6 months (no birth wast)    PROBIT           BELARUS       >=50 cm              NA                 0.0015114    0.0002620    0.0027609
0-6 months (no birth wast)    PROVIDE          BANGLADESH    >=50 cm              NA                -0.0000441   -0.0300327    0.0299445
0-6 months (no birth wast)    SAS-CompFeed     INDIA         >=50 cm              NA                 0.0312693   -0.0233813    0.0859199
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.0071649    0.0027909    0.0115388
6-24 months                   COHORTS          GUATEMALA     >=50 cm              NA                 0.0097569   -0.0128004    0.0323142
6-24 months                   COHORTS          INDIA         >=50 cm              NA                 0.0447871    0.0311328    0.0584415
6-24 months                   COHORTS          PHILIPPINES   >=50 cm              NA                 0.0641759    0.0437857    0.0845661
6-24 months                   EE               PAKISTAN      >=50 cm              NA                 0.0891350   -0.0955041    0.2737741
6-24 months                   GMS-Nepal        NEPAL         >=50 cm              NA                 0.1466757    0.0607262    0.2326252
6-24 months                   IRC              INDIA         >=50 cm              NA                 0.0014820   -0.0601009    0.0630649
6-24 months                   JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0501450    0.0273284    0.0729616
6-24 months                   JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0298321    0.0064656    0.0531986
6-24 months                   Keneba           GAMBIA        >=50 cm              NA                 0.0148518   -0.0090704    0.0387740
6-24 months                   MAL-ED           BANGLADESH    >=50 cm              NA                 0.0651911   -0.0339632    0.1643454
6-24 months                   NIH-Birth        BANGLADESH    >=50 cm              NA                 0.0659912   -0.0005418    0.1325243
6-24 months                   NIH-Crypto       BANGLADESH    >=50 cm              NA                 0.0433172    0.0025817    0.0840528
6-24 months                   PROVIDE          BANGLADESH    >=50 cm              NA                 0.0963301    0.0555790    0.1370811
6-24 months                   SAS-CompFeed     INDIA         >=50 cm              NA                 0.1000884    0.0409333    0.1592435
6-24 months                   ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.0223638    0.0139531    0.0307744


### Parameter: PAF


agecat                        studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA         >=50 cm              NA                 0.3867925   -0.2158991    0.6907445
0-24 months (no birth wast)   COHORTS          GUATEMALA     >=50 cm              NA                 0.1854834   -0.0275587    0.3543557
0-24 months (no birth wast)   COHORTS          INDIA         >=50 cm              NA                 0.2531315    0.1603148    0.3356884
0-24 months (no birth wast)   COHORTS          PHILIPPINES   >=50 cm              NA                 0.1951486    0.1244482    0.2601400
0-24 months (no birth wast)   EE               PAKISTAN      >=50 cm              NA                 0.1567360   -0.2862326    0.4471497
0-24 months (no birth wast)   GMS-Nepal        NEPAL         >=50 cm              NA                 0.2281129    0.0367539    0.3814564
0-24 months (no birth wast)   IRC              INDIA         >=50 cm              NA                -0.0304043   -0.1625265    0.0867021
0-24 months (no birth wast)   JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0373851   -0.1831100    0.0903907
0-24 months (no birth wast)   JiVitA-4         BANGLADESH    >=50 cm              NA                 0.1164421    0.0244413    0.1997667
0-24 months (no birth wast)   Keneba           GAMBIA        >=50 cm              NA                 0.0528406   -0.0129382    0.1143479
0-24 months (no birth wast)   MAL-ED           BANGLADESH    >=50 cm              NA                 0.1301045   -0.5374946    0.5078238
0-24 months (no birth wast)   NIH-Birth        BANGLADESH    >=50 cm              NA                 0.2162884   -0.0364722    0.4074092
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH    >=50 cm              NA                 0.2078539   -0.1620479    0.4600090
0-24 months (no birth wast)   PROBIT           BELARUS       >=50 cm              NA                 0.0308559    0.0101687    0.0511107
0-24 months (no birth wast)   PROVIDE          BANGLADESH    >=50 cm              NA                 0.4346460    0.1330947    0.6313033
0-24 months (no birth wast)   ResPak           PAKISTAN      >=50 cm              NA                -0.0049020   -0.7766780    0.4316202
0-24 months (no birth wast)   SAS-CompFeed     INDIA         >=50 cm              NA                 0.2728662    0.1560925    0.3734816
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.2366276    0.1601864    0.3061110
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA         >=50 cm              NA                 0.2518519   -0.4634357    0.6175263
0-6 months (no birth wast)    COHORTS          GUATEMALA     >=50 cm              NA                 0.3473251   -0.2471956    0.6584461
0-6 months (no birth wast)    COHORTS          INDIA         >=50 cm              NA                 0.0834661   -0.0812570    0.2230946
0-6 months (no birth wast)    COHORTS          PHILIPPINES   >=50 cm              NA                -0.0091761   -0.1648411    0.1256864
0-6 months (no birth wast)    EE               PAKISTAN      >=50 cm              NA                -0.4691358   -1.4972590    0.1357084
0-6 months (no birth wast)    GMS-Nepal        NEPAL         >=50 cm              NA                 0.0101644   -0.4315922    0.3156050
0-6 months (no birth wast)    IRC              INDIA         >=50 cm              NA                -0.0695480   -0.2809636    0.1069746
0-6 months (no birth wast)    JiVitA-3         BANGLADESH    >=50 cm              NA                -0.6017032   -0.8919020   -0.3560180
0-6 months (no birth wast)    JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0134804   -0.3611008    0.2453589
0-6 months (no birth wast)    Keneba           GAMBIA        >=50 cm              NA                 0.0618779   -0.0882632    0.1913050
0-6 months (no birth wast)    NIH-Birth        BANGLADESH    >=50 cm              NA                 0.2166667   -0.4383833    0.5734022
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH    >=50 cm              NA                -0.3455090   -1.6009534    0.3039497
0-6 months (no birth wast)    PROBIT           BELARUS       >=50 cm              NA                 0.0246869    0.0034264    0.0454938
0-6 months (no birth wast)    PROVIDE          BANGLADESH    >=50 cm              NA                -0.0008141   -0.7400909    0.4243813
0-6 months (no birth wast)    SAS-CompFeed     INDIA         >=50 cm              NA                 0.2472812   -0.2681419    0.5532159
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.2223961    0.0759855    0.3456078
6-24 months                   COHORTS          GUATEMALA     >=50 cm              NA                 0.0921199   -0.1471078    0.2814571
6-24 months                   COHORTS          INDIA         >=50 cm              NA                 0.3621126    0.2441320    0.4616779
6-24 months                   COHORTS          PHILIPPINES   >=50 cm              NA                 0.2407240    0.1610892    0.3127993
6-24 months                   EE               PAKISTAN      >=50 cm              NA                 0.1920455   -0.3225373    0.5064105
6-24 months                   GMS-Nepal        NEPAL         >=50 cm              NA                 0.3107626    0.1015518    0.4712570
6-24 months                   IRC              INDIA         >=50 cm              NA                 0.0047112   -0.2116349    0.1824271
6-24 months                   JiVitA-3         BANGLADESH    >=50 cm              NA                 0.2999894    0.1488253    0.4243076
6-24 months                   JiVitA-4         BANGLADESH    >=50 cm              NA                 0.1188503    0.0210851    0.2068516
6-24 months                   Keneba           GAMBIA        >=50 cm              NA                 0.0441692   -0.0297039    0.1127425
6-24 months                   MAL-ED           BANGLADESH    >=50 cm              NA                 0.3370857   -0.4241671    0.6914299
6-24 months                   NIH-Birth        BANGLADESH    >=50 cm              NA                 0.2236846   -0.0369308    0.4187986
6-24 months                   NIH-Crypto       BANGLADESH    >=50 cm              NA                 0.3293916   -0.0558795    0.5740843
6-24 months                   PROVIDE          BANGLADESH    >=50 cm              NA                 0.5984140    0.2813202    0.7756006
6-24 months                   SAS-CompFeed     INDIA         >=50 cm              NA                 0.3271298    0.0971289    0.4985394
6-24 months                   ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.2336936    0.1415844    0.3159193

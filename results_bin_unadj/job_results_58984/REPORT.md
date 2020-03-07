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

**Outcome Variable:** ever_stunted

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

agecat                       studyid          country                        birthlen      ever_stunted   n_cell       n
---------------------------  ---------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          >=50 cm                  0        4      86
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          >=50 cm                  1       12      86
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          <48 cm                   0        2      86
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          <48 cm                   1       28      86
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          [48-50) cm               0        5      86
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          [48-50) cm               1       35      86
0-24 months (no birth st.)   CMIN             BANGLADESH                     >=50 cm                  0        2      17
0-24 months (no birth st.)   CMIN             BANGLADESH                     >=50 cm                  1        0      17
0-24 months (no birth st.)   CMIN             BANGLADESH                     <48 cm                   0        4      17
0-24 months (no birth st.)   CMIN             BANGLADESH                     <48 cm                   1        3      17
0-24 months (no birth st.)   CMIN             BANGLADESH                     [48-50) cm               0        4      17
0-24 months (no birth st.)   CMIN             BANGLADESH                     [48-50) cm               1        4      17
0-24 months (no birth st.)   COHORTS          GUATEMALA                      >=50 cm                  0      174     802
0-24 months (no birth st.)   COHORTS          GUATEMALA                      >=50 cm                  1      263     802
0-24 months (no birth st.)   COHORTS          GUATEMALA                      <48 cm                   0       13     802
0-24 months (no birth st.)   COHORTS          GUATEMALA                      <48 cm                   1      100     802
0-24 months (no birth st.)   COHORTS          GUATEMALA                      [48-50) cm               0       47     802
0-24 months (no birth st.)   COHORTS          GUATEMALA                      [48-50) cm               1      205     802
0-24 months (no birth st.)   COHORTS          INDIA                          >=50 cm                  0     1267    5848
0-24 months (no birth st.)   COHORTS          INDIA                          >=50 cm                  1      159    5848
0-24 months (no birth st.)   COHORTS          INDIA                          <48 cm                   0     1082    5848
0-24 months (no birth st.)   COHORTS          INDIA                          <48 cm                   1      900    5848
0-24 months (no birth st.)   COHORTS          INDIA                          [48-50) cm               0     1822    5848
0-24 months (no birth st.)   COHORTS          INDIA                          [48-50) cm               1      618    5848
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    >=50 cm                  0      538    2863
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    >=50 cm                  1      591    2863
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    <48 cm                   0       88    2863
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    <48 cm                   1      487    2863
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    [48-50) cm               0      327    2863
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    [48-50) cm               1      832    2863
0-24 months (no birth st.)   CONTENT          PERU                           >=50 cm                  0        1       2
0-24 months (no birth st.)   CONTENT          PERU                           >=50 cm                  1        0       2
0-24 months (no birth st.)   CONTENT          PERU                           <48 cm                   0        0       2
0-24 months (no birth st.)   CONTENT          PERU                           <48 cm                   1        1       2
0-24 months (no birth st.)   CONTENT          PERU                           [48-50) cm               0        0       2
0-24 months (no birth st.)   CONTENT          PERU                           [48-50) cm               1        0       2
0-24 months (no birth st.)   EE               PAKISTAN                       >=50 cm                  0        7     140
0-24 months (no birth st.)   EE               PAKISTAN                       >=50 cm                  1       17     140
0-24 months (no birth st.)   EE               PAKISTAN                       <48 cm                   0        6     140
0-24 months (no birth st.)   EE               PAKISTAN                       <48 cm                   1       56     140
0-24 months (no birth st.)   EE               PAKISTAN                       [48-50) cm               0       11     140
0-24 months (no birth st.)   EE               PAKISTAN                       [48-50) cm               1       43     140
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          >=50 cm                  0       72     575
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          >=50 cm                  1       43     575
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          <48 cm                   0       77     575
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          <48 cm                   1      175     575
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          [48-50) cm               0      103     575
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          [48-50) cm               1      105     575
0-24 months (no birth st.)   IRC              INDIA                          >=50 cm                  0       70     345
0-24 months (no birth st.)   IRC              INDIA                          >=50 cm                  1       72     345
0-24 months (no birth st.)   IRC              INDIA                          <48 cm                   0       19     345
0-24 months (no birth st.)   IRC              INDIA                          <48 cm                   1       46     345
0-24 months (no birth st.)   IRC              INDIA                          [48-50) cm               0       52     345
0-24 months (no birth st.)   IRC              INDIA                          [48-50) cm               1       86     345
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     >=50 cm                  0     1188   15071
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     >=50 cm                  1       70   15071
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     <48 cm                   0     5535   15071
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     <48 cm                   1     3190   15071
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     [48-50) cm               0     4345   15071
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     [48-50) cm               1      743   15071
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     >=50 cm                  0      737    3180
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     >=50 cm                  1      348    3180
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     <48 cm                   0      495    3180
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     <48 cm                   1      616    3180
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     [48-50) cm               0      589    3180
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     [48-50) cm               1      395    3180
0-24 months (no birth st.)   Keneba           GAMBIA                         >=50 cm                  0      441    1469
0-24 months (no birth st.)   Keneba           GAMBIA                         >=50 cm                  1      323    1469
0-24 months (no birth st.)   Keneba           GAMBIA                         <48 cm                   0       60    1469
0-24 months (no birth st.)   Keneba           GAMBIA                         <48 cm                   1      150    1469
0-24 months (no birth st.)   Keneba           GAMBIA                         [48-50) cm               0      190    1469
0-24 months (no birth st.)   Keneba           GAMBIA                         [48-50) cm               1      305    1469
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     >=50 cm                  0       27     187
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     >=50 cm                  1       12     187
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     <48 cm                   0       24     187
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     <48 cm                   1       45     187
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     [48-50) cm               0       37     187
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     [48-50) cm               1       42     187
0-24 months (no birth st.)   MAL-ED           BRAZIL                         >=50 cm                  0       30      56
0-24 months (no birth st.)   MAL-ED           BRAZIL                         >=50 cm                  1        0      56
0-24 months (no birth st.)   MAL-ED           BRAZIL                         <48 cm                   0        6      56
0-24 months (no birth st.)   MAL-ED           BRAZIL                         <48 cm                   1        2      56
0-24 months (no birth st.)   MAL-ED           BRAZIL                         [48-50) cm               0       13      56
0-24 months (no birth st.)   MAL-ED           BRAZIL                         [48-50) cm               1        5      56
0-24 months (no birth st.)   MAL-ED           INDIA                          >=50 cm                  0        8      37
0-24 months (no birth st.)   MAL-ED           INDIA                          >=50 cm                  1        1      37
0-24 months (no birth st.)   MAL-ED           INDIA                          <48 cm                   0        2      37
0-24 months (no birth st.)   MAL-ED           INDIA                          <48 cm                   1        8      37
0-24 months (no birth st.)   MAL-ED           INDIA                          [48-50) cm               0        7      37
0-24 months (no birth st.)   MAL-ED           INDIA                          [48-50) cm               1       11      37
0-24 months (no birth st.)   MAL-ED           NEPAL                          >=50 cm                  0        8      25
0-24 months (no birth st.)   MAL-ED           NEPAL                          >=50 cm                  1        0      25
0-24 months (no birth st.)   MAL-ED           NEPAL                          <48 cm                   0        5      25
0-24 months (no birth st.)   MAL-ED           NEPAL                          <48 cm                   1        5      25
0-24 months (no birth st.)   MAL-ED           NEPAL                          [48-50) cm               0        3      25
0-24 months (no birth st.)   MAL-ED           NEPAL                          [48-50) cm               1        4      25
0-24 months (no birth st.)   MAL-ED           PERU                           >=50 cm                  0       31     207
0-24 months (no birth st.)   MAL-ED           PERU                           >=50 cm                  1       21     207
0-24 months (no birth st.)   MAL-ED           PERU                           <48 cm                   0       15     207
0-24 months (no birth st.)   MAL-ED           PERU                           <48 cm                   1       47     207
0-24 months (no birth st.)   MAL-ED           PERU                           [48-50) cm               0       45     207
0-24 months (no birth st.)   MAL-ED           PERU                           [48-50) cm               1       48     207
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   >=50 cm                  0       26     113
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   >=50 cm                  1       18     113
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   <48 cm                   0       12     113
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   <48 cm                   1       11     113
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   [48-50) cm               0       22     113
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   [48-50) cm               1       24     113
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       10     102
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1       22     102
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                   0        2     102
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                   1       17     102
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0        8     102
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1       43     102
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     >=50 cm                  0       78     511
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     >=50 cm                  1       61     511
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     <48 cm                   0       35     511
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     <48 cm                   1      108     511
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     [48-50) cm               0       91     511
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     [48-50) cm               1      138     511
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     >=50 cm                  0      149     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     >=50 cm                  1       19     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     <48 cm                   0       75     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     <48 cm                   1      112     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     [48-50) cm               0      172     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     [48-50) cm               1      126     653
0-24 months (no birth st.)   PROBIT           BELARUS                        >=50 cm                  0    13786   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        >=50 cm                  1     1496   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        <48 cm                   0       58   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        <48 cm                   1       76   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        [48-50) cm               0      900   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        [48-50) cm               1      449   16765
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     >=50 cm                  0      140     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     >=50 cm                  1       29     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     <48 cm                   0       70     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     <48 cm                   1      111     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     [48-50) cm               0      185     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     [48-50) cm               1       98     633
0-24 months (no birth st.)   ResPak           PAKISTAN                       >=50 cm                  0        3      28
0-24 months (no birth st.)   ResPak           PAKISTAN                       >=50 cm                  1        9      28
0-24 months (no birth st.)   ResPak           PAKISTAN                       <48 cm                   0        1      28
0-24 months (no birth st.)   ResPak           PAKISTAN                       <48 cm                   1        1      28
0-24 months (no birth st.)   ResPak           PAKISTAN                       [48-50) cm               0        7      28
0-24 months (no birth st.)   ResPak           PAKISTAN                       [48-50) cm               1        7      28
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          >=50 cm                  0      129    1080
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          >=50 cm                  1       83    1080
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          <48 cm                   0      124    1080
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          <48 cm                   1      279    1080
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          [48-50) cm               0      216    1080
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          [48-50) cm               1      249    1080
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3100   12487
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       >=50 cm                  1     1026   12487
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       <48 cm                   0     1623   12487
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       <48 cm                   1     1397   12487
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       [48-50) cm               0     3401   12487
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       [48-50) cm               1     1940   12487
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          >=50 cm                  0        8      85
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          >=50 cm                  1        7      85
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          <48 cm                   0       18      85
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          <48 cm                   1       12      85
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          [48-50) cm               0       23      85
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          [48-50) cm               1       17      85
0-6 months (no birth st.)    CMIN             BANGLADESH                     >=50 cm                  0        2      17
0-6 months (no birth st.)    CMIN             BANGLADESH                     >=50 cm                  1        0      17
0-6 months (no birth st.)    CMIN             BANGLADESH                     <48 cm                   0        5      17
0-6 months (no birth st.)    CMIN             BANGLADESH                     <48 cm                   1        2      17
0-6 months (no birth st.)    CMIN             BANGLADESH                     [48-50) cm               0        7      17
0-6 months (no birth st.)    CMIN             BANGLADESH                     [48-50) cm               1        1      17
0-6 months (no birth st.)    COHORTS          GUATEMALA                      >=50 cm                  0      395     802
0-6 months (no birth st.)    COHORTS          GUATEMALA                      >=50 cm                  1       42     802
0-6 months (no birth st.)    COHORTS          GUATEMALA                      <48 cm                   0       42     802
0-6 months (no birth st.)    COHORTS          GUATEMALA                      <48 cm                   1       71     802
0-6 months (no birth st.)    COHORTS          GUATEMALA                      [48-50) cm               0      158     802
0-6 months (no birth st.)    COHORTS          GUATEMALA                      [48-50) cm               1       94     802
0-6 months (no birth st.)    COHORTS          INDIA                          >=50 cm                  0     1407    5848
0-6 months (no birth st.)    COHORTS          INDIA                          >=50 cm                  1       19    5848
0-6 months (no birth st.)    COHORTS          INDIA                          <48 cm                   0     1654    5848
0-6 months (no birth st.)    COHORTS          INDIA                          <48 cm                   1      328    5848
0-6 months (no birth st.)    COHORTS          INDIA                          [48-50) cm               0     2325    5848
0-6 months (no birth st.)    COHORTS          INDIA                          [48-50) cm               1      115    5848
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    >=50 cm                  0     1049    2863
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    >=50 cm                  1       80    2863
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    <48 cm                   0      342    2863
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    <48 cm                   1      233    2863
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    [48-50) cm               0      930    2863
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    [48-50) cm               1      229    2863
0-6 months (no birth st.)    CONTENT          PERU                           >=50 cm                  0        1       2
0-6 months (no birth st.)    CONTENT          PERU                           >=50 cm                  1        0       2
0-6 months (no birth st.)    CONTENT          PERU                           <48 cm                   0        0       2
0-6 months (no birth st.)    CONTENT          PERU                           <48 cm                   1        1       2
0-6 months (no birth st.)    CONTENT          PERU                           [48-50) cm               0        0       2
0-6 months (no birth st.)    CONTENT          PERU                           [48-50) cm               1        0       2
0-6 months (no birth st.)    EE               PAKISTAN                       >=50 cm                  0       22     140
0-6 months (no birth st.)    EE               PAKISTAN                       >=50 cm                  1        2     140
0-6 months (no birth st.)    EE               PAKISTAN                       <48 cm                   0       15     140
0-6 months (no birth st.)    EE               PAKISTAN                       <48 cm                   1       47     140
0-6 months (no birth st.)    EE               PAKISTAN                       [48-50) cm               0       23     140
0-6 months (no birth st.)    EE               PAKISTAN                       [48-50) cm               1       31     140
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          >=50 cm                  0      109     575
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          >=50 cm                  1        6     575
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          <48 cm                   0      180     575
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          <48 cm                   1       72     575
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          [48-50) cm               0      186     575
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          [48-50) cm               1       22     575
0-6 months (no birth st.)    IRC              INDIA                          >=50 cm                  0      109     345
0-6 months (no birth st.)    IRC              INDIA                          >=50 cm                  1       33     345
0-6 months (no birth st.)    IRC              INDIA                          <48 cm                   0       29     345
0-6 months (no birth st.)    IRC              INDIA                          <48 cm                   1       36     345
0-6 months (no birth st.)    IRC              INDIA                          [48-50) cm               0       87     345
0-6 months (no birth st.)    IRC              INDIA                          [48-50) cm               1       51     345
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     >=50 cm                  0     1233   15071
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     >=50 cm                  1       25   15071
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     <48 cm                   0     6863   15071
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     <48 cm                   1     1862   15071
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     [48-50) cm               0     4862   15071
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     [48-50) cm               1      226   15071
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     >=50 cm                  0     1027    3180
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     >=50 cm                  1       58    3180
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     <48 cm                   0      939    3180
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     <48 cm                   1      172    3180
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     [48-50) cm               0      901    3180
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     [48-50) cm               1       83    3180
0-6 months (no birth st.)    Keneba           GAMBIA                         >=50 cm                  0      646    1469
0-6 months (no birth st.)    Keneba           GAMBIA                         >=50 cm                  1      118    1469
0-6 months (no birth st.)    Keneba           GAMBIA                         <48 cm                   0      103    1469
0-6 months (no birth st.)    Keneba           GAMBIA                         <48 cm                   1      107    1469
0-6 months (no birth st.)    Keneba           GAMBIA                         [48-50) cm               0      345    1469
0-6 months (no birth st.)    Keneba           GAMBIA                         [48-50) cm               1      150    1469
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     >=50 cm                  0       37     187
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     >=50 cm                  1        2     187
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     <48 cm                   0       46     187
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     <48 cm                   1       23     187
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     [48-50) cm               0       64     187
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     [48-50) cm               1       15     187
0-6 months (no birth st.)    MAL-ED           BRAZIL                         >=50 cm                  0       30      56
0-6 months (no birth st.)    MAL-ED           BRAZIL                         >=50 cm                  1        0      56
0-6 months (no birth st.)    MAL-ED           BRAZIL                         <48 cm                   0        6      56
0-6 months (no birth st.)    MAL-ED           BRAZIL                         <48 cm                   1        2      56
0-6 months (no birth st.)    MAL-ED           BRAZIL                         [48-50) cm               0       14      56
0-6 months (no birth st.)    MAL-ED           BRAZIL                         [48-50) cm               1        4      56
0-6 months (no birth st.)    MAL-ED           INDIA                          >=50 cm                  0        9      37
0-6 months (no birth st.)    MAL-ED           INDIA                          >=50 cm                  1        0      37
0-6 months (no birth st.)    MAL-ED           INDIA                          <48 cm                   0        5      37
0-6 months (no birth st.)    MAL-ED           INDIA                          <48 cm                   1        5      37
0-6 months (no birth st.)    MAL-ED           INDIA                          [48-50) cm               0       13      37
0-6 months (no birth st.)    MAL-ED           INDIA                          [48-50) cm               1        5      37
0-6 months (no birth st.)    MAL-ED           NEPAL                          >=50 cm                  0        8      25
0-6 months (no birth st.)    MAL-ED           NEPAL                          >=50 cm                  1        0      25
0-6 months (no birth st.)    MAL-ED           NEPAL                          <48 cm                   0        7      25
0-6 months (no birth st.)    MAL-ED           NEPAL                          <48 cm                   1        3      25
0-6 months (no birth st.)    MAL-ED           NEPAL                          [48-50) cm               0        7      25
0-6 months (no birth st.)    MAL-ED           NEPAL                          [48-50) cm               1        0      25
0-6 months (no birth st.)    MAL-ED           PERU                           >=50 cm                  0       47     207
0-6 months (no birth st.)    MAL-ED           PERU                           >=50 cm                  1        5     207
0-6 months (no birth st.)    MAL-ED           PERU                           <48 cm                   0       26     207
0-6 months (no birth st.)    MAL-ED           PERU                           <48 cm                   1       36     207
0-6 months (no birth st.)    MAL-ED           PERU                           [48-50) cm               0       65     207
0-6 months (no birth st.)    MAL-ED           PERU                           [48-50) cm               1       28     207
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   >=50 cm                  0       38     113
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   >=50 cm                  1        6     113
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   <48 cm                   0       14     113
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   <48 cm                   1        9     113
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   [48-50) cm               0       32     113
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   [48-50) cm               1       14     113
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       31     102
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        1     102
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                   0        9     102
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                   1       10     102
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       35     102
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1       16     102
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     >=50 cm                  0      127     511
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     >=50 cm                  1       12     511
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     <48 cm                   0       79     511
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     <48 cm                   1       64     511
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     [48-50) cm               0      187     511
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     [48-50) cm               1       42     511
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     >=50 cm                  0      167     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     >=50 cm                  1        1     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     <48 cm                   0      115     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     <48 cm                   1       72     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     [48-50) cm               0      247     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     [48-50) cm               1       51     653
0-6 months (no birth st.)    PROBIT           BELARUS                        >=50 cm                  0    14653   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        >=50 cm                  1      627   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        <48 cm                   0       64   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        <48 cm                   1       70   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        [48-50) cm               0     1016   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        [48-50) cm               1      333   16763
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     >=50 cm                  0      165     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     >=50 cm                  1        4     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     <48 cm                   0      110     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     <48 cm                   1       71     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     [48-50) cm               0      257     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     [48-50) cm               1       26     633
0-6 months (no birth st.)    ResPak           PAKISTAN                       >=50 cm                  0        5      28
0-6 months (no birth st.)    ResPak           PAKISTAN                       >=50 cm                  1        7      28
0-6 months (no birth st.)    ResPak           PAKISTAN                       <48 cm                   0        1      28
0-6 months (no birth st.)    ResPak           PAKISTAN                       <48 cm                   1        1      28
0-6 months (no birth st.)    ResPak           PAKISTAN                       [48-50) cm               0        7      28
0-6 months (no birth st.)    ResPak           PAKISTAN                       [48-50) cm               1        7      28
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          >=50 cm                  0      195    1079
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          >=50 cm                  1       16    1079
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          <48 cm                   0      276    1079
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          <48 cm                   1      127    1079
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          [48-50) cm               0      398    1079
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          [48-50) cm               1       67    1079
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3704   12486
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       >=50 cm                  1      422   12486
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       <48 cm                   0     2245   12486
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       <48 cm                   1      774   12486
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       [48-50) cm               0     4378   12486
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       [48-50) cm               1      963   12486
6-24 months                  CMC-V-BCS-2002   INDIA                          >=50 cm                  0        4      50
6-24 months                  CMC-V-BCS-2002   INDIA                          >=50 cm                  1        5      50
6-24 months                  CMC-V-BCS-2002   INDIA                          <48 cm                   0        2      50
6-24 months                  CMC-V-BCS-2002   INDIA                          <48 cm                   1       16      50
6-24 months                  CMC-V-BCS-2002   INDIA                          [48-50) cm               0        5      50
6-24 months                  CMC-V-BCS-2002   INDIA                          [48-50) cm               1       18      50
6-24 months                  CMIN             BANGLADESH                     >=50 cm                  0        0       7
6-24 months                  CMIN             BANGLADESH                     >=50 cm                  1        0       7
6-24 months                  CMIN             BANGLADESH                     <48 cm                   0        1       7
6-24 months                  CMIN             BANGLADESH                     <48 cm                   1        1       7
6-24 months                  CMIN             BANGLADESH                     [48-50) cm               0        2       7
6-24 months                  CMIN             BANGLADESH                     [48-50) cm               1        3       7
6-24 months                  COHORTS          GUATEMALA                      >=50 cm                  0      107     499
6-24 months                  COHORTS          GUATEMALA                      >=50 cm                  1      221     499
6-24 months                  COHORTS          GUATEMALA                      <48 cm                   0        6     499
6-24 months                  COHORTS          GUATEMALA                      <48 cm                   1       29     499
6-24 months                  COHORTS          GUATEMALA                      [48-50) cm               0       25     499
6-24 months                  COHORTS          GUATEMALA                      [48-50) cm               1      111     499
6-24 months                  COHORTS          INDIA                          >=50 cm                  0     1184    5016
6-24 months                  COHORTS          INDIA                          >=50 cm                  1      140    5016
6-24 months                  COHORTS          INDIA                          <48 cm                   0      950    5016
6-24 months                  COHORTS          INDIA                          <48 cm                   1      573    5016
6-24 months                  COHORTS          INDIA                          [48-50) cm               0     1666    5016
6-24 months                  COHORTS          INDIA                          [48-50) cm               1      503    5016
6-24 months                  COHORTS          PHILIPPINES                    >=50 cm                  0      448    2116
6-24 months                  COHORTS          PHILIPPINES                    >=50 cm                  1      511    2116
6-24 months                  COHORTS          PHILIPPINES                    <48 cm                   0       60    2116
6-24 months                  COHORTS          PHILIPPINES                    <48 cm                   1      254    2116
6-24 months                  COHORTS          PHILIPPINES                    [48-50) cm               0      240    2116
6-24 months                  COHORTS          PHILIPPINES                    [48-50) cm               1      603    2116
6-24 months                  CONTENT          PERU                           >=50 cm                  0        1       1
6-24 months                  CONTENT          PERU                           >=50 cm                  1        0       1
6-24 months                  CONTENT          PERU                           <48 cm                   0        0       1
6-24 months                  CONTENT          PERU                           <48 cm                   1        0       1
6-24 months                  CONTENT          PERU                           [48-50) cm               0        0       1
6-24 months                  CONTENT          PERU                           [48-50) cm               1        0       1
6-24 months                  EE               PAKISTAN                       >=50 cm                  0        7      58
6-24 months                  EE               PAKISTAN                       >=50 cm                  1       15      58
6-24 months                  EE               PAKISTAN                       <48 cm                   0        5      58
6-24 months                  EE               PAKISTAN                       <48 cm                   1        9      58
6-24 months                  EE               PAKISTAN                       [48-50) cm               0       10      58
6-24 months                  EE               PAKISTAN                       [48-50) cm               1       12      58
6-24 months                  GMS-Nepal        NEPAL                          >=50 cm                  0       57     396
6-24 months                  GMS-Nepal        NEPAL                          >=50 cm                  1       37     396
6-24 months                  GMS-Nepal        NEPAL                          <48 cm                   0       43     396
6-24 months                  GMS-Nepal        NEPAL                          <48 cm                   1      103     396
6-24 months                  GMS-Nepal        NEPAL                          [48-50) cm               0       73     396
6-24 months                  GMS-Nepal        NEPAL                          [48-50) cm               1       83     396
6-24 months                  IRC              INDIA                          >=50 cm                  0       70     225
6-24 months                  IRC              INDIA                          >=50 cm                  1       39     225
6-24 months                  IRC              INDIA                          <48 cm                   0       19     225
6-24 months                  IRC              INDIA                          <48 cm                   1       10     225
6-24 months                  IRC              INDIA                          [48-50) cm               0       52     225
6-24 months                  IRC              INDIA                          [48-50) cm               1       35     225
6-24 months                  JiVitA-3         BANGLADESH                     >=50 cm                  0      790    8511
6-24 months                  JiVitA-3         BANGLADESH                     >=50 cm                  1       45    8511
6-24 months                  JiVitA-3         BANGLADESH                     <48 cm                   0     3110    8511
6-24 months                  JiVitA-3         BANGLADESH                     <48 cm                   1     1333    8511
6-24 months                  JiVitA-3         BANGLADESH                     [48-50) cm               0     2716    8511
6-24 months                  JiVitA-3         BANGLADESH                     [48-50) cm               1      517    8511
6-24 months                  JiVitA-4         BANGLADESH                     >=50 cm                  0      730    2863
6-24 months                  JiVitA-4         BANGLADESH                     >=50 cm                  1      290    2863
6-24 months                  JiVitA-4         BANGLADESH                     <48 cm                   0      495    2863
6-24 months                  JiVitA-4         BANGLADESH                     <48 cm                   1      447    2863
6-24 months                  JiVitA-4         BANGLADESH                     [48-50) cm               0      589    2863
6-24 months                  JiVitA-4         BANGLADESH                     [48-50) cm               1      312    2863
6-24 months                  Keneba           GAMBIA                         >=50 cm                  0      423    1056
6-24 months                  Keneba           GAMBIA                         >=50 cm                  1      205    1056
6-24 months                  Keneba           GAMBIA                         <48 cm                   0       53    1056
6-24 months                  Keneba           GAMBIA                         <48 cm                   1       43    1056
6-24 months                  Keneba           GAMBIA                         [48-50) cm               0      177    1056
6-24 months                  Keneba           GAMBIA                         [48-50) cm               1      155    1056
6-24 months                  MAL-ED           BANGLADESH                     >=50 cm                  0       27     138
6-24 months                  MAL-ED           BANGLADESH                     >=50 cm                  1       10     138
6-24 months                  MAL-ED           BANGLADESH                     <48 cm                   0       18     138
6-24 months                  MAL-ED           BANGLADESH                     <48 cm                   1       22     138
6-24 months                  MAL-ED           BANGLADESH                     [48-50) cm               0       34     138
6-24 months                  MAL-ED           BANGLADESH                     [48-50) cm               1       27     138
6-24 months                  MAL-ED           BRAZIL                         >=50 cm                  0       27      43
6-24 months                  MAL-ED           BRAZIL                         >=50 cm                  1        0      43
6-24 months                  MAL-ED           BRAZIL                         <48 cm                   0        4      43
6-24 months                  MAL-ED           BRAZIL                         <48 cm                   1        0      43
6-24 months                  MAL-ED           BRAZIL                         [48-50) cm               0       11      43
6-24 months                  MAL-ED           BRAZIL                         [48-50) cm               1        1      43
6-24 months                  MAL-ED           INDIA                          >=50 cm                  0        7      23
6-24 months                  MAL-ED           INDIA                          >=50 cm                  1        1      23
6-24 months                  MAL-ED           INDIA                          <48 cm                   0        2      23
6-24 months                  MAL-ED           INDIA                          <48 cm                   1        3      23
6-24 months                  MAL-ED           INDIA                          [48-50) cm               0        4      23
6-24 months                  MAL-ED           INDIA                          [48-50) cm               1        6      23
6-24 months                  MAL-ED           NEPAL                          >=50 cm                  0        8      22
6-24 months                  MAL-ED           NEPAL                          >=50 cm                  1        0      22
6-24 months                  MAL-ED           NEPAL                          <48 cm                   0        5      22
6-24 months                  MAL-ED           NEPAL                          <48 cm                   1        2      22
6-24 months                  MAL-ED           NEPAL                          [48-50) cm               0        3      22
6-24 months                  MAL-ED           NEPAL                          [48-50) cm               1        4      22
6-24 months                  MAL-ED           PERU                           >=50 cm                  0       27     121
6-24 months                  MAL-ED           PERU                           >=50 cm                  1       16     121
6-24 months                  MAL-ED           PERU                           <48 cm                   0       12     121
6-24 months                  MAL-ED           PERU                           <48 cm                   1       11     121
6-24 months                  MAL-ED           PERU                           [48-50) cm               0       35     121
6-24 months                  MAL-ED           PERU                           [48-50) cm               1       20     121
6-24 months                  MAL-ED           SOUTH AFRICA                   >=50 cm                  0       17      62
6-24 months                  MAL-ED           SOUTH AFRICA                   >=50 cm                  1       12      62
6-24 months                  MAL-ED           SOUTH AFRICA                   <48 cm                   0        4      62
6-24 months                  MAL-ED           SOUTH AFRICA                   <48 cm                   1        2      62
6-24 months                  MAL-ED           SOUTH AFRICA                   [48-50) cm               0       17      62
6-24 months                  MAL-ED           SOUTH AFRICA                   [48-50) cm               1       10      62
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       10      72
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1       21      72
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                   0        1      72
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        7      72
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0        6      72
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1       27      72
6-24 months                  NIH-Birth        BANGLADESH                     >=50 cm                  0       60     330
6-24 months                  NIH-Birth        BANGLADESH                     >=50 cm                  1       49     330
6-24 months                  NIH-Birth        BANGLADESH                     <48 cm                   0       16     330
6-24 months                  NIH-Birth        BANGLADESH                     <48 cm                   1       44     330
6-24 months                  NIH-Birth        BANGLADESH                     [48-50) cm               0       65     330
6-24 months                  NIH-Birth        BANGLADESH                     [48-50) cm               1       96     330
6-24 months                  NIH-Crypto       BANGLADESH                     >=50 cm                  0      146     506
6-24 months                  NIH-Crypto       BANGLADESH                     >=50 cm                  1       18     506
6-24 months                  NIH-Crypto       BANGLADESH                     <48 cm                   0       67     506
6-24 months                  NIH-Crypto       BANGLADESH                     <48 cm                   1       40     506
6-24 months                  NIH-Crypto       BANGLADESH                     [48-50) cm               0      160     506
6-24 months                  NIH-Crypto       BANGLADESH                     [48-50) cm               1       75     506
6-24 months                  PROBIT           BELARUS                        >=50 cm                  0    13542   15467
6-24 months                  PROBIT           BELARUS                        >=50 cm                  1      871   15467
6-24 months                  PROBIT           BELARUS                        <48 cm                   0       51   15467
6-24 months                  PROBIT           BELARUS                        <48 cm                   1        6   15467
6-24 months                  PROBIT           BELARUS                        [48-50) cm               0      880   15467
6-24 months                  PROBIT           BELARUS                        [48-50) cm               1      117   15467
6-24 months                  PROVIDE          BANGLADESH                     >=50 cm                  0      121     456
6-24 months                  PROVIDE          BANGLADESH                     >=50 cm                  1       25     456
6-24 months                  PROVIDE          BANGLADESH                     <48 cm                   0       50     456
6-24 months                  PROVIDE          BANGLADESH                     <48 cm                   1       40     456
6-24 months                  PROVIDE          BANGLADESH                     [48-50) cm               0      148     456
6-24 months                  PROVIDE          BANGLADESH                     [48-50) cm               1       72     456
6-24 months                  ResPak           PAKISTAN                       >=50 cm                  0        3       8
6-24 months                  ResPak           PAKISTAN                       >=50 cm                  1        2       8
6-24 months                  ResPak           PAKISTAN                       <48 cm                   0        0       8
6-24 months                  ResPak           PAKISTAN                       <48 cm                   1        0       8
6-24 months                  ResPak           PAKISTAN                       [48-50) cm               0        3       8
6-24 months                  ResPak           PAKISTAN                       [48-50) cm               1        0       8
6-24 months                  SAS-CompFeed     INDIA                          >=50 cm                  0      118     801
6-24 months                  SAS-CompFeed     INDIA                          >=50 cm                  1       67     801
6-24 months                  SAS-CompFeed     INDIA                          <48 cm                   0       98     801
6-24 months                  SAS-CompFeed     INDIA                          <48 cm                   1      152     801
6-24 months                  SAS-CompFeed     INDIA                          [48-50) cm               0      184     801
6-24 months                  SAS-CompFeed     INDIA                          [48-50) cm               1      182     801
6-24 months                  ZVITAMBO         ZIMBABWE                       >=50 cm                  0     2415    8393
6-24 months                  ZVITAMBO         ZIMBABWE                       >=50 cm                  1      604    8393
6-24 months                  ZVITAMBO         ZIMBABWE                       <48 cm                   0     1169    8393
6-24 months                  ZVITAMBO         ZIMBABWE                       <48 cm                   1      624    8393
6-24 months                  ZVITAMBO         ZIMBABWE                       [48-50) cm               0     2604    8393
6-24 months                  ZVITAMBO         ZIMBABWE                       [48-50) cm               1      977    8393


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
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

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/d224b70e-d5aa-4286-9bf2-2d2f00d51c6d/4174b2ad-632d-46a1-860f-af0963fea087/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d224b70e-d5aa-4286-9bf2-2d2f00d51c6d/4174b2ad-632d-46a1-860f-af0963fea087/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d224b70e-d5aa-4286-9bf2-2d2f00d51c6d/4174b2ad-632d-46a1-860f-af0963fea087/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d224b70e-d5aa-4286-9bf2-2d2f00d51c6d/4174b2ad-632d-46a1-860f-af0963fea087/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA      >=50 cm              NA                0.6018307   0.5559056   0.6477557
0-24 months (no birth st.)   COHORTS          GUATEMALA      <48 cm               NA                0.8849558   0.8260886   0.9438229
0-24 months (no birth st.)   COHORTS          GUATEMALA      [48-50) cm           NA                0.8134921   0.7653700   0.8616141
0-24 months (no birth st.)   COHORTS          INDIA          >=50 cm              NA                0.1115007   0.0951629   0.1278385
0-24 months (no birth st.)   COHORTS          INDIA          <48 cm               NA                0.4540868   0.4321656   0.4760080
0-24 months (no birth st.)   COHORTS          INDIA          [48-50) cm           NA                0.2532787   0.2360215   0.2705358
0-24 months (no birth st.)   COHORTS          PHILIPPINES    >=50 cm              NA                0.5234721   0.4943336   0.5526106
0-24 months (no birth st.)   COHORTS          PHILIPPINES    <48 cm               NA                0.8469565   0.8175240   0.8763891
0-24 months (no birth st.)   COHORTS          PHILIPPINES    [48-50) cm           NA                0.7178602   0.6919462   0.7437742
0-24 months (no birth st.)   EE               PAKISTAN       >=50 cm              NA                0.7083333   0.5258340   0.8908327
0-24 months (no birth st.)   EE               PAKISTAN       <48 cm               NA                0.9032258   0.8293696   0.9770820
0-24 months (no birth st.)   EE               PAKISTAN       [48-50) cm           NA                0.7962963   0.6884899   0.9041027
0-24 months (no birth st.)   GMS-Nepal        NEPAL          >=50 cm              NA                0.3739130   0.2854056   0.4624205
0-24 months (no birth st.)   GMS-Nepal        NEPAL          <48 cm               NA                0.6944444   0.6375212   0.7513677
0-24 months (no birth st.)   GMS-Nepal        NEPAL          [48-50) cm           NA                0.5048077   0.4368021   0.5728132
0-24 months (no birth st.)   IRC              INDIA          >=50 cm              NA                0.5070423   0.4246927   0.5893918
0-24 months (no birth st.)   IRC              INDIA          <48 cm               NA                0.7076923   0.5969626   0.8184220
0-24 months (no birth st.)   IRC              INDIA          [48-50) cm           NA                0.6231884   0.5422209   0.7041559
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     >=50 cm              NA                0.0556439   0.0417927   0.0694950
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     <48 cm               NA                0.3656160   0.3543325   0.3768996
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     [48-50) cm           NA                0.1460299   0.1353351   0.1567247
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     >=50 cm              NA                0.3207373   0.2872393   0.3542354
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     <48 cm               NA                0.5544554   0.5180687   0.5908422
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     [48-50) cm           NA                0.4014228   0.3653232   0.4375224
0-24 months (no birth st.)   Keneba           GAMBIA         >=50 cm              NA                0.4227749   0.3877339   0.4578159
0-24 months (no birth st.)   Keneba           GAMBIA         <48 cm               NA                0.7142857   0.6531650   0.7754064
0-24 months (no birth st.)   Keneba           GAMBIA         [48-50) cm           NA                0.6161616   0.5733053   0.6590179
0-24 months (no birth st.)   MAL-ED           BANGLADESH     >=50 cm              NA                0.3076923   0.1624517   0.4529329
0-24 months (no birth st.)   MAL-ED           BANGLADESH     <48 cm               NA                0.6521739   0.5394929   0.7648549
0-24 months (no birth st.)   MAL-ED           BANGLADESH     [48-50) cm           NA                0.5316456   0.4213146   0.6419765
0-24 months (no birth st.)   MAL-ED           PERU           >=50 cm              NA                0.4038462   0.2701604   0.5375319
0-24 months (no birth st.)   MAL-ED           PERU           <48 cm               NA                0.7580645   0.6512066   0.8649224
0-24 months (no birth st.)   MAL-ED           PERU           [48-50) cm           NA                0.5161290   0.4143163   0.6179418
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   >=50 cm              NA                0.4090909   0.2631684   0.5550134
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   <48 cm               NA                0.4782609   0.2732044   0.6833174
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   [48-50) cm           NA                0.5217391   0.3767423   0.6667360
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     >=50 cm              NA                0.4388489   0.3562711   0.5214268
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     <48 cm               NA                0.7552448   0.6847080   0.8257815
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     [48-50) cm           NA                0.6026201   0.5391776   0.6660626
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     >=50 cm              NA                0.1130952   0.0651675   0.1610230
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     <48 cm               NA                0.5989305   0.5286300   0.6692309
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     [48-50) cm           NA                0.4228188   0.3666874   0.4789502
0-24 months (no birth st.)   PROBIT           BELARUS        >=50 cm              NA                0.0978929   0.0817129   0.1140730
0-24 months (no birth st.)   PROBIT           BELARUS        <48 cm               NA                0.5671642   0.5216321   0.6126963
0-24 months (no birth st.)   PROBIT           BELARUS        [48-50) cm           NA                0.3328391   0.2819583   0.3837199
0-24 months (no birth st.)   PROVIDE          BANGLADESH     >=50 cm              NA                0.1715976   0.1147091   0.2284861
0-24 months (no birth st.)   PROVIDE          BANGLADESH     <48 cm               NA                0.6132597   0.5422555   0.6842639
0-24 months (no birth st.)   PROVIDE          BANGLADESH     [48-50) cm           NA                0.3462898   0.2908130   0.4017665
0-24 months (no birth st.)   SAS-CompFeed     INDIA          >=50 cm              NA                0.3915094   0.3270302   0.4559886
0-24 months (no birth st.)   SAS-CompFeed     INDIA          <48 cm               NA                0.6923077   0.6344443   0.7501711
0-24 months (no birth st.)   SAS-CompFeed     INDIA          [48-50) cm           NA                0.5354839   0.4700695   0.6008983
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.2486670   0.2354776   0.2618564
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       <48 cm               NA                0.4625828   0.4447995   0.4803661
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.3632279   0.3503295   0.3761263
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.4666667   0.2127010   0.7206323
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          <48 cm               NA                0.4000000   0.2236551   0.5763449
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.4250000   0.2708952   0.5791048
0-6 months (no birth st.)    COHORTS          GUATEMALA      >=50 cm              NA                0.0961098   0.0684583   0.1237614
0-6 months (no birth st.)    COHORTS          GUATEMALA      <48 cm               NA                0.6283186   0.5391616   0.7174755
0-6 months (no birth st.)    COHORTS          GUATEMALA      [48-50) cm           NA                0.3730159   0.3132696   0.4327621
0-6 months (no birth st.)    COHORTS          INDIA          >=50 cm              NA                0.0133240   0.0073724   0.0192755
0-6 months (no birth st.)    COHORTS          INDIA          <48 cm               NA                0.1654894   0.1491275   0.1818513
0-6 months (no birth st.)    COHORTS          INDIA          [48-50) cm           NA                0.0471311   0.0387218   0.0555405
0-6 months (no birth st.)    COHORTS          PHILIPPINES    >=50 cm              NA                0.0708592   0.0558894   0.0858290
0-6 months (no birth st.)    COHORTS          PHILIPPINES    <48 cm               NA                0.4052174   0.3650833   0.4453515
0-6 months (no birth st.)    COHORTS          PHILIPPINES    [48-50) cm           NA                0.1975841   0.1746566   0.2205117
0-6 months (no birth st.)    GMS-Nepal        NEPAL          >=50 cm              NA                0.0521739   0.0114951   0.0928527
0-6 months (no birth st.)    GMS-Nepal        NEPAL          <48 cm               NA                0.2857143   0.2298894   0.3415392
0-6 months (no birth st.)    GMS-Nepal        NEPAL          [48-50) cm           NA                0.1057692   0.0639382   0.1476003
0-6 months (no birth st.)    IRC              INDIA          >=50 cm              NA                0.2323944   0.1628253   0.3019634
0-6 months (no birth st.)    IRC              INDIA          <48 cm               NA                0.5538462   0.4328257   0.6748666
0-6 months (no birth st.)    IRC              INDIA          [48-50) cm           NA                0.3695652   0.2889152   0.4502152
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     >=50 cm              NA                0.0198728   0.0114425   0.0283031
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     <48 cm               NA                0.2134097   0.2040241   0.2227954
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     [48-50) cm           NA                0.0444182   0.0381842   0.0506523
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     >=50 cm              NA                0.0534562   0.0356010   0.0713115
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     <48 cm               NA                0.1548155   0.1285044   0.1811265
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     [48-50) cm           NA                0.0843496   0.0643072   0.1043920
0-6 months (no birth st.)    Keneba           GAMBIA         >=50 cm              NA                0.1544503   0.1288165   0.1800841
0-6 months (no birth st.)    Keneba           GAMBIA         <48 cm               NA                0.5095238   0.4418879   0.5771597
0-6 months (no birth st.)    Keneba           GAMBIA         [48-50) cm           NA                0.3030303   0.2625314   0.3435292
0-6 months (no birth st.)    MAL-ED           PERU           >=50 cm              NA                0.0961538   0.0158329   0.1764747
0-6 months (no birth st.)    MAL-ED           PERU           <48 cm               NA                0.5806452   0.4575191   0.7037712
0-6 months (no birth st.)    MAL-ED           PERU           [48-50) cm           NA                0.3010753   0.2076185   0.3945321
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   >=50 cm              NA                0.1363636   0.0345123   0.2382150
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   <48 cm               NA                0.3913043   0.1909624   0.5916463
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   [48-50) cm           NA                0.3043478   0.1707865   0.4379091
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     >=50 cm              NA                0.0863309   0.0395958   0.1330661
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     <48 cm               NA                0.4475524   0.3659745   0.5291304
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     [48-50) cm           NA                0.1834061   0.1332336   0.2335786
0-6 months (no birth st.)    PROBIT           BELARUS        >=50 cm              NA                0.0410340   0.0306874   0.0513807
0-6 months (no birth st.)    PROBIT           BELARUS        <48 cm               NA                0.5223881   0.4782853   0.5664909
0-6 months (no birth st.)    PROBIT           BELARUS        [48-50) cm           NA                0.2468495   0.1966692   0.2970299
0-6 months (no birth st.)    SAS-CompFeed     INDIA          >=50 cm              NA                0.0758294   0.0510899   0.1005689
0-6 months (no birth st.)    SAS-CompFeed     INDIA          <48 cm               NA                0.3151365   0.2641340   0.3661390
0-6 months (no birth st.)    SAS-CompFeed     INDIA          [48-50) cm           NA                0.1440860   0.1172759   0.1708961
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.1022782   0.0930320   0.1115244
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       <48 cm               NA                0.2563763   0.2408005   0.2719521
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.1803033   0.1699927   0.1906139
6-24 months                  COHORTS          GUATEMALA      >=50 cm              NA                0.6737805   0.6229925   0.7245685
6-24 months                  COHORTS          GUATEMALA      <48 cm               NA                0.8285714   0.7035869   0.9535560
6-24 months                  COHORTS          GUATEMALA      [48-50) cm           NA                0.8161765   0.7510126   0.8813403
6-24 months                  COHORTS          INDIA          >=50 cm              NA                0.1057402   0.0891749   0.1223055
6-24 months                  COHORTS          INDIA          <48 cm               NA                0.3762311   0.3518990   0.4005633
6-24 months                  COHORTS          INDIA          [48-50) cm           NA                0.2319041   0.2141408   0.2496674
6-24 months                  COHORTS          PHILIPPINES    >=50 cm              NA                0.5328467   0.5012623   0.5644311
6-24 months                  COHORTS          PHILIPPINES    <48 cm               NA                0.8089172   0.7654213   0.8524131
6-24 months                  COHORTS          PHILIPPINES    [48-50) cm           NA                0.7153025   0.6848324   0.7457726
6-24 months                  EE               PAKISTAN       >=50 cm              NA                0.6818182   0.4854888   0.8781476
6-24 months                  EE               PAKISTAN       <48 cm               NA                0.6428571   0.3896716   0.8960427
6-24 months                  EE               PAKISTAN       [48-50) cm           NA                0.5454545   0.3355696   0.7553395
6-24 months                  GMS-Nepal        NEPAL          >=50 cm              NA                0.3936170   0.2947290   0.4925050
6-24 months                  GMS-Nepal        NEPAL          <48 cm               NA                0.7054795   0.6314472   0.7795117
6-24 months                  GMS-Nepal        NEPAL          [48-50) cm           NA                0.5320513   0.4536522   0.6104503
6-24 months                  IRC              INDIA          >=50 cm              NA                0.3577982   0.2676085   0.4479879
6-24 months                  IRC              INDIA          <48 cm               NA                0.3448276   0.1714491   0.5182060
6-24 months                  IRC              INDIA          [48-50) cm           NA                0.4022989   0.2990293   0.5055684
6-24 months                  JiVitA-3         BANGLADESH     >=50 cm              NA                0.0538922   0.0368984   0.0708861
6-24 months                  JiVitA-3         BANGLADESH     <48 cm               NA                0.3000225   0.2851576   0.3148874
6-24 months                  JiVitA-3         BANGLADESH     [48-50) cm           NA                0.1599134   0.1461505   0.1736763
6-24 months                  JiVitA-4         BANGLADESH     >=50 cm              NA                0.2843137   0.2514352   0.3171922
6-24 months                  JiVitA-4         BANGLADESH     <48 cm               NA                0.4745223   0.4369346   0.5121099
6-24 months                  JiVitA-4         BANGLADESH     [48-50) cm           NA                0.3462819   0.3082664   0.3842974
6-24 months                  Keneba           GAMBIA         >=50 cm              NA                0.3264331   0.2897420   0.3631243
6-24 months                  Keneba           GAMBIA         <48 cm               NA                0.4479167   0.3483947   0.5474387
6-24 months                  Keneba           GAMBIA         [48-50) cm           NA                0.4668675   0.4131768   0.5205582
6-24 months                  MAL-ED           BANGLADESH     >=50 cm              NA                0.2702703   0.1266530   0.4138875
6-24 months                  MAL-ED           BANGLADESH     <48 cm               NA                0.5500000   0.3952663   0.7047337
6-24 months                  MAL-ED           BANGLADESH     [48-50) cm           NA                0.4426230   0.3175239   0.5677220
6-24 months                  MAL-ED           PERU           >=50 cm              NA                0.3720930   0.2270191   0.5171669
6-24 months                  MAL-ED           PERU           <48 cm               NA                0.4782609   0.2732649   0.6832569
6-24 months                  MAL-ED           PERU           [48-50) cm           NA                0.3636364   0.2359763   0.4912965
6-24 months                  NIH-Birth        BANGLADESH     >=50 cm              NA                0.4495413   0.3560134   0.5430692
6-24 months                  NIH-Birth        BANGLADESH     <48 cm               NA                0.7333333   0.6212692   0.8453974
6-24 months                  NIH-Birth        BANGLADESH     [48-50) cm           NA                0.5962733   0.5203700   0.6721766
6-24 months                  NIH-Crypto       BANGLADESH     >=50 cm              NA                0.1097561   0.0618683   0.1576439
6-24 months                  NIH-Crypto       BANGLADESH     <48 cm               NA                0.3738318   0.2820684   0.4655952
6-24 months                  NIH-Crypto       BANGLADESH     [48-50) cm           NA                0.3191489   0.2594912   0.3788066
6-24 months                  PROBIT           BELARUS        >=50 cm              NA                0.0604316   0.0489277   0.0719354
6-24 months                  PROBIT           BELARUS        <48 cm               NA                0.1052632   0.0921005   0.1184258
6-24 months                  PROBIT           BELARUS        [48-50) cm           NA                0.1173521   0.0956456   0.1390585
6-24 months                  PROVIDE          BANGLADESH     >=50 cm              NA                0.1712329   0.1100601   0.2324057
6-24 months                  PROVIDE          BANGLADESH     <48 cm               NA                0.4444444   0.3416722   0.5472167
6-24 months                  PROVIDE          BANGLADESH     [48-50) cm           NA                0.3272727   0.2652018   0.3893436
6-24 months                  SAS-CompFeed     INDIA          >=50 cm              NA                0.3621622   0.2964771   0.4278473
6-24 months                  SAS-CompFeed     INDIA          <48 cm               NA                0.6080000   0.5611133   0.6548867
6-24 months                  SAS-CompFeed     INDIA          [48-50) cm           NA                0.4972678   0.4478284   0.5467071
6-24 months                  ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.2000662   0.1857952   0.2143373
6-24 months                  ZVITAMBO         ZIMBABWE       <48 cm               NA                0.3480201   0.3259704   0.3700698
6-24 months                  ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.2728288   0.2582395   0.2874181


### Parameter: E(Y)


agecat                       studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA      NA                   NA                0.7082294   0.6767491   0.7397098
0-24 months (no birth st.)   COHORTS          INDIA          NA                   NA                0.2867647   0.2751726   0.2983568
0-24 months (no birth st.)   COHORTS          PHILIPPINES    NA                   NA                0.6671324   0.6498678   0.6843969
0-24 months (no birth st.)   EE               PAKISTAN       NA                   NA                0.8285714   0.7659176   0.8912252
0-24 months (no birth st.)   GMS-Nepal        NEPAL          NA                   NA                0.5617391   0.5211485   0.6023298
0-24 months (no birth st.)   IRC              INDIA          NA                   NA                0.5913043   0.5393557   0.6432530
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     NA                   NA                0.2656094   0.2573816   0.2738373
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     NA                   NA                0.4273585   0.4069266   0.4477904
0-24 months (no birth st.)   Keneba           GAMBIA         NA                   NA                0.5296120   0.5040796   0.5551444
0-24 months (no birth st.)   MAL-ED           BANGLADESH     NA                   NA                0.5294118   0.4576804   0.6011431
0-24 months (no birth st.)   MAL-ED           PERU           NA                   NA                0.5603865   0.4926077   0.6281653
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   NA                   NA                0.4690265   0.3766048   0.5614483
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     NA                   NA                0.6007828   0.5582791   0.6432864
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   PROBIT           BELARUS        NA                   NA                0.1205488   0.1047261   0.1363714
0-24 months (no birth st.)   PROVIDE          BANGLADESH     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   SAS-CompFeed     INDIA          NA                   NA                0.5657407   0.5074689   0.6240126
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       NA                   NA                0.3494034   0.3410405   0.3577663
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          NA                   NA                0.4235294   0.3178625   0.5291963
0-6 months (no birth st.)    COHORTS          GUATEMALA      NA                   NA                0.2581047   0.2278007   0.2884088
0-6 months (no birth st.)    COHORTS          INDIA          NA                   NA                0.0790014   0.0720874   0.0859154
0-6 months (no birth st.)    COHORTS          PHILIPPINES    NA                   NA                0.1893119   0.1749594   0.2036645
0-6 months (no birth st.)    GMS-Nepal        NEPAL          NA                   NA                0.1739130   0.1429052   0.2049209
0-6 months (no birth st.)    IRC              INDIA          NA                   NA                0.3478261   0.2974955   0.3981566
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     NA                   NA                0.1402030   0.1340165   0.1463895
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     NA                   NA                0.0984277   0.0855770   0.1112784
0-6 months (no birth st.)    Keneba           GAMBIA         NA                   NA                0.2552757   0.2329715   0.2775799
0-6 months (no birth st.)    MAL-ED           PERU           NA                   NA                0.3333333   0.2689597   0.3977070
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   NA                   NA                0.2566372   0.1757463   0.3375280
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     NA                   NA                0.2309198   0.1943452   0.2674943
0-6 months (no birth st.)    PROBIT           BELARUS        NA                   NA                0.0614448   0.0507274   0.0721623
0-6 months (no birth st.)    SAS-CompFeed     INDIA          NA                   NA                0.1946247   0.1703263   0.2189230
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       NA                   NA                0.1729137   0.1662801   0.1795472
6-24 months                  COHORTS          GUATEMALA      NA                   NA                0.7234469   0.6841620   0.7627318
6-24 months                  COHORTS          INDIA          NA                   NA                0.2424242   0.2305635   0.2542850
6-24 months                  COHORTS          PHILIPPINES    NA                   NA                0.6465028   0.6261291   0.6668766
6-24 months                  EE               PAKISTAN       NA                   NA                0.6206897   0.4947260   0.7466533
6-24 months                  GMS-Nepal        NEPAL          NA                   NA                0.5631313   0.5142177   0.6120449
6-24 months                  IRC              INDIA          NA                   NA                0.3733333   0.3099915   0.4366752
6-24 months                  JiVitA-3         BANGLADESH     NA                   NA                0.2226530   0.2124032   0.2329029
6-24 months                  JiVitA-4         BANGLADESH     NA                   NA                0.3663989   0.3454886   0.3873091
6-24 months                  Keneba           GAMBIA         NA                   NA                0.3816288   0.3523153   0.4109422
6-24 months                  MAL-ED           BANGLADESH     NA                   NA                0.4275362   0.3446947   0.5103778
6-24 months                  MAL-ED           PERU           NA                   NA                0.3884298   0.3012257   0.4756338
6-24 months                  NIH-Birth        BANGLADESH     NA                   NA                0.5727273   0.5192737   0.6261808
6-24 months                  NIH-Crypto       BANGLADESH     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  PROBIT           BELARUS        NA                   NA                0.0642659   0.0526827   0.0758490
6-24 months                  PROVIDE          BANGLADESH     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  SAS-CompFeed     INDIA          NA                   NA                0.5006242   0.4555100   0.5457384
6-24 months                  ZVITAMBO         ZIMBABWE       NA                   NA                0.2627189   0.2533027   0.2721352


### Parameter: RR


agecat                       studyid          country        intervention_level   baseline_level      estimate    ci_lower    ci_upper
---------------------------  ---------------  -------------  -------------------  ---------------  -----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   COHORTS          GUATEMALA      <48 cm               >=50 cm            1.4704398   1.3288706    1.627091
0-24 months (no birth st.)   COHORTS          GUATEMALA      [48-50) cm           >=50 cm            1.3516959   1.2272891    1.488714
0-24 months (no birth st.)   COHORTS          INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   COHORTS          INDIA          <48 cm               >=50 cm            4.0725016   3.4902856    4.751837
0-24 months (no birth st.)   COHORTS          INDIA          [48-50) cm           >=50 cm            2.2715435   1.9326006    2.669931
0-24 months (no birth st.)   COHORTS          PHILIPPINES    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   COHORTS          PHILIPPINES    <48 cm               >=50 cm            1.6179592   1.5151958    1.727692
0-24 months (no birth st.)   COHORTS          PHILIPPINES    [48-50) cm           >=50 cm            1.3713438   1.2833149    1.465411
0-24 months (no birth st.)   EE               PAKISTAN       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   EE               PAKISTAN       <48 cm               >=50 cm            1.2751423   0.9731153    1.670910
0-24 months (no birth st.)   EE               PAKISTAN       [48-50) cm           >=50 cm            1.1241830   0.8403017    1.503969
0-24 months (no birth st.)   GMS-Nepal        NEPAL          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   GMS-Nepal        NEPAL          <48 cm               >=50 cm            1.8572351   1.4456976    2.385922
0-24 months (no birth st.)   GMS-Nepal        NEPAL          [48-50) cm           >=50 cm            1.3500671   1.0281878    1.772712
0-24 months (no birth st.)   IRC              INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   IRC              INDIA          <48 cm               >=50 cm            1.3957265   1.1139313    1.748808
0-24 months (no birth st.)   IRC              INDIA          [48-50) cm           >=50 cm            1.2290660   0.9982707    1.513220
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     <48 cm               >=50 cm            6.5706427   5.1298691    8.416071
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm            2.6243655   2.0331318    3.387530
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     <48 cm               >=50 cm            1.7286901   1.5281417    1.955558
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm            1.2515624   1.0898908    1.437216
0-24 months (no birth st.)   Keneba           GAMBIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   Keneba           GAMBIA         <48 cm               >=50 cm            1.6895179   1.4997738    1.903267
0-24 months (no birth st.)   Keneba           GAMBIA         [48-50) cm           >=50 cm            1.4574225   1.3079603    1.623964
0-24 months (no birth st.)   MAL-ED           BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   MAL-ED           BANGLADESH     <48 cm               >=50 cm            2.1195652   1.2821673    3.503877
0-24 months (no birth st.)   MAL-ED           BANGLADESH     [48-50) cm           >=50 cm            1.7278481   1.0317327    2.893636
0-24 months (no birth st.)   MAL-ED           PERU           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   MAL-ED           PERU           <48 cm               >=50 cm            1.8771121   1.3098861    2.689967
0-24 months (no birth st.)   MAL-ED           PERU           [48-50) cm           >=50 cm            1.2780338   0.8693351    1.878873
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   <48 cm               >=50 cm            1.1690821   0.6693066    2.042043
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   [48-50) cm           >=50 cm            1.2753623   0.8114343    2.004536
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     <48 cm               >=50 cm            1.7209676   1.3948882    2.123274
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm            1.3731835   1.1068453    1.703610
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     <48 cm               >=50 cm            5.2958064   3.4115897    8.220673
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     [48-50) cm           >=50 cm            3.7386083   2.3979741    5.828750
0-24 months (no birth st.)   PROBIT           BELARUS        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   PROBIT           BELARUS        <48 cm               >=50 cm            5.7937186   4.8825476    6.874930
0-24 months (no birth st.)   PROBIT           BELARUS        [48-50) cm           >=50 cm            3.4000319   2.8428160    4.066467
0-24 months (no birth st.)   PROVIDE          BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH     <48 cm               >=50 cm            3.5738236   2.5155139    5.077378
0-24 months (no birth st.)   PROVIDE          BANGLADESH     [48-50) cm           >=50 cm            2.0180334   1.3964344    2.916327
0-24 months (no birth st.)   SAS-CompFeed     INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   SAS-CompFeed     INDIA          <48 cm               >=50 cm            1.7683040   1.4860905    2.104111
0-24 months (no birth st.)   SAS-CompFeed     INDIA          [48-50) cm           >=50 cm            1.3677419   1.1668213    1.603260
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm            1.8602501   1.7422957    1.986190
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm            1.4607000   1.3703765    1.556977
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm            0.8571429   0.4254846    1.726723
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm            0.9107143   0.4735622    1.751408
0-6 months (no birth st.)    COHORTS          GUATEMALA      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    COHORTS          GUATEMALA      <48 cm               >=50 cm            6.5375053   4.7434195    9.010161
0-6 months (no birth st.)    COHORTS          GUATEMALA      [48-50) cm           >=50 cm            3.8811413   2.7922316    5.394702
0-6 months (no birth st.)    COHORTS          INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    COHORTS          INDIA          <48 cm               >=50 cm           12.4204153   7.8605063   19.625545
0-6 months (no birth st.)    COHORTS          INDIA          [48-50) cm           >=50 cm            3.5373167   2.1866533    5.722265
0-6 months (no birth st.)    COHORTS          PHILIPPINES    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    COHORTS          PHILIPPINES    <48 cm               >=50 cm            5.7186304   4.5285585    7.221445
0-6 months (no birth st.)    COHORTS          PHILIPPINES    [48-50) cm           >=50 cm            2.7884060   2.1911752    3.548419
0-6 months (no birth st.)    GMS-Nepal        NEPAL          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    GMS-Nepal        NEPAL          <48 cm               >=50 cm            5.4761905   2.4513119   12.233719
0-6 months (no birth st.)    GMS-Nepal        NEPAL          [48-50) cm           >=50 cm            2.0272436   0.8457156    4.859455
0-6 months (no birth st.)    IRC              INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    IRC              INDIA          <48 cm               >=50 cm            2.3832168   1.6451447    3.452415
0-6 months (no birth st.)    IRC              INDIA          [48-50) cm           >=50 cm            1.5902503   1.0979375    2.303315
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     <48 cm               >=50 cm           10.7387782   7.0376514   16.386341
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm            2.2351258   1.4574326    3.427800
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     <48 cm               >=50 cm            2.8961172   1.9968273    4.200411
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm            1.5779191   1.0464111    2.379398
0-6 months (no birth st.)    Keneba           GAMBIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    Keneba           GAMBIA         <48 cm               >=50 cm            3.2989508   2.6673381    4.080126
0-6 months (no birth st.)    Keneba           GAMBIA         [48-50) cm           >=50 cm            1.9619928   1.5854560    2.427955
0-6 months (no birth st.)    MAL-ED           PERU           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    MAL-ED           PERU           <48 cm               >=50 cm            6.0387097   2.5506766   14.296605
0-6 months (no birth st.)    MAL-ED           PERU           [48-50) cm           >=50 cm            3.1311828   1.2843642    7.633587
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   <48 cm               >=50 cm            2.8695652   1.1602326    7.097201
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   [48-50) cm           >=50 cm            2.2318841   0.9385267    5.307581
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     <48 cm               >=50 cm            5.1841492   2.9282171    9.178077
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm            2.1244541   1.1583223    3.896416
0-6 months (no birth st.)    PROBIT           BELARUS        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    PROBIT           BELARUS        <48 cm               >=50 cm           12.7306053   9.9582249   16.274819
0-6 months (no birth st.)    PROBIT           BELARUS        [48-50) cm           >=50 cm            6.0157267   4.7110703    7.681687
0-6 months (no birth st.)    SAS-CompFeed     INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    SAS-CompFeed     INDIA          <48 cm               >=50 cm            4.1558623   2.8700466    6.017739
0-6 months (no birth st.)    SAS-CompFeed     INDIA          [48-50) cm           >=50 cm            1.9001344   1.2622129    2.860461
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm            2.5066553   2.2479736    2.795104
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm            1.7628708   1.5840315    1.961901
6-24 months                  COHORTS          GUATEMALA      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  COHORTS          GUATEMALA      <48 cm               >=50 cm            1.2297350   1.0389082    1.455613
6-24 months                  COHORTS          GUATEMALA      [48-50) cm           >=50 cm            1.2113388   1.0853745    1.351922
6-24 months                  COHORTS          INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  COHORTS          INDIA          <48 cm               >=50 cm            3.5580715   3.0033663    4.215228
6-24 months                  COHORTS          INDIA          [48-50) cm           >=50 cm            2.1931502   1.8421904    2.610972
6-24 months                  COHORTS          PHILIPPINES    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  COHORTS          PHILIPPINES    <48 cm               >=50 cm            1.5181049   1.4013456    1.644592
6-24 months                  COHORTS          PHILIPPINES    [48-50) cm           >=50 cm            1.3424170   1.2479201    1.444069
6-24 months                  EE               PAKISTAN       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  EE               PAKISTAN       <48 cm               >=50 cm            0.9428571   0.5788442    1.535784
6-24 months                  EE               PAKISTAN       [48-50) cm           >=50 cm            0.8000000   0.4947291    1.293637
6-24 months                  GMS-Nepal        NEPAL          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  GMS-Nepal        NEPAL          <48 cm               >=50 cm            1.7922991   1.3651091    2.353172
6-24 months                  GMS-Nepal        NEPAL          [48-50) cm           >=50 cm            1.3516979   1.0101590    1.808712
6-24 months                  IRC              INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  IRC              INDIA          <48 cm               >=50 cm            0.9637489   0.5491580    1.691338
6-24 months                  IRC              INDIA          [48-50) cm           >=50 cm            1.1243737   0.7846312    1.611223
6-24 months                  JiVitA-3         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  JiVitA-3         BANGLADESH     <48 cm               >=50 cm            5.5670843   4.0629009    7.628152
6-24 months                  JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm            2.9672819   2.1418854    4.110753
6-24 months                  JiVitA-4         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  JiVitA-4         BANGLADESH     <48 cm               >=50 cm            1.6690094   1.4523997    1.917924
6-24 months                  JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm            1.2179571   1.0356864    1.432306
6-24 months                  Keneba           GAMBIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  Keneba           GAMBIA         <48 cm               >=50 cm            1.3721545   1.0697028    1.760122
6-24 months                  Keneba           GAMBIA         [48-50) cm           >=50 cm            1.4302086   1.2177588    1.679722
6-24 months                  MAL-ED           BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  MAL-ED           BANGLADESH     <48 cm               >=50 cm            2.0350000   1.1154216    3.712699
6-24 months                  MAL-ED           BANGLADESH     [48-50) cm           >=50 cm            1.6377049   0.8971111    2.989683
6-24 months                  MAL-ED           PERU           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  MAL-ED           PERU           <48 cm               >=50 cm            1.2853261   0.7200660    2.294322
6-24 months                  MAL-ED           PERU           [48-50) cm           >=50 cm            0.9772727   0.5783131    1.651462
6-24 months                  NIH-Birth        BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  NIH-Birth        BANGLADESH     <48 cm               >=50 cm            1.6312925   1.2601484    2.111747
6-24 months                  NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm            1.3264039   1.0393193    1.692788
6-24 months                  NIH-Crypto       BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  NIH-Crypto       BANGLADESH     <48 cm               >=50 cm            3.4060228   2.0645753    5.619069
6-24 months                  NIH-Crypto       BANGLADESH     [48-50) cm           >=50 cm            2.9078014   1.8089202    4.674230
6-24 months                  PROBIT           BELARUS        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  PROBIT           BELARUS        <48 cm               >=50 cm            1.7418575   1.4418729    2.104255
6-24 months                  PROBIT           BELARUS        [48-50) cm           >=50 cm            1.9419003   1.5998419    2.357093
6-24 months                  PROVIDE          BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  PROVIDE          BANGLADESH     <48 cm               >=50 cm            2.5955556   1.6959529    3.972344
6-24 months                  PROVIDE          BANGLADESH     [48-50) cm           >=50 cm            1.9112727   1.2754469    2.864065
6-24 months                  SAS-CompFeed     INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  SAS-CompFeed     INDIA          <48 cm               >=50 cm            1.6788060   1.3708885    2.055885
6-24 months                  SAS-CompFeed     INDIA          [48-50) cm           >=50 cm            1.3730528   1.1468275    1.643904
6-24 months                  ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm            1.7395242   1.5812334    1.913661
6-24 months                  ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm            1.3636924   1.2473809    1.490849


### Parameter: PAR


agecat                       studyid          country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA      >=50 cm              NA                 0.1063988    0.0780851   0.1347125
0-24 months (no birth st.)   COHORTS          INDIA          >=50 cm              NA                 0.1752640    0.1587982   0.1917298
0-24 months (no birth st.)   COHORTS          PHILIPPINES    >=50 cm              NA                 0.1436603    0.1218089   0.1655117
0-24 months (no birth st.)   EE               PAKISTAN       >=50 cm              NA                 0.1202381   -0.0404240   0.2809002
0-24 months (no birth st.)   GMS-Nepal        NEPAL          >=50 cm              NA                 0.1878261    0.1081534   0.2674988
0-24 months (no birth st.)   IRC              INDIA          >=50 cm              NA                 0.0842621    0.0218305   0.1466937
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     >=50 cm              NA                 0.2099656    0.1957358   0.2241954
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     >=50 cm              NA                 0.1066212    0.0783105   0.1349319
0-24 months (no birth st.)   Keneba           GAMBIA         >=50 cm              NA                 0.1068371    0.0822894   0.1313848
0-24 months (no birth st.)   MAL-ED           BANGLADESH     >=50 cm              NA                 0.2217195    0.0896539   0.3537850
0-24 months (no birth st.)   MAL-ED           PERU           >=50 cm              NA                 0.1565403    0.0404079   0.2726727
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   >=50 cm              NA                 0.0599356   -0.0551847   0.1750560
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1619339    0.0918207   0.2320470
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     >=50 cm              NA                 0.2804729    0.2302601   0.3306857
0-24 months (no birth st.)   PROBIT           BELARUS        >=50 cm              NA                 0.0226558    0.0181783   0.0271333
0-24 months (no birth st.)   PROVIDE          BANGLADESH     >=50 cm              NA                 0.2043897    0.1502204   0.2585590
0-24 months (no birth st.)   SAS-CompFeed     INDIA          >=50 cm              NA                 0.1742313    0.1117890   0.2366736
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.1007364    0.0893813   0.1120914
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          >=50 cm              NA                -0.0431373   -0.2731369   0.1868624
0-6 months (no birth st.)    COHORTS          GUATEMALA      >=50 cm              NA                 0.1619949    0.1328454   0.1911444
0-6 months (no birth st.)    COHORTS          INDIA          >=50 cm              NA                 0.0656774    0.0575564   0.0737983
0-6 months (no birth st.)    COHORTS          PHILIPPINES    >=50 cm              NA                 0.1184527    0.1025357   0.1343697
0-6 months (no birth st.)    GMS-Nepal        NEPAL          >=50 cm              NA                 0.1217391    0.0775312   0.1659471
0-6 months (no birth st.)    IRC              INDIA          >=50 cm              NA                 0.1154317    0.0572174   0.1736460
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1203302    0.1111279   0.1295326
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0449715    0.0287156   0.0612273
0-6 months (no birth st.)    Keneba           GAMBIA         >=50 cm              NA                 0.1008254    0.0791209   0.1225300
0-6 months (no birth st.)    MAL-ED           PERU           >=50 cm              NA                 0.2371795    0.1514234   0.3229356
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   >=50 cm              NA                 0.1202735    0.0262608   0.2142862
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1445888    0.0962813   0.1928963
0-6 months (no birth st.)    PROBIT           BELARUS        >=50 cm              NA                 0.0204108    0.0165099   0.0243118
0-6 months (no birth st.)    SAS-CompFeed     INDIA          >=50 cm              NA                 0.1187953    0.0842199   0.1533706
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0706354    0.0620918   0.0791791
6-24 months                  COHORTS          GUATEMALA      >=50 cm              NA                 0.0496664    0.0226156   0.0767172
6-24 months                  COHORTS          INDIA          >=50 cm              NA                 0.1366841    0.1202456   0.1531226
6-24 months                  COHORTS          PHILIPPINES    >=50 cm              NA                 0.1136561    0.0911076   0.1362046
6-24 months                  EE               PAKISTAN       >=50 cm              NA                -0.0611285   -0.2197818   0.0975248
6-24 months                  GMS-Nepal        NEPAL          >=50 cm              NA                 0.1695143    0.0827450   0.2562835
6-24 months                  IRC              INDIA          >=50 cm              NA                 0.0155352   -0.0497737   0.0808441
6-24 months                  JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1687608    0.1510347   0.1864870
6-24 months                  JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0820852    0.0542438   0.1099265
6-24 months                  Keneba           GAMBIA         >=50 cm              NA                 0.0551957    0.0306130   0.0797784
6-24 months                  MAL-ED           BANGLADESH     >=50 cm              NA                 0.1572660    0.0290928   0.2854392
6-24 months                  MAL-ED           PERU           >=50 cm              NA                 0.0163367   -0.1006777   0.1333511
6-24 months                  NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1231860    0.0468570   0.1995150
6-24 months                  NIH-Crypto       BANGLADESH     >=50 cm              NA                 0.1530898    0.1053341   0.2008454
6-24 months                  PROBIT           BELARUS        >=50 cm              NA                 0.0038343    0.0021650   0.0055036
6-24 months                  PROVIDE          BANGLADESH     >=50 cm              NA                 0.1292057    0.0733460   0.1850654
6-24 months                  SAS-CompFeed     INDIA          >=50 cm              NA                 0.1384621    0.0818485   0.1950756
6-24 months                  ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0626527    0.0505774   0.0747279


### Parameter: PAF


agecat                       studyid          country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA      >=50 cm              NA                 0.1502321    0.1075080   0.1909109
0-24 months (no birth st.)   COHORTS          INDIA          >=50 cm              NA                 0.6111770    0.5536589   0.6612830
0-24 months (no birth st.)   COHORTS          PHILIPPINES    >=50 cm              NA                 0.2153400    0.1808475   0.2483801
0-24 months (no birth st.)   EE               PAKISTAN       >=50 cm              NA                 0.1451149   -0.0753561   0.3203847
0-24 months (no birth st.)   GMS-Nepal        NEPAL          >=50 cm              NA                 0.3343653    0.1744979   0.4632727
0-24 months (no birth st.)   IRC              INDIA          >=50 cm              NA                 0.1425021    0.0289060   0.2428100
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     >=50 cm              NA                 0.7905049    0.7328722   0.8357034
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     >=50 cm              NA                 0.2494888    0.1801491   0.3129640
0-24 months (no birth st.)   Keneba           GAMBIA         >=50 cm              NA                 0.2017271    0.1531494   0.2475183
0-24 months (no birth st.)   MAL-ED           BANGLADESH     >=50 cm              NA                 0.4188034    0.1042106   0.6229142
0-24 months (no birth st.)   MAL-ED           PERU           >=50 cm              NA                 0.2793435    0.0361739   0.4611623
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   >=50 cm              NA                 0.1277873   -0.1565984   0.3422480
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     >=50 cm              NA                 0.2695381    0.1408193   0.3789728
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     >=50 cm              NA                 0.7126413    0.5701799   0.8078847
0-24 months (no birth st.)   PROBIT           BELARUS        >=50 cm              NA                 0.1879390    0.1434414   0.2301250
0-24 months (no birth st.)   PROVIDE          BANGLADESH     >=50 cm              NA                 0.5436080    0.3806585   0.6636853
0-24 months (no birth st.)   SAS-CompFeed     INDIA          >=50 cm              NA                 0.3079702    0.1994068   0.4018121
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2883097    0.2552390   0.3199119
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          >=50 cm              NA                -0.1018519   -0.8043179   0.3271266
0-6 months (no birth st.)    COHORTS          GUATEMALA      >=50 cm              NA                 0.6276324    0.5214209   0.7102723
0-6 months (no birth st.)    COHORTS          INDIA          >=50 cm              NA                 0.8313449    0.7389717   0.8910289
0-6 months (no birth st.)    COHORTS          PHILIPPINES    >=50 cm              NA                 0.6257015    0.5460729   0.6913615
0-6 months (no birth st.)    GMS-Nepal        NEPAL          >=50 cm              NA                 0.7000000    0.3631065   0.8586891
0-6 months (no birth st.)    IRC              INDIA          >=50 cm              NA                 0.3318662    0.1442262   0.4783636
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     >=50 cm              NA                 0.8582569    0.7851346   0.9064944
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     >=50 cm              NA                 0.4568985    0.2707528   0.5955291
0-6 months (no birth st.)    Keneba           GAMBIA         >=50 cm              NA                 0.3949668    0.3084983   0.4706229
0-6 months (no birth st.)    MAL-ED           PERU           >=50 cm              NA                 0.7115385    0.3604435   0.8698941
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   >=50 cm              NA                 0.4686520   -0.0208523   0.7234363
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     >=50 cm              NA                 0.6261432    0.3783725   0.7751564
0-6 months (no birth st.)    PROBIT           BELARUS        >=50 cm              NA                 0.3321811    0.2547931   0.4015325
0-6 months (no birth st.)    SAS-CompFeed     INDIA          >=50 cm              NA                 0.6103814    0.4478537   0.7250681
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.4085011    0.3590391   0.4541463
6-24 months                  COHORTS          GUATEMALA      >=50 cm              NA                 0.0686525    0.0297578   0.1059879
6-24 months                  COHORTS          INDIA          >=50 cm              NA                 0.5638218    0.4953098   0.6230332
6-24 months                  COHORTS          PHILIPPINES    >=50 cm              NA                 0.1758014    0.1392614   0.2107902
6-24 months                  EE               PAKISTAN       >=50 cm              NA                -0.0984848   -0.3888305   0.1311618
6-24 months                  GMS-Nepal        NEPAL          >=50 cm              NA                 0.3010209    0.1264263   0.4407206
6-24 months                  IRC              INDIA          >=50 cm              NA                 0.0416121   -0.1503296   0.2015267
6-24 months                  JiVitA-3         BANGLADESH     >=50 cm              NA                 0.7579543    0.6706204   0.8221319
6-24 months                  JiVitA-4         BANGLADESH     >=50 cm              NA                 0.2240322    0.1446065   0.2960830
6-24 months                  Keneba           GAMBIA         >=50 cm              NA                 0.1446318    0.0776715   0.2067309
6-24 months                  MAL-ED           BANGLADESH     >=50 cm              NA                 0.3678424   -0.0149874   0.6062777
6-24 months                  MAL-ED           PERU           >=50 cm              NA                 0.0420584   -0.3119850   0.3005620
6-24 months                  NIH-Birth        BANGLADESH     >=50 cm              NA                 0.2150866    0.0678626   0.3390578
6-24 months                  NIH-Crypto       BANGLADESH     >=50 cm              NA                 0.5824317    0.3769269   0.7201560
6-24 months                  PROBIT           BELARUS        >=50 cm              NA                 0.0596631    0.0323738   0.0861829
6-24 months                  PROVIDE          BANGLADESH     >=50 cm              NA                 0.4300570    0.2171985   0.5850352
6-24 months                  SAS-CompFeed     INDIA          >=50 cm              NA                 0.2765788    0.1562593   0.3797405
6-24 months                  ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2384780    0.1914875   0.2827375

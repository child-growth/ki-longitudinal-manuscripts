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

* arm
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




# Results Detail

## Results Plots
![](/tmp/8502afd3-13a2-4363-ae33-59d83465c82f/cf113943-6501-4746-b0ff-466f71b7defa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8502afd3-13a2-4363-ae33-59d83465c82f/cf113943-6501-4746-b0ff-466f71b7defa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8502afd3-13a2-4363-ae33-59d83465c82f/cf113943-6501-4746-b0ff-466f71b7defa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8502afd3-13a2-4363-ae33-59d83465c82f/cf113943-6501-4746-b0ff-466f71b7defa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA      >=50 cm              NA                0.5991276   0.5530447   0.6452105
0-24 months (no birth st.)   COHORTS          GUATEMALA      <48 cm               NA                0.8836863   0.8250159   0.9423568
0-24 months (no birth st.)   COHORTS          GUATEMALA      [48-50) cm           NA                0.8132919   0.7652065   0.8613774
0-24 months (no birth st.)   COHORTS          INDIA          >=50 cm              NA                0.1194231   0.1025402   0.1363060
0-24 months (no birth st.)   COHORTS          INDIA          <48 cm               NA                0.4420572   0.4202602   0.4638543
0-24 months (no birth st.)   COHORTS          INDIA          [48-50) cm           NA                0.2543306   0.2371769   0.2714844
0-24 months (no birth st.)   COHORTS          PHILIPPINES    >=50 cm              NA                0.5384813   0.5099335   0.5670292
0-24 months (no birth st.)   COHORTS          PHILIPPINES    <48 cm               NA                0.8342171   0.8046195   0.8638147
0-24 months (no birth st.)   COHORTS          PHILIPPINES    [48-50) cm           NA                0.7143625   0.6885819   0.7401431
0-24 months (no birth st.)   EE               PAKISTAN       >=50 cm              NA                0.7083333   0.5258340   0.8908327
0-24 months (no birth st.)   EE               PAKISTAN       <48 cm               NA                0.9032258   0.8293696   0.9770820
0-24 months (no birth st.)   EE               PAKISTAN       [48-50) cm           NA                0.7962963   0.6884899   0.9041027
0-24 months (no birth st.)   GMS-Nepal        NEPAL          >=50 cm              NA                0.3736000   0.2842566   0.4629434
0-24 months (no birth st.)   GMS-Nepal        NEPAL          <48 cm               NA                0.6945820   0.6375866   0.7515775
0-24 months (no birth st.)   GMS-Nepal        NEPAL          [48-50) cm           NA                0.5046216   0.4361476   0.5730955
0-24 months (no birth st.)   IRC              INDIA          >=50 cm              NA                0.5017214   0.4186396   0.5848032
0-24 months (no birth st.)   IRC              INDIA          <48 cm               NA                0.7172704   0.6042512   0.8302897
0-24 months (no birth st.)   IRC              INDIA          [48-50) cm           NA                0.6220831   0.5408697   0.7032965
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     >=50 cm              NA                0.0566876   0.0429100   0.0704653
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     <48 cm               NA                0.3630884   0.3518441   0.3743326
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     [48-50) cm           NA                0.1471198   0.1362518   0.1579877
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     >=50 cm              NA                0.3370451   0.3027375   0.3713527
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     <48 cm               NA                0.5480063   0.5121611   0.5838515
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     [48-50) cm           NA                0.3884471   0.3517524   0.4251417
0-24 months (no birth st.)   Keneba           GAMBIA         >=50 cm              NA                0.4144275   0.3795435   0.4493116
0-24 months (no birth st.)   Keneba           GAMBIA         <48 cm               NA                0.7266480   0.6657218   0.7875742
0-24 months (no birth st.)   Keneba           GAMBIA         [48-50) cm           NA                0.6206502   0.5780536   0.6632469
0-24 months (no birth st.)   MAL-ED           BANGLADESH     >=50 cm              NA                0.2907982   0.1423855   0.4392109
0-24 months (no birth st.)   MAL-ED           BANGLADESH     <48 cm               NA                0.6476840   0.5329282   0.7624399
0-24 months (no birth st.)   MAL-ED           BANGLADESH     [48-50) cm           NA                0.5354643   0.4234822   0.6474464
0-24 months (no birth st.)   MAL-ED           PERU           >=50 cm              NA                0.4011030   0.2619703   0.5402356
0-24 months (no birth st.)   MAL-ED           PERU           <48 cm               NA                0.7639926   0.6565403   0.8714449
0-24 months (no birth st.)   MAL-ED           PERU           [48-50) cm           NA                0.5272899   0.4247442   0.6298356
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   >=50 cm              NA                0.4416529   0.2896489   0.5936568
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   <48 cm               NA                0.4938230   0.2865513   0.7010947
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   [48-50) cm           NA                0.5280560   0.3818668   0.6742451
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     >=50 cm              NA                0.4432140   0.3593005   0.5271275
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     <48 cm               NA                0.7550279   0.6840797   0.8259762
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     [48-50) cm           NA                0.6090528   0.5448096   0.6732960
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     >=50 cm              NA                0.1091676   0.0610719   0.1572632
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     <48 cm               NA                0.5939424   0.5230785   0.6648062
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     [48-50) cm           NA                0.4201908   0.3638385   0.4765431
0-24 months (no birth st.)   PROBIT           BELARUS        >=50 cm              NA                0.0983497   0.0821526   0.1145467
0-24 months (no birth st.)   PROBIT           BELARUS        <48 cm               NA                0.5519219   0.5053648   0.5984790
0-24 months (no birth st.)   PROBIT           BELARUS        [48-50) cm           NA                0.3214436   0.2693795   0.3735078
0-24 months (no birth st.)   PROVIDE          BANGLADESH     >=50 cm              NA                0.1721154   0.1145329   0.2296980
0-24 months (no birth st.)   PROVIDE          BANGLADESH     <48 cm               NA                0.6138268   0.5417935   0.6858601
0-24 months (no birth st.)   PROVIDE          BANGLADESH     [48-50) cm           NA                0.3424260   0.2866645   0.3981875
0-24 months (no birth st.)   SAS-CompFeed     INDIA          >=50 cm              NA                0.4047173   0.3397316   0.4697030
0-24 months (no birth st.)   SAS-CompFeed     INDIA          <48 cm               NA                0.6854608   0.6234492   0.7474723
0-24 months (no birth st.)   SAS-CompFeed     INDIA          [48-50) cm           NA                0.5359972   0.4717924   0.6002020
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.2469208   0.2337521   0.2600895
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       <48 cm               NA                0.4645037   0.4468294   0.4821780
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.3639041   0.3509077   0.3769005
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.4666667   0.2127010   0.7206323
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          <48 cm               NA                0.4000000   0.2236551   0.5763449
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.4250000   0.2708952   0.5791048
0-6 months (no birth st.)    COHORTS          GUATEMALA      >=50 cm              NA                0.0944233   0.0667404   0.1221063
0-6 months (no birth st.)    COHORTS          GUATEMALA      <48 cm               NA                0.6457557   0.5561433   0.7353681
0-6 months (no birth st.)    COHORTS          GUATEMALA      [48-50) cm           NA                0.3831555   0.3232753   0.4430357
0-6 months (no birth st.)    COHORTS          INDIA          >=50 cm              NA                0.0140456   0.0079525   0.0201386
0-6 months (no birth st.)    COHORTS          INDIA          <48 cm               NA                0.1599565   0.1438987   0.1760143
0-6 months (no birth st.)    COHORTS          INDIA          [48-50) cm           NA                0.0472872   0.0388670   0.0557073
0-6 months (no birth st.)    COHORTS          PHILIPPINES    >=50 cm              NA                0.0718107   0.0567961   0.0868253
0-6 months (no birth st.)    COHORTS          PHILIPPINES    <48 cm               NA                0.3938173   0.3538754   0.4337592
0-6 months (no birth st.)    COHORTS          PHILIPPINES    [48-50) cm           NA                0.1970067   0.1739635   0.2200498
0-6 months (no birth st.)    GMS-Nepal        NEPAL          >=50 cm              NA                0.0521739   0.0114951   0.0928527
0-6 months (no birth st.)    GMS-Nepal        NEPAL          <48 cm               NA                0.2857143   0.2298894   0.3415392
0-6 months (no birth st.)    GMS-Nepal        NEPAL          [48-50) cm           NA                0.1057692   0.0639382   0.1476003
0-6 months (no birth st.)    IRC              INDIA          >=50 cm              NA                0.2308557   0.1608365   0.3008748
0-6 months (no birth st.)    IRC              INDIA          <48 cm               NA                0.5488015   0.4239733   0.6736297
0-6 months (no birth st.)    IRC              INDIA          [48-50) cm           NA                0.3669787   0.2850428   0.4489145
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     >=50 cm              NA                0.0208580   0.0124790   0.0292369
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     <48 cm               NA                0.2111862   0.2018242   0.2205482
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     [48-50) cm           NA                0.0443485   0.0380711   0.0506259
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     >=50 cm              NA                0.0535436   0.0369925   0.0700947
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     <48 cm               NA                0.1634597   0.1359895   0.1909300
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     [48-50) cm           NA                0.0829361   0.0601321   0.1057401
0-6 months (no birth st.)    Keneba           GAMBIA         >=50 cm              NA                0.1538096   0.1281612   0.1794579
0-6 months (no birth st.)    Keneba           GAMBIA         <48 cm               NA                0.5081897   0.4383486   0.5780308
0-6 months (no birth st.)    Keneba           GAMBIA         [48-50) cm           NA                0.3051235   0.2642955   0.3459516
0-6 months (no birth st.)    MAL-ED           PERU           >=50 cm              NA                0.0961538   0.0158329   0.1764747
0-6 months (no birth st.)    MAL-ED           PERU           <48 cm               NA                0.5806452   0.4575191   0.7037712
0-6 months (no birth st.)    MAL-ED           PERU           [48-50) cm           NA                0.3010753   0.2076185   0.3945321
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   >=50 cm              NA                0.1363636   0.0345123   0.2382150
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   <48 cm               NA                0.3913043   0.1909624   0.5916463
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   [48-50) cm           NA                0.3043478   0.1707865   0.4379091
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     >=50 cm              NA                0.0850576   0.0383982   0.1317170
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     <48 cm               NA                0.4529835   0.3709084   0.5350586
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     [48-50) cm           NA                0.1853798   0.1348616   0.2358979
0-6 months (no birth st.)    PROBIT           BELARUS        >=50 cm              NA                0.0411986   0.0308506   0.0515466
0-6 months (no birth st.)    PROBIT           BELARUS        <48 cm               NA                0.5067214   0.4616259   0.5518169
0-6 months (no birth st.)    PROBIT           BELARUS        [48-50) cm           NA                0.2404244   0.1866102   0.2942387
0-6 months (no birth st.)    SAS-CompFeed     INDIA          >=50 cm              NA                0.0798647   0.0545470   0.1051824
0-6 months (no birth st.)    SAS-CompFeed     INDIA          <48 cm               NA                0.3073951   0.2594302   0.3553600
0-6 months (no birth st.)    SAS-CompFeed     INDIA          [48-50) cm           NA                0.1450995   0.1176848   0.1725141
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0993205   0.0902324   0.1084086
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       <48 cm               NA                0.2631747   0.2474838   0.2788655
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.1813922   0.1710006   0.1917837
6-24 months                  COHORTS          GUATEMALA      >=50 cm              NA                0.6737805   0.6229925   0.7245685
6-24 months                  COHORTS          GUATEMALA      <48 cm               NA                0.8285714   0.7035869   0.9535560
6-24 months                  COHORTS          GUATEMALA      [48-50) cm           NA                0.8161765   0.7510126   0.8813403
6-24 months                  COHORTS          INDIA          >=50 cm              NA                0.1116550   0.0950587   0.1282513
6-24 months                  COHORTS          INDIA          <48 cm               NA                0.3667037   0.3425538   0.3908537
6-24 months                  COHORTS          INDIA          [48-50) cm           NA                0.2319583   0.2144363   0.2494803
6-24 months                  COHORTS          PHILIPPINES    >=50 cm              NA                0.5437006   0.5127215   0.5746796
6-24 months                  COHORTS          PHILIPPINES    <48 cm               NA                0.8034739   0.7613703   0.8455774
6-24 months                  COHORTS          PHILIPPINES    [48-50) cm           NA                0.7073625   0.6772236   0.7375013
6-24 months                  EE               PAKISTAN       >=50 cm              NA                0.6818182   0.4854888   0.8781476
6-24 months                  EE               PAKISTAN       <48 cm               NA                0.6428571   0.3896716   0.8960427
6-24 months                  EE               PAKISTAN       [48-50) cm           NA                0.5454545   0.3355696   0.7553395
6-24 months                  GMS-Nepal        NEPAL          >=50 cm              NA                0.3968598   0.2962134   0.4975062
6-24 months                  GMS-Nepal        NEPAL          <48 cm               NA                0.7092245   0.6340888   0.7843602
6-24 months                  GMS-Nepal        NEPAL          [48-50) cm           NA                0.5315195   0.4527055   0.6103336
6-24 months                  IRC              INDIA          >=50 cm              NA                0.3589714   0.2680938   0.4498489
6-24 months                  IRC              INDIA          <48 cm               NA                0.3449256   0.1717558   0.5180954
6-24 months                  IRC              INDIA          [48-50) cm           NA                0.4059763   0.3014774   0.5104752
6-24 months                  JiVitA-3         BANGLADESH     >=50 cm              NA                0.0509191   0.0346717   0.0671666
6-24 months                  JiVitA-3         BANGLADESH     <48 cm               NA                0.3011730   0.2862734   0.3160726
6-24 months                  JiVitA-3         BANGLADESH     [48-50) cm           NA                0.1599906   0.1460290   0.1739521
6-24 months                  JiVitA-4         BANGLADESH     >=50 cm              NA                0.2960826   0.2615423   0.3306228
6-24 months                  JiVitA-4         BANGLADESH     <48 cm               NA                0.4633885   0.4252902   0.5014869
6-24 months                  JiVitA-4         BANGLADESH     [48-50) cm           NA                0.3349062   0.2964932   0.3733193
6-24 months                  Keneba           GAMBIA         >=50 cm              NA                0.3171892   0.2807758   0.3536026
6-24 months                  Keneba           GAMBIA         <48 cm               NA                0.4738343   0.3734686   0.5741999
6-24 months                  Keneba           GAMBIA         [48-50) cm           NA                0.4770727   0.4236804   0.5304651
6-24 months                  MAL-ED           BANGLADESH     >=50 cm              NA                0.2492149   0.1026424   0.3957874
6-24 months                  MAL-ED           BANGLADESH     <48 cm               NA                0.5370730   0.3755917   0.6985544
6-24 months                  MAL-ED           BANGLADESH     [48-50) cm           NA                0.4398527   0.3154752   0.5642303
6-24 months                  MAL-ED           PERU           >=50 cm              NA                0.3505361   0.2004548   0.5006175
6-24 months                  MAL-ED           PERU           <48 cm               NA                0.4631964   0.2597137   0.6666791
6-24 months                  MAL-ED           PERU           [48-50) cm           NA                0.3530406   0.2232828   0.4827983
6-24 months                  NIH-Birth        BANGLADESH     >=50 cm              NA                0.4426531   0.3485209   0.5367852
6-24 months                  NIH-Birth        BANGLADESH     <48 cm               NA                0.7264978   0.6140835   0.8389122
6-24 months                  NIH-Birth        BANGLADESH     [48-50) cm           NA                0.5965487   0.5209133   0.6721841
6-24 months                  NIH-Crypto       BANGLADESH     >=50 cm              NA                0.1121004   0.0638421   0.1603587
6-24 months                  NIH-Crypto       BANGLADESH     <48 cm               NA                0.3679218   0.2759493   0.4598943
6-24 months                  NIH-Crypto       BANGLADESH     [48-50) cm           NA                0.3226287   0.2626736   0.3825839
6-24 months                  PROBIT           BELARUS        >=50 cm              NA                0.0604316   0.0489277   0.0719354
6-24 months                  PROBIT           BELARUS        <48 cm               NA                0.1052632   0.0921005   0.1184258
6-24 months                  PROBIT           BELARUS        [48-50) cm           NA                0.1173521   0.0956456   0.1390585
6-24 months                  PROVIDE          BANGLADESH     >=50 cm              NA                0.1700427   0.1085365   0.2315490
6-24 months                  PROVIDE          BANGLADESH     <48 cm               NA                0.4353086   0.3267738   0.5438434
6-24 months                  PROVIDE          BANGLADESH     [48-50) cm           NA                0.3291973   0.2670433   0.3913514
6-24 months                  SAS-CompFeed     INDIA          >=50 cm              NA                0.3656766   0.3036670   0.4276862
6-24 months                  SAS-CompFeed     INDIA          <48 cm               NA                0.6062478   0.5550413   0.6574543
6-24 months                  SAS-CompFeed     INDIA          [48-50) cm           NA                0.4953548   0.4429389   0.5477707
6-24 months                  ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.2008699   0.1864909   0.2152490
6-24 months                  ZVITAMBO         ZIMBABWE       <48 cm               NA                0.3461982   0.3242634   0.3681331
6-24 months                  ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.2723822   0.2576515   0.2871128


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
0-24 months (no birth st.)   COHORTS          GUATEMALA      <48 cm               >=50 cm            1.4749551   1.3323630    1.632808
0-24 months (no birth st.)   COHORTS          GUATEMALA      [48-50) cm           >=50 cm            1.3574602   1.2318128    1.495924
0-24 months (no birth st.)   COHORTS          INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   COHORTS          INDIA          <48 cm               >=50 cm            3.7016054   3.1886017    4.297145
0-24 months (no birth st.)   COHORTS          INDIA          [48-50) cm           >=50 cm            2.1296602   1.8226642    2.488364
0-24 months (no birth st.)   COHORTS          PHILIPPINES    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   COHORTS          PHILIPPINES    <48 cm               >=50 cm            1.5492034   1.4543148    1.650283
0-24 months (no birth st.)   COHORTS          PHILIPPINES    [48-50) cm           >=50 cm            1.3266245   1.2452492    1.413318
0-24 months (no birth st.)   EE               PAKISTAN       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   EE               PAKISTAN       <48 cm               >=50 cm            1.2751423   0.9731153    1.670910
0-24 months (no birth st.)   EE               PAKISTAN       [48-50) cm           >=50 cm            1.1241830   0.8403017    1.503969
0-24 months (no birth st.)   GMS-Nepal        NEPAL          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   GMS-Nepal        NEPAL          <48 cm               >=50 cm            1.8591596   1.4438056    2.394003
0-24 months (no birth st.)   GMS-Nepal        NEPAL          [48-50) cm           >=50 cm            1.3507001   1.0260591    1.778056
0-24 months (no birth st.)   IRC              INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   IRC              INDIA          <48 cm               >=50 cm            1.4296190   1.1377650    1.796338
0-24 months (no birth st.)   IRC              INDIA          [48-50) cm           >=50 cm            1.2398975   1.0044582    1.530522
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     <48 cm               >=50 cm            6.4050728   5.0312266    8.154067
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm            2.5952709   2.0217266    3.331524
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     <48 cm               >=50 cm            1.6259136   1.4393148    1.836704
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm            1.1525076   1.0020694    1.325531
0-24 months (no birth st.)   Keneba           GAMBIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   Keneba           GAMBIA         <48 cm               >=50 cm            1.7533777   1.5575989    1.973765
0-24 months (no birth st.)   Keneba           GAMBIA         [48-50) cm           >=50 cm            1.4976086   1.3445811    1.668052
0-24 months (no birth st.)   MAL-ED           BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   MAL-ED           BANGLADESH     <48 cm               >=50 cm            2.2272631   1.2948739    3.831030
0-24 months (no birth st.)   MAL-ED           BANGLADESH     [48-50) cm           >=50 cm            1.8413607   1.0601352    3.198280
0-24 months (no birth st.)   MAL-ED           PERU           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   MAL-ED           PERU           <48 cm               >=50 cm            1.9047294   1.3075548    2.774640
0-24 months (no birth st.)   MAL-ED           PERU           [48-50) cm           >=50 cm            1.3145999   0.8838731    1.955227
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   <48 cm               >=50 cm            1.1181247   0.6480376    1.929213
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   [48-50) cm           >=50 cm            1.1956358   0.7678274    1.861805
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     <48 cm               >=50 cm            1.7035292   1.3792336    2.104076
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm            1.3741733   1.1057017    1.707831
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     <48 cm               >=50 cm            5.4406488   3.4488098    8.582862
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     [48-50) cm           >=50 cm            3.8490446   2.4291440    6.098916
0-24 months (no birth st.)   PROBIT           BELARUS        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   PROBIT           BELARUS        <48 cm               >=50 cm            5.6118333   4.7346899    6.651475
0-24 months (no birth st.)   PROBIT           BELARUS        [48-50) cm           >=50 cm            3.2683754   2.7187382    3.929131
0-24 months (no birth st.)   PROVIDE          BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH     <48 cm               >=50 cm            3.5663666   2.5011818    5.085185
0-24 months (no birth st.)   PROVIDE          BANGLADESH     [48-50) cm           >=50 cm            1.9895134   1.3711019    2.886849
0-24 months (no birth st.)   SAS-CompFeed     INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   SAS-CompFeed     INDIA          <48 cm               >=50 cm            1.6936779   1.4171243    2.024201
0-24 months (no birth st.)   SAS-CompFeed     INDIA          [48-50) cm           >=50 cm            1.3243742   1.1216794    1.563697
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm            1.8811852   1.7620474    2.008378
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm            1.4737686   1.3822219    1.571379
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm            0.8571429   0.4254846    1.726723
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm            0.9107143   0.4735622    1.751408
0-6 months (no birth st.)    COHORTS          GUATEMALA      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    COHORTS          GUATEMALA      <48 cm               >=50 cm            6.8389414   4.9442023    9.459791
0-6 months (no birth st.)    COHORTS          GUATEMALA      [48-50) cm           >=50 cm            4.0578474   2.9097184    5.659010
0-6 months (no birth st.)    COHORTS          INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    COHORTS          INDIA          <48 cm               >=50 cm           11.3884046   7.2969428   17.773986
0-6 months (no birth st.)    COHORTS          INDIA          [48-50) cm           >=50 cm            3.3667002   2.1068575    5.379894
0-6 months (no birth st.)    COHORTS          PHILIPPINES    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    COHORTS          PHILIPPINES    <48 cm               >=50 cm            5.4841026   4.3483826    6.916452
0-6 months (no birth st.)    COHORTS          PHILIPPINES    [48-50) cm           >=50 cm            2.7434162   2.1600201    3.484381
0-6 months (no birth st.)    GMS-Nepal        NEPAL          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    GMS-Nepal        NEPAL          <48 cm               >=50 cm            5.4761905   2.4513119   12.233719
0-6 months (no birth st.)    GMS-Nepal        NEPAL          [48-50) cm           >=50 cm            2.0272436   0.8457156    4.859455
0-6 months (no birth st.)    IRC              INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    IRC              INDIA          <48 cm               >=50 cm            2.3772496   1.6267520    3.473987
0-6 months (no birth st.)    IRC              INDIA          [48-50) cm           >=50 cm            1.5896455   1.0899107    2.318514
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     <48 cm               >=50 cm           10.1249711   6.7937540   15.089602
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm            2.1262146   1.4203363    3.182900
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     <48 cm               >=50 cm            3.0528350   2.1576763    4.319370
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm            1.5489453   1.0229467    2.345412
0-6 months (no birth st.)    Keneba           GAMBIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    Keneba           GAMBIA         <48 cm               >=50 cm            3.3040192   2.6630000    4.099340
0-6 months (no birth st.)    Keneba           GAMBIA         [48-50) cm           >=50 cm            1.9837749   1.6024952    2.455772
0-6 months (no birth st.)    MAL-ED           PERU           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    MAL-ED           PERU           <48 cm               >=50 cm            6.0387097   2.5506766   14.296605
0-6 months (no birth st.)    MAL-ED           PERU           [48-50) cm           >=50 cm            3.1311828   1.2843642    7.633587
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   <48 cm               >=50 cm            2.8695652   1.1602326    7.097201
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   [48-50) cm           >=50 cm            2.2318841   0.9385267    5.307581
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     <48 cm               >=50 cm            5.3256090   2.9877496    9.492801
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm            2.1794616   1.1802288    4.024688
0-6 months (no birth st.)    PROBIT           BELARUS        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    PROBIT           BELARUS        <48 cm               >=50 cm           12.2994760   9.5965823   15.763644
0-6 months (no birth st.)    PROBIT           BELARUS        [48-50) cm           >=50 cm            5.8357407   4.5201368    7.534256
0-6 months (no birth st.)    SAS-CompFeed     INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    SAS-CompFeed     INDIA          <48 cm               >=50 cm            3.8489473   2.6835714    5.520403
0-6 months (no birth st.)    SAS-CompFeed     INDIA          [48-50) cm           >=50 cm            1.8168157   1.2042875    2.740890
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm            2.6497518   2.3759093    2.955157
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm            1.8263315   1.6396669    2.034247
6-24 months                  COHORTS          GUATEMALA      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  COHORTS          GUATEMALA      <48 cm               >=50 cm            1.2297350   1.0389082    1.455613
6-24 months                  COHORTS          GUATEMALA      [48-50) cm           >=50 cm            1.2113388   1.0853745    1.351922
6-24 months                  COHORTS          INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  COHORTS          INDIA          <48 cm               >=50 cm            3.2842564   2.7933568    3.861426
6-24 months                  COHORTS          INDIA          [48-50) cm           >=50 cm            2.0774554   1.7604640    2.451525
6-24 months                  COHORTS          PHILIPPINES    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  COHORTS          PHILIPPINES    <48 cm               >=50 cm            1.4777874   1.3688743    1.595366
6-24 months                  COHORTS          PHILIPPINES    [48-50) cm           >=50 cm            1.3010148   1.2127987    1.395647
6-24 months                  EE               PAKISTAN       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  EE               PAKISTAN       <48 cm               >=50 cm            0.9428571   0.5788442    1.535784
6-24 months                  EE               PAKISTAN       [48-50) cm           >=50 cm            0.8000000   0.4947291    1.293637
6-24 months                  GMS-Nepal        NEPAL          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  GMS-Nepal        NEPAL          <48 cm               >=50 cm            1.7870908   1.3572270    2.353102
6-24 months                  GMS-Nepal        NEPAL          [48-50) cm           >=50 cm            1.3393131   0.9985791    1.796312
6-24 months                  IRC              INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  IRC              INDIA          <48 cm               >=50 cm            0.9608721   0.5473519    1.686804
6-24 months                  IRC              INDIA          [48-50) cm           >=50 cm            1.1309435   0.7876004    1.623962
6-24 months                  JiVitA-3         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  JiVitA-3         BANGLADESH     <48 cm               >=50 cm            5.9147304   4.3009001    8.134120
6-24 months                  JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm            3.1420516   2.2611816    4.366075
6-24 months                  JiVitA-4         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  JiVitA-4         BANGLADESH     <48 cm               >=50 cm            1.5650651   1.3564971    1.805702
6-24 months                  JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm            1.1311245   0.9577976    1.335817
6-24 months                  Keneba           GAMBIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  Keneba           GAMBIA         <48 cm               >=50 cm            1.4938536   1.1749916    1.899246
6-24 months                  Keneba           GAMBIA         [48-50) cm           >=50 cm            1.5040635   1.2825983    1.763769
6-24 months                  MAL-ED           BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  MAL-ED           BANGLADESH     <48 cm               >=50 cm            2.1550600   1.1111416    4.179741
6-24 months                  MAL-ED           BANGLADESH     [48-50) cm           >=50 cm            1.7649538   0.9265334    3.362061
6-24 months                  MAL-ED           PERU           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  MAL-ED           PERU           <48 cm               >=50 cm            1.3213942   0.7119336    2.452592
6-24 months                  MAL-ED           PERU           [48-50) cm           >=50 cm            1.0071445   0.5720608    1.773133
6-24 months                  NIH-Birth        BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  NIH-Birth        BANGLADESH     <48 cm               >=50 cm            1.6412353   1.2631780    2.132442
6-24 months                  NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm            1.3476666   1.0524585    1.725679
6-24 months                  NIH-Crypto       BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  NIH-Crypto       BANGLADESH     <48 cm               >=50 cm            3.2820736   1.9963767    5.395779
6-24 months                  NIH-Crypto       BANGLADESH     [48-50) cm           >=50 cm            2.8780336   1.8008564    4.599521
6-24 months                  PROBIT           BELARUS        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  PROBIT           BELARUS        <48 cm               >=50 cm            1.7418575   1.4418729    2.104255
6-24 months                  PROBIT           BELARUS        [48-50) cm           >=50 cm            1.9419003   1.5998419    2.357093
6-24 months                  PROVIDE          BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  PROVIDE          BANGLADESH     <48 cm               >=50 cm            2.5599952   1.6475404    3.977794
6-24 months                  PROVIDE          BANGLADESH     [48-50) cm           >=50 cm            1.9359684   1.2873386    2.911412
6-24 months                  SAS-CompFeed     INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  SAS-CompFeed     INDIA          <48 cm               >=50 cm            1.6578798   1.3606805    2.019993
6-24 months                  SAS-CompFeed     INDIA          [48-50) cm           >=50 cm            1.3546255   1.1335819    1.618772
6-24 months                  ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm            1.7234947   1.5664650    1.896266
6-24 months                  ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm            1.3560128   1.2397562    1.483171


### Parameter: PAR


agecat                       studyid          country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA      >=50 cm              NA                 0.1091018    0.0805327   0.1376709
0-24 months (no birth st.)   COHORTS          INDIA          >=50 cm              NA                 0.1673416    0.1505620   0.1841212
0-24 months (no birth st.)   COHORTS          PHILIPPINES    >=50 cm              NA                 0.1286510    0.1074646   0.1498375
0-24 months (no birth st.)   EE               PAKISTAN       >=50 cm              NA                 0.1202381   -0.0404240   0.2809002
0-24 months (no birth st.)   GMS-Nepal        NEPAL          >=50 cm              NA                 0.1881391    0.1076466   0.2686316
0-24 months (no birth st.)   IRC              INDIA          >=50 cm              NA                 0.0895830    0.0266057   0.1525602
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     >=50 cm              NA                 0.2089218    0.1947710   0.2230726
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0903134    0.0607150   0.1199117
0-24 months (no birth st.)   Keneba           GAMBIA         >=50 cm              NA                 0.1151844    0.0907832   0.1395857
0-24 months (no birth st.)   MAL-ED           BANGLADESH     >=50 cm              NA                 0.2386136    0.1031707   0.3740565
0-24 months (no birth st.)   MAL-ED           PERU           >=50 cm              NA                 0.1592835    0.0382347   0.2803323
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   >=50 cm              NA                 0.0273737   -0.0939955   0.1487429
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1575688    0.0862206   0.2289170
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     >=50 cm              NA                 0.2844006    0.2340449   0.3347562
0-24 months (no birth st.)   PROBIT           BELARUS        >=50 cm              NA                 0.0221991    0.0177623   0.0266359
0-24 months (no birth st.)   PROVIDE          BANGLADESH     >=50 cm              NA                 0.2038719    0.1491713   0.2585725
0-24 months (no birth st.)   SAS-CompFeed     INDIA          >=50 cm              NA                 0.1610234    0.0929464   0.2291005
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.1024826    0.0911213   0.1138439
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          >=50 cm              NA                -0.0431373   -0.2731369   0.1868624
0-6 months (no birth st.)    COHORTS          GUATEMALA      >=50 cm              NA                 0.1636814    0.1344548   0.1929080
0-6 months (no birth st.)    COHORTS          INDIA          >=50 cm              NA                 0.0649558    0.0567619   0.0731497
0-6 months (no birth st.)    COHORTS          PHILIPPINES    >=50 cm              NA                 0.1175012    0.1015558   0.1334466
0-6 months (no birth st.)    GMS-Nepal        NEPAL          >=50 cm              NA                 0.1217391    0.0775312   0.1659471
0-6 months (no birth st.)    IRC              INDIA          >=50 cm              NA                 0.1169704    0.0582914   0.1756495
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1193451    0.1103171   0.1283731
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0448841    0.0293505   0.0604177
0-6 months (no birth st.)    Keneba           GAMBIA         >=50 cm              NA                 0.1014661    0.0797131   0.1232192
0-6 months (no birth st.)    MAL-ED           PERU           >=50 cm              NA                 0.2371795    0.1514234   0.3229356
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   >=50 cm              NA                 0.1202735    0.0262608   0.2142862
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1458622    0.0976133   0.1941111
0-6 months (no birth st.)    PROBIT           BELARUS        >=50 cm              NA                 0.0202462    0.0163368   0.0241557
0-6 months (no birth st.)    SAS-CompFeed     INDIA          >=50 cm              NA                 0.1147599    0.0792509   0.1502690
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0735932    0.0651543   0.0820320
6-24 months                  COHORTS          GUATEMALA      >=50 cm              NA                 0.0496664    0.0226156   0.0767172
6-24 months                  COHORTS          INDIA          >=50 cm              NA                 0.1307692    0.1144426   0.1470958
6-24 months                  COHORTS          PHILIPPINES    >=50 cm              NA                 0.1028023    0.0810076   0.1245969
6-24 months                  EE               PAKISTAN       >=50 cm              NA                -0.0611285   -0.2197818   0.0975248
6-24 months                  GMS-Nepal        NEPAL          >=50 cm              NA                 0.1662715    0.0778542   0.2546888
6-24 months                  IRC              INDIA          >=50 cm              NA                 0.0143620   -0.0515327   0.0802566
6-24 months                  JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1717339    0.1545196   0.1889482
6-24 months                  JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0703163    0.0404736   0.1001590
6-24 months                  Keneba           GAMBIA         >=50 cm              NA                 0.0644396    0.0400960   0.0887831
6-24 months                  MAL-ED           BANGLADESH     >=50 cm              NA                 0.1783214    0.0481570   0.3084857
6-24 months                  MAL-ED           PERU           >=50 cm              NA                 0.0378936   -0.0841247   0.1599119
6-24 months                  NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1300742    0.0531192   0.2070292
6-24 months                  NIH-Crypto       BANGLADESH     >=50 cm              NA                 0.1507454    0.1027799   0.1987110
6-24 months                  PROBIT           BELARUS        >=50 cm              NA                 0.0038343    0.0021650   0.0055036
6-24 months                  PROVIDE          BANGLADESH     >=50 cm              NA                 0.1303959    0.0741802   0.1866116
6-24 months                  SAS-CompFeed     INDIA          >=50 cm              NA                 0.1349476    0.0769903   0.1929050
6-24 months                  ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0618490    0.0496549   0.0740432


### Parameter: PAF


agecat                       studyid          country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA      >=50 cm              NA                 0.1540487    0.1108976   0.1951055
0-24 months (no birth st.)   COHORTS          INDIA          >=50 cm              NA                 0.5835502    0.5244798   0.6352827
0-24 months (no birth st.)   COHORTS          PHILIPPINES    >=50 cm              NA                 0.1928418    0.1595719   0.2247948
0-24 months (no birth st.)   EE               PAKISTAN       >=50 cm              NA                 0.1451149   -0.0753561   0.3203847
0-24 months (no birth st.)   GMS-Nepal        NEPAL          >=50 cm              NA                 0.3349226    0.1731598   0.4650381
0-24 months (no birth st.)   IRC              INDIA          >=50 cm              NA                 0.1515006    0.0365384   0.2527452
0-24 months (no birth st.)   JiVitA-3         BANGLADESH     >=50 cm              NA                 0.7865753    0.7294639   0.8316301
0-24 months (no birth st.)   JiVitA-4         BANGLADESH     >=50 cm              NA                 0.2113293    0.1391968   0.2774173
0-24 months (no birth st.)   Keneba           GAMBIA         >=50 cm              NA                 0.2174884    0.1690467   0.2631061
0-24 months (no birth st.)   MAL-ED           BANGLADESH     >=50 cm              NA                 0.4507146    0.1205921   0.6569118
0-24 months (no birth st.)   MAL-ED           PERU           >=50 cm              NA                 0.2842387    0.0280971   0.4728750
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA   >=50 cm              NA                 0.0583628   -0.2396783   0.2847494
0-24 months (no birth st.)   NIH-Birth        BANGLADESH     >=50 cm              NA                 0.2622725    0.1312138   0.3735606
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH     >=50 cm              NA                 0.7226209    0.5782284   0.8175810
0-24 months (no birth st.)   PROBIT           BELARUS        >=50 cm              NA                 0.1841503    0.1400914   0.2259519
0-24 months (no birth st.)   PROVIDE          BANGLADESH     >=50 cm              NA                 0.5422308    0.3769964   0.6636413
0-24 months (no birth st.)   SAS-CompFeed     INDIA          >=50 cm              NA                 0.2846241    0.1664925   0.3860130
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2933074    0.2602289   0.3249069
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA          >=50 cm              NA                -0.1018519   -0.8043179   0.3271266
0-6 months (no birth st.)    COHORTS          GUATEMALA      >=50 cm              NA                 0.6341666    0.5273170   0.7168629
0-6 months (no birth st.)    COHORTS          INDIA          >=50 cm              NA                 0.8222112    0.7283155   0.8836561
0-6 months (no birth st.)    COHORTS          PHILIPPINES    >=50 cm              NA                 0.6206752    0.5409017   0.6865871
0-6 months (no birth st.)    GMS-Nepal        NEPAL          >=50 cm              NA                 0.7000000    0.3631065   0.8586891
0-6 months (no birth st.)    IRC              INDIA          >=50 cm              NA                 0.3362900    0.1465752   0.4838315
0-6 months (no birth st.)    JiVitA-3         BANGLADESH     >=50 cm              NA                 0.8512304    0.7797088   0.8995311
0-6 months (no birth st.)    JiVitA-4         BANGLADESH     >=50 cm              NA                 0.4560108    0.2845477   0.5863817
0-6 months (no birth st.)    Keneba           GAMBIA         >=50 cm              NA                 0.3974767    0.3107912   0.4732592
0-6 months (no birth st.)    MAL-ED           PERU           >=50 cm              NA                 0.7115385    0.3604435   0.8698941
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA   >=50 cm              NA                 0.4686520   -0.0208523   0.7234363
0-6 months (no birth st.)    NIH-Birth        BANGLADESH     >=50 cm              NA                 0.6316574    0.3833140   0.7799913
0-6 months (no birth st.)    PROBIT           BELARUS        >=50 cm              NA                 0.3295025    0.2523095   0.3987260
0-6 months (no birth st.)    SAS-CompFeed     INDIA          >=50 cm              NA                 0.5896475    0.4214667   0.7089378
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.4256064    0.3769194   0.4704890
6-24 months                  COHORTS          GUATEMALA      >=50 cm              NA                 0.0686525    0.0297578   0.1059879
6-24 months                  COHORTS          INDIA          >=50 cm              NA                 0.5394230    0.4714261   0.5986726
6-24 months                  COHORTS          PHILIPPINES    >=50 cm              NA                 0.1590128    0.1238284   0.1927844
6-24 months                  EE               PAKISTAN       >=50 cm              NA                -0.0984848   -0.3888305   0.1311618
6-24 months                  GMS-Nepal        NEPAL          >=50 cm              NA                 0.2952624    0.1170787   0.4374866
6-24 months                  IRC              INDIA          >=50 cm              NA                 0.0384696   -0.1553276   0.1997588
6-24 months                  JiVitA-3         BANGLADESH     >=50 cm              NA                 0.7713072    0.6874819   0.8326484
6-24 months                  JiVitA-4         BANGLADESH     >=50 cm              NA                 0.1919119    0.1067123   0.2689854
6-24 months                  Keneba           GAMBIA         >=50 cm              NA                 0.1688540    0.1023662   0.2304172
6-24 months                  MAL-ED           BANGLADESH     >=50 cm              NA                 0.4170906    0.0138663   0.6554389
6-24 months                  MAL-ED           PERU           >=50 cm              NA                 0.0975559   -0.2793123   0.3634038
6-24 months                  NIH-Birth        BANGLADESH     >=50 cm              NA                 0.2271137    0.0781343   0.3520171
6-24 months                  NIH-Crypto       BANGLADESH     >=50 cm              NA                 0.5735127    0.3672062   0.7125582
6-24 months                  PROBIT           BELARUS        >=50 cm              NA                 0.0596631    0.0323738   0.0861829
6-24 months                  PROVIDE          BANGLADESH     >=50 cm              NA                 0.4340184    0.2191510   0.5897604
6-24 months                  SAS-CompFeed     INDIA          >=50 cm              NA                 0.2695588    0.1496515   0.3725580
6-24 months                  ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2354190    0.1879474   0.2801154

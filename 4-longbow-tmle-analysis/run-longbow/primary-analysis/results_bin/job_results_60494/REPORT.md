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

**Outcome Variable:** pers_wast

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

agecat        studyid          country                        birthlen      pers_wast   n_cell       n
------------  ---------------  -----------------------------  -----------  ----------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm               0       16     106
0-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm               1        0     106
0-24 months   CMC-V-BCS-2002   INDIA                          <48 cm                0       45     106
0-24 months   CMC-V-BCS-2002   INDIA                          <48 cm                1        5     106
0-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm            0       39     106
0-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm            1        1     106
0-24 months   CMIN             BANGLADESH                     >=50 cm               0        0      12
0-24 months   CMIN             BANGLADESH                     >=50 cm               1        0      12
0-24 months   CMIN             BANGLADESH                     <48 cm                0        6      12
0-24 months   CMIN             BANGLADESH                     <48 cm                1        0      12
0-24 months   CMIN             BANGLADESH                     [48-50) cm            0        6      12
0-24 months   CMIN             BANGLADESH                     [48-50) cm            1        0      12
0-24 months   COHORTS          GUATEMALA                      >=50 cm               0      340     699
0-24 months   COHORTS          GUATEMALA                      >=50 cm               1        7     699
0-24 months   COHORTS          GUATEMALA                      <48 cm                0      136     699
0-24 months   COHORTS          GUATEMALA                      <48 cm                1        5     699
0-24 months   COHORTS          GUATEMALA                      [48-50) cm            0      206     699
0-24 months   COHORTS          GUATEMALA                      [48-50) cm            1        5     699
0-24 months   COHORTS          INDIA                          >=50 cm               0     1096    5267
0-24 months   COHORTS          INDIA                          >=50 cm               1       76    5267
0-24 months   COHORTS          INDIA                          <48 cm                0     1865    5267
0-24 months   COHORTS          INDIA                          <48 cm                1      253    5267
0-24 months   COHORTS          INDIA                          [48-50) cm            0     1799    5267
0-24 months   COHORTS          INDIA                          [48-50) cm            1      178    5267
0-24 months   COHORTS          PHILIPPINES                    >=50 cm               0      998    2804
0-24 months   COHORTS          PHILIPPINES                    >=50 cm               1       39    2804
0-24 months   COHORTS          PHILIPPINES                    <48 cm                0      653    2804
0-24 months   COHORTS          PHILIPPINES                    <48 cm                1       48    2804
0-24 months   COHORTS          PHILIPPINES                    [48-50) cm            0     1010    2804
0-24 months   COHORTS          PHILIPPINES                    [48-50) cm            1       56    2804
0-24 months   CONTENT          PERU                           >=50 cm               0        1       2
0-24 months   CONTENT          PERU                           >=50 cm               1        0       2
0-24 months   CONTENT          PERU                           <48 cm                0        1       2
0-24 months   CONTENT          PERU                           <48 cm                1        0       2
0-24 months   CONTENT          PERU                           [48-50) cm            0        0       2
0-24 months   CONTENT          PERU                           [48-50) cm            1        0       2
0-24 months   EE               PAKISTAN                       >=50 cm               0       22     240
0-24 months   EE               PAKISTAN                       >=50 cm               1        2     240
0-24 months   EE               PAKISTAN                       <48 cm                0      147     240
0-24 months   EE               PAKISTAN                       <48 cm                1       15     240
0-24 months   EE               PAKISTAN                       [48-50) cm            0       51     240
0-24 months   EE               PAKISTAN                       [48-50) cm            1        3     240
0-24 months   GMS-Nepal        NEPAL                          >=50 cm               0       93     596
0-24 months   GMS-Nepal        NEPAL                          >=50 cm               1        8     596
0-24 months   GMS-Nepal        NEPAL                          <48 cm                0      268     596
0-24 months   GMS-Nepal        NEPAL                          <48 cm                1       48     596
0-24 months   GMS-Nepal        NEPAL                          [48-50) cm            0      155     596
0-24 months   GMS-Nepal        NEPAL                          [48-50) cm            1       24     596
0-24 months   IRC              INDIA                          >=50 cm               0      124     391
0-24 months   IRC              INDIA                          >=50 cm               1       18     391
0-24 months   IRC              INDIA                          <48 cm                0      100     391
0-24 months   IRC              INDIA                          <48 cm                1       11     391
0-24 months   IRC              INDIA                          [48-50) cm            0      121     391
0-24 months   IRC              INDIA                          [48-50) cm            1       17     391
0-24 months   JiVitA-3         BANGLADESH                     >=50 cm               0      779   13275
0-24 months   JiVitA-3         BANGLADESH                     >=50 cm               1       51   13275
0-24 months   JiVitA-3         BANGLADESH                     <48 cm                0     8633   13275
0-24 months   JiVitA-3         BANGLADESH                     <48 cm                1      526   13275
0-24 months   JiVitA-3         BANGLADESH                     [48-50) cm            0     3137   13275
0-24 months   JiVitA-3         BANGLADESH                     [48-50) cm            1      149   13275
0-24 months   JiVitA-4         BANGLADESH                     >=50 cm               0     1131    4410
0-24 months   JiVitA-4         BANGLADESH                     >=50 cm               1       67    4410
0-24 months   JiVitA-4         BANGLADESH                     <48 cm                0     1922    4410
0-24 months   JiVitA-4         BANGLADESH                     <48 cm                1      218    4410
0-24 months   JiVitA-4         BANGLADESH                     [48-50) cm            0     1013    4410
0-24 months   JiVitA-4         BANGLADESH                     [48-50) cm            1       59    4410
0-24 months   Keneba           GAMBIA                         >=50 cm               0      711    1509
0-24 months   Keneba           GAMBIA                         >=50 cm               1       31    1509
0-24 months   Keneba           GAMBIA                         <48 cm                0      262    1509
0-24 months   Keneba           GAMBIA                         <48 cm                1       18    1509
0-24 months   Keneba           GAMBIA                         [48-50) cm            0      456    1509
0-24 months   Keneba           GAMBIA                         [48-50) cm            1       31    1509
0-24 months   MAL-ED           BANGLADESH                     >=50 cm               0       36     218
0-24 months   MAL-ED           BANGLADESH                     >=50 cm               1        3     218
0-24 months   MAL-ED           BANGLADESH                     <48 cm                0       95     218
0-24 months   MAL-ED           BANGLADESH                     <48 cm                1        7     218
0-24 months   MAL-ED           BANGLADESH                     [48-50) cm            0       75     218
0-24 months   MAL-ED           BANGLADESH                     [48-50) cm            1        2     218
0-24 months   MAL-ED           BRAZIL                         >=50 cm               0       29      62
0-24 months   MAL-ED           BRAZIL                         >=50 cm               1        0      62
0-24 months   MAL-ED           BRAZIL                         <48 cm                0       17      62
0-24 months   MAL-ED           BRAZIL                         <48 cm                1        0      62
0-24 months   MAL-ED           BRAZIL                         [48-50) cm            0       15      62
0-24 months   MAL-ED           BRAZIL                         [48-50) cm            1        1      62
0-24 months   MAL-ED           INDIA                          >=50 cm               0        8      42
0-24 months   MAL-ED           INDIA                          >=50 cm               1        0      42
0-24 months   MAL-ED           INDIA                          <48 cm                0       19      42
0-24 months   MAL-ED           INDIA                          <48 cm                1        0      42
0-24 months   MAL-ED           INDIA                          [48-50) cm            0       13      42
0-24 months   MAL-ED           INDIA                          [48-50) cm            1        2      42
0-24 months   MAL-ED           NEPAL                          >=50 cm               0        7      27
0-24 months   MAL-ED           NEPAL                          >=50 cm               1        1      27
0-24 months   MAL-ED           NEPAL                          <48 cm                0       12      27
0-24 months   MAL-ED           NEPAL                          <48 cm                1        0      27
0-24 months   MAL-ED           NEPAL                          [48-50) cm            0        7      27
0-24 months   MAL-ED           NEPAL                          [48-50) cm            1        0      27
0-24 months   MAL-ED           PERU                           >=50 cm               0       49     220
0-24 months   MAL-ED           PERU                           >=50 cm               1        0     220
0-24 months   MAL-ED           PERU                           <48 cm                0       83     220
0-24 months   MAL-ED           PERU                           <48 cm                1        1     220
0-24 months   MAL-ED           PERU                           [48-50) cm            0       87     220
0-24 months   MAL-ED           PERU                           [48-50) cm            1        0     220
0-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm               0       36     104
0-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm               1        0     104
0-24 months   MAL-ED           SOUTH AFRICA                   <48 cm                0       26     104
0-24 months   MAL-ED           SOUTH AFRICA                   <48 cm                1        0     104
0-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm            0       40     104
0-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm            1        2     104
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       32     121
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0     121
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                0       39     121
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0     121
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       50     121
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0     121
0-24 months   NIH-Birth        BANGLADESH                     >=50 cm               0      112     515
0-24 months   NIH-Birth        BANGLADESH                     >=50 cm               1        8     515
0-24 months   NIH-Birth        BANGLADESH                     <48 cm                0      174     515
0-24 months   NIH-Birth        BANGLADESH                     <48 cm                1       24     515
0-24 months   NIH-Birth        BANGLADESH                     [48-50) cm            0      182     515
0-24 months   NIH-Birth        BANGLADESH                     [48-50) cm            1       15     515
0-24 months   NIH-Crypto       BANGLADESH                     >=50 cm               0      165     730
0-24 months   NIH-Crypto       BANGLADESH                     >=50 cm               1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     <48 cm                0      268     730
0-24 months   NIH-Crypto       BANGLADESH                     <48 cm                1       12     730
0-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm            0      271     730
0-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm            1       14     730
0-24 months   PROBIT           BELARUS                        >=50 cm               0    14909   16583
0-24 months   PROBIT           BELARUS                        >=50 cm               1      132   16583
0-24 months   PROBIT           BELARUS                        <48 cm                0      180   16583
0-24 months   PROBIT           BELARUS                        <48 cm                1        0   16583
0-24 months   PROBIT           BELARUS                        [48-50) cm            0     1360   16583
0-24 months   PROBIT           BELARUS                        [48-50) cm            1        2   16583
0-24 months   PROVIDE          BANGLADESH                     >=50 cm               0      153     641
0-24 months   PROVIDE          BANGLADESH                     >=50 cm               1        2     641
0-24 months   PROVIDE          BANGLADESH                     <48 cm                0      219     641
0-24 months   PROVIDE          BANGLADESH                     <48 cm                1        8     641
0-24 months   PROVIDE          BANGLADESH                     [48-50) cm            0      254     641
0-24 months   PROVIDE          BANGLADESH                     [48-50) cm            1        5     641
0-24 months   ResPak           PAKISTAN                       >=50 cm               0       10      35
0-24 months   ResPak           PAKISTAN                       >=50 cm               1        1      35
0-24 months   ResPak           PAKISTAN                       <48 cm                0       12      35
0-24 months   ResPak           PAKISTAN                       <48 cm                1        1      35
0-24 months   ResPak           PAKISTAN                       [48-50) cm            0       10      35
0-24 months   ResPak           PAKISTAN                       [48-50) cm            1        1      35
0-24 months   SAS-CompFeed     INDIA                          >=50 cm               0      198    1353
0-24 months   SAS-CompFeed     INDIA                          >=50 cm               1        8    1353
0-24 months   SAS-CompFeed     INDIA                          <48 cm                0      634    1353
0-24 months   SAS-CompFeed     INDIA                          <48 cm                1       78    1353
0-24 months   SAS-CompFeed     INDIA                          [48-50) cm            0      410    1353
0-24 months   SAS-CompFeed     INDIA                          [48-50) cm            1       25    1353
0-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm               0     2667    9434
0-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm               1       34    9434
0-24 months   ZVITAMBO         ZIMBABWE                       <48 cm                0     2929    9434
0-24 months   ZVITAMBO         ZIMBABWE                       <48 cm                1       63    9434
0-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm            0     3672    9434
0-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm            1       69    9434
0-6 months    CMC-V-BCS-2002   INDIA                          >=50 cm               0       12     103
0-6 months    CMC-V-BCS-2002   INDIA                          >=50 cm               1        3     103
0-6 months    CMC-V-BCS-2002   INDIA                          <48 cm                0       40     103
0-6 months    CMC-V-BCS-2002   INDIA                          <48 cm                1        8     103
0-6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm            0       38     103
0-6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm            1        2     103
0-6 months    CMIN             BANGLADESH                     >=50 cm               0        0      12
0-6 months    CMIN             BANGLADESH                     >=50 cm               1        0      12
0-6 months    CMIN             BANGLADESH                     <48 cm                0        6      12
0-6 months    CMIN             BANGLADESH                     <48 cm                1        0      12
0-6 months    CMIN             BANGLADESH                     [48-50) cm            0        6      12
0-6 months    CMIN             BANGLADESH                     [48-50) cm            1        0      12
0-6 months    COHORTS          PHILIPPINES                    >=50 cm               0      274     853
0-6 months    COHORTS          PHILIPPINES                    >=50 cm               1       19     853
0-6 months    COHORTS          PHILIPPINES                    <48 cm                0      191     853
0-6 months    COHORTS          PHILIPPINES                    <48 cm                1       15     853
0-6 months    COHORTS          PHILIPPINES                    [48-50) cm            0      336     853
0-6 months    COHORTS          PHILIPPINES                    [48-50) cm            1       18     853
0-6 months    CONTENT          PERU                           >=50 cm               0        1       2
0-6 months    CONTENT          PERU                           >=50 cm               1        0       2
0-6 months    CONTENT          PERU                           <48 cm                0        1       2
0-6 months    CONTENT          PERU                           <48 cm                1        0       2
0-6 months    CONTENT          PERU                           [48-50) cm            0        0       2
0-6 months    CONTENT          PERU                           [48-50) cm            1        0       2
0-6 months    EE               PAKISTAN                       >=50 cm               0       21     236
0-6 months    EE               PAKISTAN                       >=50 cm               1        2     236
0-6 months    EE               PAKISTAN                       <48 cm                0      151     236
0-6 months    EE               PAKISTAN                       <48 cm                1        8     236
0-6 months    EE               PAKISTAN                       [48-50) cm            0       50     236
0-6 months    EE               PAKISTAN                       [48-50) cm            1        4     236
0-6 months    GMS-Nepal        NEPAL                          >=50 cm               0       86     566
0-6 months    GMS-Nepal        NEPAL                          >=50 cm               1        8     566
0-6 months    GMS-Nepal        NEPAL                          <48 cm                0      271     566
0-6 months    GMS-Nepal        NEPAL                          <48 cm                1       31     566
0-6 months    GMS-Nepal        NEPAL                          [48-50) cm            0      147     566
0-6 months    GMS-Nepal        NEPAL                          [48-50) cm            1       23     566
0-6 months    IRC              INDIA                          >=50 cm               0      111     385
0-6 months    IRC              INDIA                          >=50 cm               1       28     385
0-6 months    IRC              INDIA                          <48 cm                0       94     385
0-6 months    IRC              INDIA                          <48 cm                1       14     385
0-6 months    IRC              INDIA                          [48-50) cm            0      117     385
0-6 months    IRC              INDIA                          [48-50) cm            1       21     385
0-6 months    JiVitA-3         BANGLADESH                     >=50 cm               0        3      38
0-6 months    JiVitA-3         BANGLADESH                     >=50 cm               1        1      38
0-6 months    JiVitA-3         BANGLADESH                     <48 cm                0       19      38
0-6 months    JiVitA-3         BANGLADESH                     <48 cm                1        1      38
0-6 months    JiVitA-3         BANGLADESH                     [48-50) cm            0       14      38
0-6 months    JiVitA-3         BANGLADESH                     [48-50) cm            1        0      38
0-6 months    Keneba           GAMBIA                         >=50 cm               0      687    1418
0-6 months    Keneba           GAMBIA                         >=50 cm               1       19    1418
0-6 months    Keneba           GAMBIA                         <48 cm                0      247    1418
0-6 months    Keneba           GAMBIA                         <48 cm                1        6    1418
0-6 months    Keneba           GAMBIA                         [48-50) cm            0      440    1418
0-6 months    Keneba           GAMBIA                         [48-50) cm            1       19    1418
0-6 months    MAL-ED           BANGLADESH                     >=50 cm               0       36     218
0-6 months    MAL-ED           BANGLADESH                     >=50 cm               1        3     218
0-6 months    MAL-ED           BANGLADESH                     <48 cm                0      100     218
0-6 months    MAL-ED           BANGLADESH                     <48 cm                1        2     218
0-6 months    MAL-ED           BANGLADESH                     [48-50) cm            0       75     218
0-6 months    MAL-ED           BANGLADESH                     [48-50) cm            1        2     218
0-6 months    MAL-ED           BRAZIL                         >=50 cm               0       29      62
0-6 months    MAL-ED           BRAZIL                         >=50 cm               1        0      62
0-6 months    MAL-ED           BRAZIL                         <48 cm                0       17      62
0-6 months    MAL-ED           BRAZIL                         <48 cm                1        0      62
0-6 months    MAL-ED           BRAZIL                         [48-50) cm            0       16      62
0-6 months    MAL-ED           BRAZIL                         [48-50) cm            1        0      62
0-6 months    MAL-ED           INDIA                          >=50 cm               0        6      42
0-6 months    MAL-ED           INDIA                          >=50 cm               1        2      42
0-6 months    MAL-ED           INDIA                          <48 cm                0       19      42
0-6 months    MAL-ED           INDIA                          <48 cm                1        0      42
0-6 months    MAL-ED           INDIA                          [48-50) cm            0       15      42
0-6 months    MAL-ED           INDIA                          [48-50) cm            1        0      42
0-6 months    MAL-ED           NEPAL                          >=50 cm               0        7      27
0-6 months    MAL-ED           NEPAL                          >=50 cm               1        1      27
0-6 months    MAL-ED           NEPAL                          <48 cm                0       12      27
0-6 months    MAL-ED           NEPAL                          <48 cm                1        0      27
0-6 months    MAL-ED           NEPAL                          [48-50) cm            0        7      27
0-6 months    MAL-ED           NEPAL                          [48-50) cm            1        0      27
0-6 months    MAL-ED           PERU                           >=50 cm               0       49     220
0-6 months    MAL-ED           PERU                           >=50 cm               1        0     220
0-6 months    MAL-ED           PERU                           <48 cm                0       84     220
0-6 months    MAL-ED           PERU                           <48 cm                1        0     220
0-6 months    MAL-ED           PERU                           [48-50) cm            0       87     220
0-6 months    MAL-ED           PERU                           [48-50) cm            1        0     220
0-6 months    MAL-ED           SOUTH AFRICA                   >=50 cm               0       35     103
0-6 months    MAL-ED           SOUTH AFRICA                   >=50 cm               1        1     103
0-6 months    MAL-ED           SOUTH AFRICA                   <48 cm                0       25     103
0-6 months    MAL-ED           SOUTH AFRICA                   <48 cm                1        0     103
0-6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm            0       41     103
0-6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm            1        1     103
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       32     121
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0     121
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                0       39     121
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0     121
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       50     121
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0     121
0-6 months    NIH-Birth        BANGLADESH                     >=50 cm               0       37     166
0-6 months    NIH-Birth        BANGLADESH                     >=50 cm               1        2     166
0-6 months    NIH-Birth        BANGLADESH                     <48 cm                0       67     166
0-6 months    NIH-Birth        BANGLADESH                     <48 cm                1        5     166
0-6 months    NIH-Birth        BANGLADESH                     [48-50) cm            0       51     166
0-6 months    NIH-Birth        BANGLADESH                     [48-50) cm            1        4     166
0-6 months    NIH-Crypto       BANGLADESH                     >=50 cm               0       45     250
0-6 months    NIH-Crypto       BANGLADESH                     >=50 cm               1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     <48 cm                0       95     250
0-6 months    NIH-Crypto       BANGLADESH                     <48 cm                1        1     250
0-6 months    NIH-Crypto       BANGLADESH                     [48-50) cm            0      105     250
0-6 months    NIH-Crypto       BANGLADESH                     [48-50) cm            1        4     250
0-6 months    PROBIT           BELARUS                        >=50 cm               0    11246   13534
0-6 months    PROBIT           BELARUS                        >=50 cm               1     1059   13534
0-6 months    PROBIT           BELARUS                        <48 cm                0      143   13534
0-6 months    PROBIT           BELARUS                        <48 cm                1        1   13534
0-6 months    PROBIT           BELARUS                        [48-50) cm            0     1048   13534
0-6 months    PROBIT           BELARUS                        [48-50) cm            1       37   13534
0-6 months    PROVIDE          BANGLADESH                     >=50 cm               0      152     638
0-6 months    PROVIDE          BANGLADESH                     >=50 cm               1        3     638
0-6 months    PROVIDE          BANGLADESH                     <48 cm                0      220     638
0-6 months    PROVIDE          BANGLADESH                     <48 cm                1        5     638
0-6 months    PROVIDE          BANGLADESH                     [48-50) cm            0      252     638
0-6 months    PROVIDE          BANGLADESH                     [48-50) cm            1        6     638
0-6 months    ResPak           PAKISTAN                       >=50 cm               0       10      34
0-6 months    ResPak           PAKISTAN                       >=50 cm               1        0      34
0-6 months    ResPak           PAKISTAN                       <48 cm                0       11      34
0-6 months    ResPak           PAKISTAN                       <48 cm                1        2      34
0-6 months    ResPak           PAKISTAN                       [48-50) cm            0        9      34
0-6 months    ResPak           PAKISTAN                       [48-50) cm            1        2      34
0-6 months    ZVITAMBO         ZIMBABWE                       >=50 cm               0      212     632
0-6 months    ZVITAMBO         ZIMBABWE                       >=50 cm               1        3     632
0-6 months    ZVITAMBO         ZIMBABWE                       <48 cm                0      163     632
0-6 months    ZVITAMBO         ZIMBABWE                       <48 cm                1        6     632
0-6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm            0      243     632
0-6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm            1        5     632
6-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm               0       16     106
6-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm               1        0     106
6-24 months   CMC-V-BCS-2002   INDIA                          <48 cm                0       45     106
6-24 months   CMC-V-BCS-2002   INDIA                          <48 cm                1        5     106
6-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm            0       39     106
6-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm            1        1     106
6-24 months   CMIN             BANGLADESH                     >=50 cm               0        0      12
6-24 months   CMIN             BANGLADESH                     >=50 cm               1        0      12
6-24 months   CMIN             BANGLADESH                     <48 cm                0        6      12
6-24 months   CMIN             BANGLADESH                     <48 cm                1        0      12
6-24 months   CMIN             BANGLADESH                     [48-50) cm            0        6      12
6-24 months   CMIN             BANGLADESH                     [48-50) cm            1        0      12
6-24 months   COHORTS          GUATEMALA                      >=50 cm               0      340     699
6-24 months   COHORTS          GUATEMALA                      >=50 cm               1        7     699
6-24 months   COHORTS          GUATEMALA                      <48 cm                0      136     699
6-24 months   COHORTS          GUATEMALA                      <48 cm                1        5     699
6-24 months   COHORTS          GUATEMALA                      [48-50) cm            0      206     699
6-24 months   COHORTS          GUATEMALA                      [48-50) cm            1        5     699
6-24 months   COHORTS          INDIA                          >=50 cm               0     1096    5267
6-24 months   COHORTS          INDIA                          >=50 cm               1       76    5267
6-24 months   COHORTS          INDIA                          <48 cm                0     1865    5267
6-24 months   COHORTS          INDIA                          <48 cm                1      253    5267
6-24 months   COHORTS          INDIA                          [48-50) cm            0     1799    5267
6-24 months   COHORTS          INDIA                          [48-50) cm            1      178    5267
6-24 months   COHORTS          PHILIPPINES                    >=50 cm               0      998    2804
6-24 months   COHORTS          PHILIPPINES                    >=50 cm               1       39    2804
6-24 months   COHORTS          PHILIPPINES                    <48 cm                0      653    2804
6-24 months   COHORTS          PHILIPPINES                    <48 cm                1       48    2804
6-24 months   COHORTS          PHILIPPINES                    [48-50) cm            0     1010    2804
6-24 months   COHORTS          PHILIPPINES                    [48-50) cm            1       56    2804
6-24 months   CONTENT          PERU                           >=50 cm               0        1       2
6-24 months   CONTENT          PERU                           >=50 cm               1        0       2
6-24 months   CONTENT          PERU                           <48 cm                0        1       2
6-24 months   CONTENT          PERU                           <48 cm                1        0       2
6-24 months   CONTENT          PERU                           [48-50) cm            0        0       2
6-24 months   CONTENT          PERU                           [48-50) cm            1        0       2
6-24 months   EE               PAKISTAN                       >=50 cm               0       22     240
6-24 months   EE               PAKISTAN                       >=50 cm               1        2     240
6-24 months   EE               PAKISTAN                       <48 cm                0      147     240
6-24 months   EE               PAKISTAN                       <48 cm                1       15     240
6-24 months   EE               PAKISTAN                       [48-50) cm            0       51     240
6-24 months   EE               PAKISTAN                       [48-50) cm            1        3     240
6-24 months   GMS-Nepal        NEPAL                          >=50 cm               0       93     596
6-24 months   GMS-Nepal        NEPAL                          >=50 cm               1        8     596
6-24 months   GMS-Nepal        NEPAL                          <48 cm                0      268     596
6-24 months   GMS-Nepal        NEPAL                          <48 cm                1       48     596
6-24 months   GMS-Nepal        NEPAL                          [48-50) cm            0      155     596
6-24 months   GMS-Nepal        NEPAL                          [48-50) cm            1       24     596
6-24 months   IRC              INDIA                          >=50 cm               0      124     391
6-24 months   IRC              INDIA                          >=50 cm               1       18     391
6-24 months   IRC              INDIA                          <48 cm                0      100     391
6-24 months   IRC              INDIA                          <48 cm                1       11     391
6-24 months   IRC              INDIA                          [48-50) cm            0      121     391
6-24 months   IRC              INDIA                          [48-50) cm            1       17     391
6-24 months   JiVitA-3         BANGLADESH                     >=50 cm               0      779   13275
6-24 months   JiVitA-3         BANGLADESH                     >=50 cm               1       51   13275
6-24 months   JiVitA-3         BANGLADESH                     <48 cm                0     8633   13275
6-24 months   JiVitA-3         BANGLADESH                     <48 cm                1      526   13275
6-24 months   JiVitA-3         BANGLADESH                     [48-50) cm            0     3137   13275
6-24 months   JiVitA-3         BANGLADESH                     [48-50) cm            1      149   13275
6-24 months   JiVitA-4         BANGLADESH                     >=50 cm               0     1131    4410
6-24 months   JiVitA-4         BANGLADESH                     >=50 cm               1       67    4410
6-24 months   JiVitA-4         BANGLADESH                     <48 cm                0     1922    4410
6-24 months   JiVitA-4         BANGLADESH                     <48 cm                1      218    4410
6-24 months   JiVitA-4         BANGLADESH                     [48-50) cm            0     1013    4410
6-24 months   JiVitA-4         BANGLADESH                     [48-50) cm            1       59    4410
6-24 months   Keneba           GAMBIA                         >=50 cm               0      711    1509
6-24 months   Keneba           GAMBIA                         >=50 cm               1       31    1509
6-24 months   Keneba           GAMBIA                         <48 cm                0      262    1509
6-24 months   Keneba           GAMBIA                         <48 cm                1       18    1509
6-24 months   Keneba           GAMBIA                         [48-50) cm            0      456    1509
6-24 months   Keneba           GAMBIA                         [48-50) cm            1       31    1509
6-24 months   MAL-ED           BANGLADESH                     >=50 cm               0       36     218
6-24 months   MAL-ED           BANGLADESH                     >=50 cm               1        3     218
6-24 months   MAL-ED           BANGLADESH                     <48 cm                0       95     218
6-24 months   MAL-ED           BANGLADESH                     <48 cm                1        7     218
6-24 months   MAL-ED           BANGLADESH                     [48-50) cm            0       75     218
6-24 months   MAL-ED           BANGLADESH                     [48-50) cm            1        2     218
6-24 months   MAL-ED           BRAZIL                         >=50 cm               0       29      62
6-24 months   MAL-ED           BRAZIL                         >=50 cm               1        0      62
6-24 months   MAL-ED           BRAZIL                         <48 cm                0       17      62
6-24 months   MAL-ED           BRAZIL                         <48 cm                1        0      62
6-24 months   MAL-ED           BRAZIL                         [48-50) cm            0       15      62
6-24 months   MAL-ED           BRAZIL                         [48-50) cm            1        1      62
6-24 months   MAL-ED           INDIA                          >=50 cm               0        8      42
6-24 months   MAL-ED           INDIA                          >=50 cm               1        0      42
6-24 months   MAL-ED           INDIA                          <48 cm                0       19      42
6-24 months   MAL-ED           INDIA                          <48 cm                1        0      42
6-24 months   MAL-ED           INDIA                          [48-50) cm            0       13      42
6-24 months   MAL-ED           INDIA                          [48-50) cm            1        2      42
6-24 months   MAL-ED           NEPAL                          >=50 cm               0        7      27
6-24 months   MAL-ED           NEPAL                          >=50 cm               1        1      27
6-24 months   MAL-ED           NEPAL                          <48 cm                0       12      27
6-24 months   MAL-ED           NEPAL                          <48 cm                1        0      27
6-24 months   MAL-ED           NEPAL                          [48-50) cm            0        7      27
6-24 months   MAL-ED           NEPAL                          [48-50) cm            1        0      27
6-24 months   MAL-ED           PERU                           >=50 cm               0       49     220
6-24 months   MAL-ED           PERU                           >=50 cm               1        0     220
6-24 months   MAL-ED           PERU                           <48 cm                0       83     220
6-24 months   MAL-ED           PERU                           <48 cm                1        1     220
6-24 months   MAL-ED           PERU                           [48-50) cm            0       87     220
6-24 months   MAL-ED           PERU                           [48-50) cm            1        0     220
6-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm               0       36     104
6-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm               1        0     104
6-24 months   MAL-ED           SOUTH AFRICA                   <48 cm                0       26     104
6-24 months   MAL-ED           SOUTH AFRICA                   <48 cm                1        0     104
6-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm            0       40     104
6-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm            1        2     104
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       32     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                0       39     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       50     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0     121
6-24 months   NIH-Birth        BANGLADESH                     >=50 cm               0      112     515
6-24 months   NIH-Birth        BANGLADESH                     >=50 cm               1        8     515
6-24 months   NIH-Birth        BANGLADESH                     <48 cm                0      174     515
6-24 months   NIH-Birth        BANGLADESH                     <48 cm                1       24     515
6-24 months   NIH-Birth        BANGLADESH                     [48-50) cm            0      182     515
6-24 months   NIH-Birth        BANGLADESH                     [48-50) cm            1       15     515
6-24 months   NIH-Crypto       BANGLADESH                     >=50 cm               0      165     730
6-24 months   NIH-Crypto       BANGLADESH                     >=50 cm               1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     <48 cm                0      268     730
6-24 months   NIH-Crypto       BANGLADESH                     <48 cm                1       12     730
6-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm            0      271     730
6-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm            1       14     730
6-24 months   PROBIT           BELARUS                        >=50 cm               0    14909   16583
6-24 months   PROBIT           BELARUS                        >=50 cm               1      132   16583
6-24 months   PROBIT           BELARUS                        <48 cm                0      180   16583
6-24 months   PROBIT           BELARUS                        <48 cm                1        0   16583
6-24 months   PROBIT           BELARUS                        [48-50) cm            0     1360   16583
6-24 months   PROBIT           BELARUS                        [48-50) cm            1        2   16583
6-24 months   PROVIDE          BANGLADESH                     >=50 cm               0      153     641
6-24 months   PROVIDE          BANGLADESH                     >=50 cm               1        2     641
6-24 months   PROVIDE          BANGLADESH                     <48 cm                0      219     641
6-24 months   PROVIDE          BANGLADESH                     <48 cm                1        8     641
6-24 months   PROVIDE          BANGLADESH                     [48-50) cm            0      254     641
6-24 months   PROVIDE          BANGLADESH                     [48-50) cm            1        5     641
6-24 months   ResPak           PAKISTAN                       >=50 cm               0       10      35
6-24 months   ResPak           PAKISTAN                       >=50 cm               1        1      35
6-24 months   ResPak           PAKISTAN                       <48 cm                0       12      35
6-24 months   ResPak           PAKISTAN                       <48 cm                1        1      35
6-24 months   ResPak           PAKISTAN                       [48-50) cm            0       10      35
6-24 months   ResPak           PAKISTAN                       [48-50) cm            1        1      35
6-24 months   SAS-CompFeed     INDIA                          >=50 cm               0      198    1353
6-24 months   SAS-CompFeed     INDIA                          >=50 cm               1        8    1353
6-24 months   SAS-CompFeed     INDIA                          <48 cm                0      634    1353
6-24 months   SAS-CompFeed     INDIA                          <48 cm                1       78    1353
6-24 months   SAS-CompFeed     INDIA                          [48-50) cm            0      410    1353
6-24 months   SAS-CompFeed     INDIA                          [48-50) cm            1       25    1353
6-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm               0     2667    9434
6-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm               1       34    9434
6-24 months   ZVITAMBO         ZIMBABWE                       <48 cm                0     2929    9434
6-24 months   ZVITAMBO         ZIMBABWE                       <48 cm                1       63    9434
6-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm            0     3672    9434
6-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm            1       69    9434


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/5eeba531-78b3-4811-af4d-1da4f9a4a228/00f735e4-6017-43f3-bde8-4d1e3ddf9ae1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5eeba531-78b3-4811-af4d-1da4f9a4a228/00f735e4-6017-43f3-bde8-4d1e3ddf9ae1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5eeba531-78b3-4811-af4d-1da4f9a4a228/00f735e4-6017-43f3-bde8-4d1e3ddf9ae1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5eeba531-78b3-4811-af4d-1da4f9a4a228/00f735e4-6017-43f3-bde8-4d1e3ddf9ae1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              NA                0.0201729   0.0053698   0.0349760
0-24 months   COHORTS        GUATEMALA     <48 cm               NA                0.0354610   0.0049129   0.0660091
0-24 months   COHORTS        GUATEMALA     [48-50) cm           NA                0.0236967   0.0031589   0.0442345
0-24 months   COHORTS        INDIA         >=50 cm              NA                0.0676854   0.0531422   0.0822286
0-24 months   COHORTS        INDIA         <48 cm               NA                0.1166799   0.1029484   0.1304113
0-24 months   COHORTS        INDIA         [48-50) cm           NA                0.0901343   0.0773385   0.1029300
0-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.0385300   0.0268181   0.0502418
0-24 months   COHORTS        PHILIPPINES   <48 cm               NA                0.0687496   0.0498435   0.0876558
0-24 months   COHORTS        PHILIPPINES   [48-50) cm           NA                0.0514936   0.0381446   0.0648426
0-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.0792079   0.0264950   0.1319208
0-24 months   GMS-Nepal      NEPAL         <48 cm               NA                0.1518987   0.1122919   0.1915056
0-24 months   GMS-Nepal      NEPAL         [48-50) cm           NA                0.1340782   0.0841203   0.1840362
0-24 months   IRC            INDIA         >=50 cm              NA                0.1316486   0.0757998   0.1874973
0-24 months   IRC            INDIA         <48 cm               NA                0.0895371   0.0343010   0.1447731
0-24 months   IRC            INDIA         [48-50) cm           NA                0.1286787   0.0734500   0.1839074
0-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                0.0603739   0.0409316   0.0798162
0-24 months   JiVitA-3       BANGLADESH    <48 cm               NA                0.0570229   0.0518833   0.0621625
0-24 months   JiVitA-3       BANGLADESH    [48-50) cm           NA                0.0458038   0.0375414   0.0540661
0-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                0.0591093   0.0437268   0.0744918
0-24 months   JiVitA-4       BANGLADESH    <48 cm               NA                0.0998492   0.0850082   0.1146901
0-24 months   JiVitA-4       BANGLADESH    [48-50) cm           NA                0.0539214   0.0388783   0.0689646
0-24 months   Keneba         GAMBIA        >=50 cm              NA                0.0413034   0.0268900   0.0557169
0-24 months   Keneba         GAMBIA        <48 cm               NA                0.0657843   0.0368221   0.0947466
0-24 months   Keneba         GAMBIA        [48-50) cm           NA                0.0634924   0.0417240   0.0852609
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.0666667   0.0219929   0.1113404
0-24 months   NIH-Birth      BANGLADESH    <48 cm               NA                0.1212121   0.0757078   0.1667164
0-24 months   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.0761421   0.0390696   0.1132147
0-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                0.0388350   0.0114714   0.0661985
0-24 months   SAS-CompFeed   INDIA         <48 cm               NA                0.1095506   0.0778598   0.1412413
0-24 months   SAS-CompFeed   INDIA         [48-50) cm           NA                0.0574713   0.0276190   0.0873235
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0131267   0.0087611   0.0174922
0-24 months   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0209023   0.0157590   0.0260456
0-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0184524   0.0140887   0.0228161
0-6 months    COHORTS        PHILIPPINES   >=50 cm              NA                0.0649098   0.0367540   0.0930656
0-6 months    COHORTS        PHILIPPINES   <48 cm               NA                0.0723250   0.0370322   0.1076179
0-6 months    COHORTS        PHILIPPINES   [48-50) cm           NA                0.0509953   0.0281243   0.0738663
0-6 months    GMS-Nepal      NEPAL         >=50 cm              NA                0.0851064   0.0286472   0.1415656
0-6 months    GMS-Nepal      NEPAL         <48 cm               NA                0.1026490   0.0683890   0.1369090
0-6 months    GMS-Nepal      NEPAL         [48-50) cm           NA                0.1352941   0.0838328   0.1867555
0-6 months    IRC            INDIA         >=50 cm              NA                0.2060584   0.1380337   0.2740831
0-6 months    IRC            INDIA         <48 cm               NA                0.1262801   0.0626201   0.1899401
0-6 months    IRC            INDIA         [48-50) cm           NA                0.1511794   0.0907395   0.2116193
0-6 months    Keneba         GAMBIA        >=50 cm              NA                0.0269122   0.0149709   0.0388534
0-6 months    Keneba         GAMBIA        <48 cm               NA                0.0237154   0.0049592   0.0424716
0-6 months    Keneba         GAMBIA        [48-50) cm           NA                0.0413943   0.0231644   0.0596243
6-24 months   COHORTS        GUATEMALA     >=50 cm              NA                0.0201729   0.0053698   0.0349760
6-24 months   COHORTS        GUATEMALA     <48 cm               NA                0.0354610   0.0049129   0.0660091
6-24 months   COHORTS        GUATEMALA     [48-50) cm           NA                0.0236967   0.0031589   0.0442345
6-24 months   COHORTS        INDIA         >=50 cm              NA                0.0689294   0.0542216   0.0836372
6-24 months   COHORTS        INDIA         <48 cm               NA                0.1170616   0.1033018   0.1308215
6-24 months   COHORTS        INDIA         [48-50) cm           NA                0.0901843   0.0773059   0.1030626
6-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.0384230   0.0267379   0.0501081
6-24 months   COHORTS        PHILIPPINES   <48 cm               NA                0.0679150   0.0491321   0.0866978
6-24 months   COHORTS        PHILIPPINES   [48-50) cm           NA                0.0517016   0.0383280   0.0650753
6-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.0792079   0.0264950   0.1319208
6-24 months   GMS-Nepal      NEPAL         <48 cm               NA                0.1518987   0.1122919   0.1915056
6-24 months   GMS-Nepal      NEPAL         [48-50) cm           NA                0.1340782   0.0841203   0.1840362
6-24 months   IRC            INDIA         >=50 cm              NA                0.1311063   0.0752625   0.1869501
6-24 months   IRC            INDIA         <48 cm               NA                0.0924238   0.0367760   0.1480716
6-24 months   IRC            INDIA         [48-50) cm           NA                0.1301122   0.0749398   0.1852845
6-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                0.0620236   0.0423722   0.0816749
6-24 months   JiVitA-3       BANGLADESH    <48 cm               NA                0.0570449   0.0518835   0.0622063
6-24 months   JiVitA-3       BANGLADESH    [48-50) cm           NA                0.0453889   0.0373278   0.0534501
6-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                0.0616541   0.0454528   0.0778553
6-24 months   JiVitA-4       BANGLADESH    <48 cm               NA                0.1001442   0.0852157   0.1150726
6-24 months   JiVitA-4       BANGLADESH    [48-50) cm           NA                0.0543308   0.0388264   0.0698352
6-24 months   Keneba         GAMBIA        >=50 cm              NA                0.0413096   0.0269720   0.0556472
6-24 months   Keneba         GAMBIA        <48 cm               NA                0.0663157   0.0374208   0.0952106
6-24 months   Keneba         GAMBIA        [48-50) cm           NA                0.0639242   0.0421921   0.0856563
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.0666667   0.0219929   0.1113404
6-24 months   NIH-Birth      BANGLADESH    <48 cm               NA                0.1212121   0.0757078   0.1667164
6-24 months   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.0761421   0.0390696   0.1132147
6-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                0.0388350   0.0114714   0.0661985
6-24 months   SAS-CompFeed   INDIA         <48 cm               NA                0.1095506   0.0778598   0.1412413
6-24 months   SAS-CompFeed   INDIA         [48-50) cm           NA                0.0574713   0.0276190   0.0873235
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0129858   0.0086722   0.0172995
6-24 months   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0207851   0.0156490   0.0259213
6-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0185389   0.0141733   0.0229046


### Parameter: E(Y)


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        GUATEMALA     NA                   NA                0.0243205   0.0128927   0.0357482
0-24 months   COHORTS        INDIA         NA                   NA                0.0962597   0.0882935   0.1042259
0-24 months   COHORTS        PHILIPPINES   NA                   NA                0.0509986   0.0428544   0.0591428
0-24 months   GMS-Nepal      NEPAL         NA                   NA                0.1342282   0.1068369   0.1616195
0-24 months   IRC            INDIA         NA                   NA                0.1176471   0.0856708   0.1496233
0-24 months   JiVitA-3       BANGLADESH    NA                   NA                0.0546893   0.0503788   0.0589997
0-24 months   JiVitA-4       BANGLADESH    NA                   NA                0.0780045   0.0689447   0.0870643
0-24 months   Keneba         GAMBIA        NA                   NA                0.0530152   0.0417064   0.0643241
0-24 months   NIH-Birth      BANGLADESH    NA                   NA                0.0912621   0.0663660   0.1161582
0-24 months   SAS-CompFeed   INDIA         NA                   NA                0.0820399   0.0573937   0.1066861
0-24 months   ZVITAMBO       ZIMBABWE      NA                   NA                0.0175959   0.0149427   0.0202492
0-6 months    COHORTS        PHILIPPINES   NA                   NA                0.0609613   0.0448957   0.0770269
0-6 months    GMS-Nepal      NEPAL         NA                   NA                0.1095406   0.0837882   0.1352931
0-6 months    IRC            INDIA         NA                   NA                0.1636364   0.1266348   0.2006379
0-6 months    Keneba         GAMBIA        NA                   NA                0.0310296   0.0220013   0.0400579
6-24 months   COHORTS        GUATEMALA     NA                   NA                0.0243205   0.0128927   0.0357482
6-24 months   COHORTS        INDIA         NA                   NA                0.0962597   0.0882935   0.1042259
6-24 months   COHORTS        PHILIPPINES   NA                   NA                0.0509986   0.0428544   0.0591428
6-24 months   GMS-Nepal      NEPAL         NA                   NA                0.1342282   0.1068369   0.1616195
6-24 months   IRC            INDIA         NA                   NA                0.1176471   0.0856708   0.1496233
6-24 months   JiVitA-3       BANGLADESH    NA                   NA                0.0546893   0.0503788   0.0589997
6-24 months   JiVitA-4       BANGLADESH    NA                   NA                0.0780045   0.0689447   0.0870643
6-24 months   Keneba         GAMBIA        NA                   NA                0.0530152   0.0417064   0.0643241
6-24 months   NIH-Birth      BANGLADESH    NA                   NA                0.0912621   0.0663660   0.1161582
6-24 months   SAS-CompFeed   INDIA         NA                   NA                0.0820399   0.0573937   0.1066861
6-24 months   ZVITAMBO       ZIMBABWE      NA                   NA                0.0175959   0.0149427   0.0202492


### Parameter: RR


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS        GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   COHORTS        GUATEMALA     <48 cm               >=50 cm           1.7578521   0.5669193   5.450589
0-24 months   COHORTS        GUATEMALA     [48-50) cm           >=50 cm           1.1746784   0.3773324   3.656907
0-24 months   COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   COHORTS        INDIA         <48 cm               >=50 cm           1.7238563   1.3496924   2.201747
0-24 months   COHORTS        INDIA         [48-50) cm           >=50 cm           1.3316650   1.0296942   1.722192
0-24 months   COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   COHORTS        PHILIPPINES   <48 cm               >=50 cm           1.7843157   1.1845760   2.687698
0-24 months   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           1.3364562   0.8965108   1.992296
0-24 months   GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.9177215   0.9383612   3.919233
0-24 months   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.6927374   0.7894952   3.629357
0-24 months   IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   IRC            INDIA         <48 cm               >=50 cm           0.6801218   0.3220900   1.436138
0-24 months   IRC            INDIA         [48-50) cm           >=50 cm           0.9774409   0.5328596   1.792950
0-24 months   JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3       BANGLADESH    <48 cm               >=50 cm           0.9444957   0.6818543   1.308303
0-24 months   JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           0.7586687   0.5241482   1.098121
0-24 months   JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4       BANGLADESH    <48 cm               >=50 cm           1.6892299   1.2507074   2.281507
0-24 months   JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           0.9122326   0.6195735   1.343131
0-24 months   Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   Keneba         GAMBIA        <48 cm               >=50 cm           1.5927086   0.9084771   2.792278
0-24 months   Keneba         GAMBIA        [48-50) cm           >=50 cm           1.5372188   0.9426044   2.506928
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth      BANGLADESH    <48 cm               >=50 cm           1.8181818   0.8434443   3.919388
0-24 months   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           1.1421320   0.4988675   2.614854
0-24 months   SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.8209270   1.5294183   5.203043
0-24 months   SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.4798851   0.6628767   3.303872
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           1.5923530   1.0528461   2.408318
0-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.4057181   0.9346534   2.114199
0-6 months    COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    COHORTS        PHILIPPINES   <48 cm               >=50 cm           1.1142388   0.5799334   2.140812
0-6 months    COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           0.7856337   0.4208436   1.466626
0-6 months    GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.2061258   0.5739523   2.534600
0-6 months    GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.5897059   0.7399632   3.415258
0-6 months    IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    IRC            INDIA         <48 cm               >=50 cm           0.6128363   0.3351586   1.120569
0-6 months    IRC            INDIA         [48-50) cm           >=50 cm           0.7336726   0.4364919   1.233185
0-6 months    Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    Keneba         GAMBIA        <48 cm               >=50 cm           0.8812149   0.3558288   2.182341
0-6 months    Keneba         GAMBIA        [48-50) cm           >=50 cm           1.5381264   0.8231651   2.874068
6-24 months   COHORTS        GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   COHORTS        GUATEMALA     <48 cm               >=50 cm           1.7578521   0.5669193   5.450589
6-24 months   COHORTS        GUATEMALA     [48-50) cm           >=50 cm           1.1746784   0.3773324   3.656907
6-24 months   COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   COHORTS        INDIA         <48 cm               >=50 cm           1.6982832   1.3314963   2.166109
6-24 months   COHORTS        INDIA         [48-50) cm           >=50 cm           1.3083572   1.0125728   1.690544
6-24 months   COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   COHORTS        PHILIPPINES   <48 cm               >=50 cm           1.7675607   1.1721254   2.665475
6-24 months   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           1.3455914   0.9029845   2.005146
6-24 months   GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.9177215   0.9383612   3.919233
6-24 months   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.6927374   0.7894952   3.629357
6-24 months   IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   IRC            INDIA         <48 cm               >=50 cm           0.7049530   0.3374525   1.472677
6-24 months   IRC            INDIA         [48-50) cm           >=50 cm           0.9924173   0.5419744   1.817230
6-24 months   JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3       BANGLADESH    <48 cm               >=50 cm           0.9197294   0.6673309   1.267590
6-24 months   JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           0.7318013   0.5095235   1.051047
6-24 months   JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4       BANGLADESH    <48 cm               >=50 cm           1.6242914   1.2006094   2.197486
6-24 months   JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           0.8812204   0.5956390   1.303725
6-24 months   Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   Keneba         GAMBIA        <48 cm               >=50 cm           1.6053323   0.9197559   2.801930
6-24 months   Keneba         GAMBIA        [48-50) cm           >=50 cm           1.5474411   0.9522406   2.514673
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth      BANGLADESH    <48 cm               >=50 cm           1.8181818   0.8434443   3.919388
6-24 months   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           1.1421320   0.4988675   2.614854
6-24 months   SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.8209270   1.5294183   5.203043
6-24 months   SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.4798851   0.6628767   3.303872
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           1.6005986   1.0579740   2.421530
6-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.4276264   0.9500940   2.145174


### Parameter: PAR


agecat        studyid        country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              NA                 0.0041475   -0.0073486   0.0156437
0-24 months   COHORTS        INDIA         >=50 cm              NA                 0.0285743    0.0149784   0.0421703
0-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                 0.0124686    0.0023051   0.0226321
0-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                 0.0550203    0.0041559   0.1058846
0-24 months   IRC            INDIA         >=50 cm              NA                -0.0140015   -0.0580412   0.0300381
0-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                -0.0056846   -0.0239946   0.0126253
0-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.0188952    0.0048722   0.0329183
0-24 months   Keneba         GAMBIA        >=50 cm              NA                 0.0117118    0.0002564   0.0231672
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.0245955   -0.0164594   0.0656503
0-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                 0.0432050    0.0181178   0.0682921
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0044693    0.0005141   0.0084244
0-6 months    COHORTS        PHILIPPINES   >=50 cm              NA                -0.0039485   -0.0264409   0.0185439
0-6 months    GMS-Nepal      NEPAL         >=50 cm              NA                 0.0244343   -0.0284055   0.0772740
0-6 months    IRC            INDIA         >=50 cm              NA                -0.0424221   -0.0947798   0.0099356
0-6 months    Keneba         GAMBIA        >=50 cm              NA                 0.0041174   -0.0049442   0.0131791
6-24 months   COHORTS        GUATEMALA     >=50 cm              NA                 0.0041475   -0.0073486   0.0156437
6-24 months   COHORTS        INDIA         >=50 cm              NA                 0.0273303    0.0136048   0.0410559
6-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                 0.0125756    0.0024349   0.0227163
6-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                 0.0550203    0.0041559   0.1058846
6-24 months   IRC            INDIA         >=50 cm              NA                -0.0134593   -0.0576511   0.0307325
6-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                -0.0073343   -0.0258331   0.0111645
6-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.0163505    0.0016800   0.0310210
6-24 months   Keneba         GAMBIA        >=50 cm              NA                 0.0117056    0.0002970   0.0231142
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.0245955   -0.0164594   0.0656503
6-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                 0.0432050    0.0181178   0.0682921
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0046101    0.0006987   0.0085215


### Parameter: PAF


agecat        studyid        country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              NA                 0.1705374   -0.4549860   0.5271375
0-24 months   COHORTS        INDIA         >=50 cm              NA                 0.2968463    0.1429243   0.4231256
0-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                 0.2444893    0.0214655   0.4166823
0-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                 0.4099010   -0.1071456   0.6854823
0-24 months   IRC            INDIA         >=50 cm              NA                -0.1190130   -0.5630012   0.1988553
0-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                -0.1039443   -0.4934928   0.1839980
0-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.2422326    0.0424808   0.4003134
0-24 months   Keneba         GAMBIA        >=50 cm              NA                 0.2209138   -0.0225125   0.4063884
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.2695035   -0.3427697   0.6025938
0-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                 0.5266334    0.1384809   0.7399060
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.2539942   -0.0037660   0.4455633
0-6 months    COHORTS        PHILIPPINES   >=50 cm              NA                -0.0647702   -0.5053270   0.2468509
0-6 months    GMS-Nepal      NEPAL         >=50 cm              NA                 0.2230611   -0.4412322   0.5811681
0-6 months    IRC            INDIA         >=50 cm              NA                -0.2592460   -0.6203641   0.0213925
0-6 months    Keneba         GAMBIA        >=50 cm              NA                 0.1326938   -0.2111358   0.3789135
6-24 months   COHORTS        GUATEMALA     >=50 cm              NA                 0.1705374   -0.4549860   0.5271375
6-24 months   COHORTS        INDIA         >=50 cm              NA                 0.2839228    0.1284554   0.4116577
6-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                 0.2465869    0.0241210   0.4183385
6-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                 0.4099010   -0.1071456   0.6854823
6-24 months   IRC            INDIA         >=50 cm              NA                -0.1144038   -0.5606924   0.2042662
6-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                -0.1341087   -0.5261671   0.1572335
6-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.2096091   -0.0006710   0.3757012
6-24 months   Keneba         GAMBIA        >=50 cm              NA                 0.2207972   -0.0211722   0.4054313
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.2695035   -0.3427697   0.6025938
6-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                 0.5266334    0.1384809   0.7399060
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.2619974    0.0074822   0.4512463

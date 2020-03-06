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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/eb089870-88b6-4405-904c-008443d160bd/075bb614-e3f2-4764-8252-c527ec7f1984/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eb089870-88b6-4405-904c-008443d160bd/075bb614-e3f2-4764-8252-c527ec7f1984/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eb089870-88b6-4405-904c-008443d160bd/075bb614-e3f2-4764-8252-c527ec7f1984/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eb089870-88b6-4405-904c-008443d160bd/075bb614-e3f2-4764-8252-c527ec7f1984/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              NA                0.0201729   0.0053698   0.0349760
0-24 months   COHORTS        GUATEMALA     <48 cm               NA                0.0354610   0.0049129   0.0660091
0-24 months   COHORTS        GUATEMALA     [48-50) cm           NA                0.0236967   0.0031589   0.0442345
0-24 months   COHORTS        INDIA         >=50 cm              NA                0.0648464   0.0507467   0.0789461
0-24 months   COHORTS        INDIA         <48 cm               NA                0.1194523   0.1056389   0.1332657
0-24 months   COHORTS        INDIA         [48-50) cm           NA                0.0900354   0.0774170   0.1026538
0-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.0376085   0.0260272   0.0491897
0-24 months   COHORTS        PHILIPPINES   <48 cm               NA                0.0684736   0.0497743   0.0871729
0-24 months   COHORTS        PHILIPPINES   [48-50) cm           NA                0.0525328   0.0391378   0.0659279
0-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.0792079   0.0264950   0.1319208
0-24 months   GMS-Nepal      NEPAL         <48 cm               NA                0.1518987   0.1122919   0.1915056
0-24 months   GMS-Nepal      NEPAL         [48-50) cm           NA                0.1340782   0.0841203   0.1840362
0-24 months   IRC            INDIA         >=50 cm              NA                0.1267606   0.0719684   0.1815528
0-24 months   IRC            INDIA         <48 cm               NA                0.0990991   0.0434426   0.1547556
0-24 months   IRC            INDIA         [48-50) cm           NA                0.1231884   0.0682846   0.1780922
0-24 months   Keneba         GAMBIA        >=50 cm              NA                0.0417790   0.0273777   0.0561803
0-24 months   Keneba         GAMBIA        <48 cm               NA                0.0642857   0.0355487   0.0930227
0-24 months   Keneba         GAMBIA        [48-50) cm           NA                0.0636550   0.0419649   0.0853451
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.0666667   0.0219929   0.1113404
0-24 months   NIH-Birth      BANGLADESH    <48 cm               NA                0.1212121   0.0757078   0.1667164
0-24 months   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.0761421   0.0390696   0.1132147
0-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                0.0388350   0.0114714   0.0661985
0-24 months   SAS-CompFeed   INDIA         <48 cm               NA                0.1095506   0.0778598   0.1412413
0-24 months   SAS-CompFeed   INDIA         [48-50) cm           NA                0.0574713   0.0276190   0.0873235
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0125879   0.0083832   0.0167926
0-24 months   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0210561   0.0159115   0.0262008
0-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0184443   0.0141324   0.0227561
0-6 months    COHORTS        PHILIPPINES   >=50 cm              NA                0.0648464   0.0366331   0.0930597
0-6 months    COHORTS        PHILIPPINES   <48 cm               NA                0.0728155   0.0373126   0.1083185
0-6 months    COHORTS        PHILIPPINES   [48-50) cm           NA                0.0508475   0.0279491   0.0737458
0-6 months    GMS-Nepal      NEPAL         >=50 cm              NA                0.0851064   0.0286472   0.1415656
0-6 months    GMS-Nepal      NEPAL         <48 cm               NA                0.1026490   0.0683890   0.1369090
0-6 months    GMS-Nepal      NEPAL         [48-50) cm           NA                0.1352941   0.0838328   0.1867555
0-6 months    IRC            INDIA         >=50 cm              NA                0.2014388   0.1346766   0.2682011
0-6 months    IRC            INDIA         <48 cm               NA                0.1296296   0.0661981   0.1930612
0-6 months    IRC            INDIA         [48-50) cm           NA                0.1521739   0.0921676   0.2121802
0-6 months    Keneba         GAMBIA        >=50 cm              NA                0.0269122   0.0149709   0.0388534
0-6 months    Keneba         GAMBIA        <48 cm               NA                0.0237154   0.0049592   0.0424716
0-6 months    Keneba         GAMBIA        [48-50) cm           NA                0.0413943   0.0231644   0.0596243
6-24 months   COHORTS        GUATEMALA     >=50 cm              NA                0.0201729   0.0053698   0.0349760
6-24 months   COHORTS        GUATEMALA     <48 cm               NA                0.0354610   0.0049129   0.0660091
6-24 months   COHORTS        GUATEMALA     [48-50) cm           NA                0.0236967   0.0031589   0.0442345
6-24 months   COHORTS        INDIA         >=50 cm              NA                0.0648464   0.0507467   0.0789461
6-24 months   COHORTS        INDIA         <48 cm               NA                0.1194523   0.1056389   0.1332657
6-24 months   COHORTS        INDIA         [48-50) cm           NA                0.0900354   0.0774170   0.1026538
6-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.0376085   0.0260272   0.0491897
6-24 months   COHORTS        PHILIPPINES   <48 cm               NA                0.0684736   0.0497743   0.0871729
6-24 months   COHORTS        PHILIPPINES   [48-50) cm           NA                0.0525328   0.0391378   0.0659279
6-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.0792079   0.0264950   0.1319208
6-24 months   GMS-Nepal      NEPAL         <48 cm               NA                0.1518987   0.1122919   0.1915056
6-24 months   GMS-Nepal      NEPAL         [48-50) cm           NA                0.1340782   0.0841203   0.1840362
6-24 months   IRC            INDIA         >=50 cm              NA                0.1267606   0.0719684   0.1815528
6-24 months   IRC            INDIA         <48 cm               NA                0.0990991   0.0434426   0.1547556
6-24 months   IRC            INDIA         [48-50) cm           NA                0.1231884   0.0682846   0.1780922
6-24 months   Keneba         GAMBIA        >=50 cm              NA                0.0417790   0.0273777   0.0561803
6-24 months   Keneba         GAMBIA        <48 cm               NA                0.0642857   0.0355487   0.0930227
6-24 months   Keneba         GAMBIA        [48-50) cm           NA                0.0636550   0.0419649   0.0853451
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.0666667   0.0219929   0.1113404
6-24 months   NIH-Birth      BANGLADESH    <48 cm               NA                0.1212121   0.0757078   0.1667164
6-24 months   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.0761421   0.0390696   0.1132147
6-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                0.0388350   0.0114714   0.0661985
6-24 months   SAS-CompFeed   INDIA         <48 cm               NA                0.1095506   0.0778598   0.1412413
6-24 months   SAS-CompFeed   INDIA         [48-50) cm           NA                0.0574713   0.0276190   0.0873235
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0125879   0.0083832   0.0167926
6-24 months   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0210561   0.0159115   0.0262008
6-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0184443   0.0141324   0.0227561


### Parameter: E(Y)


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        GUATEMALA     NA                   NA                0.0243205   0.0128927   0.0357482
0-24 months   COHORTS        INDIA         NA                   NA                0.0962597   0.0882935   0.1042259
0-24 months   COHORTS        PHILIPPINES   NA                   NA                0.0509986   0.0428544   0.0591428
0-24 months   GMS-Nepal      NEPAL         NA                   NA                0.1342282   0.1068369   0.1616195
0-24 months   IRC            INDIA         NA                   NA                0.1176471   0.0856708   0.1496233
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
0-24 months   COHORTS        INDIA         <48 cm               >=50 cm           1.8420804   1.4399738   2.356474
0-24 months   COHORTS        INDIA         [48-50) cm           >=50 cm           1.3884408   1.0719666   1.798347
0-24 months   COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   COHORTS        PHILIPPINES   <48 cm               >=50 cm           1.8206957   1.2063869   2.747819
0-24 months   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           1.3968346   0.9365072   2.083430
0-24 months   GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.9177215   0.9383612   3.919233
0-24 months   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.6927374   0.7894952   3.629357
0-24 months   IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   IRC            INDIA         <48 cm               >=50 cm           0.7817818   0.3848567   1.588079
0-24 months   IRC            INDIA         [48-50) cm           >=50 cm           0.9718196   0.5223305   1.808115
0-24 months   Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   Keneba         GAMBIA        <48 cm               >=50 cm           1.5387097   0.8749890   2.705894
0-24 months   Keneba         GAMBIA        [48-50) cm           >=50 cm           1.5236140   0.9383736   2.473854
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth      BANGLADESH    <48 cm               >=50 cm           1.8181818   0.8434443   3.919388
0-24 months   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           1.1421320   0.4988675   2.614854
0-24 months   SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.8209270   1.5294183   5.203043
0-24 months   SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.4798851   0.6628767   3.303872
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           1.6727253   1.1058391   2.530214
0-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.4652342   0.9746342   2.202787
0-6 months    COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    COHORTS        PHILIPPINES   <48 cm               >=50 cm           1.1228922   0.5841713   2.158420
0-6 months    COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           0.7841213   0.4192175   1.466652
0-6 months    GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.2061258   0.5739523   2.534600
0-6 months    GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.5897059   0.7399632   3.415258
0-6 months    IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    IRC            INDIA         <48 cm               >=50 cm           0.6435185   0.3563616   1.162067
0-6 months    IRC            INDIA         [48-50) cm           >=50 cm           0.7554348   0.4513233   1.264463
0-6 months    Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    Keneba         GAMBIA        <48 cm               >=50 cm           0.8812149   0.3558288   2.182341
0-6 months    Keneba         GAMBIA        [48-50) cm           >=50 cm           1.5381264   0.8231651   2.874068
6-24 months   COHORTS        GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   COHORTS        GUATEMALA     <48 cm               >=50 cm           1.7578521   0.5669193   5.450589
6-24 months   COHORTS        GUATEMALA     [48-50) cm           >=50 cm           1.1746784   0.3773324   3.656907
6-24 months   COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   COHORTS        INDIA         <48 cm               >=50 cm           1.8420804   1.4399738   2.356474
6-24 months   COHORTS        INDIA         [48-50) cm           >=50 cm           1.3884408   1.0719666   1.798347
6-24 months   COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   COHORTS        PHILIPPINES   <48 cm               >=50 cm           1.8206957   1.2063869   2.747819
6-24 months   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           1.3968346   0.9365072   2.083430
6-24 months   GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.9177215   0.9383612   3.919233
6-24 months   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.6927374   0.7894952   3.629357
6-24 months   IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   IRC            INDIA         <48 cm               >=50 cm           0.7817818   0.3848567   1.588079
6-24 months   IRC            INDIA         [48-50) cm           >=50 cm           0.9718196   0.5223305   1.808115
6-24 months   Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   Keneba         GAMBIA        <48 cm               >=50 cm           1.5387097   0.8749890   2.705894
6-24 months   Keneba         GAMBIA        [48-50) cm           >=50 cm           1.5236140   0.9383736   2.473854
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth      BANGLADESH    <48 cm               >=50 cm           1.8181818   0.8434443   3.919388
6-24 months   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           1.1421320   0.4988675   2.614854
6-24 months   SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.8209270   1.5294183   5.203043
6-24 months   SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.4798851   0.6628767   3.303872
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           1.6727253   1.1058391   2.530214
6-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.4652342   0.9746342   2.202787


### Parameter: PAR


agecat        studyid        country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              NA                 0.0041475   -0.0073486   0.0156437
0-24 months   COHORTS        INDIA         >=50 cm              NA                 0.0314133    0.0182304   0.0445962
0-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                 0.0133901    0.0033280   0.0234522
0-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                 0.0550203    0.0041559   0.1058846
0-24 months   IRC            INDIA         >=50 cm              NA                -0.0091135   -0.0520559   0.0338289
0-24 months   Keneba         GAMBIA        >=50 cm              NA                 0.0112363   -0.0002235   0.0226960
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.0245955   -0.0164594   0.0656503
0-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                 0.0432050    0.0181178   0.0682921
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0050080    0.0011876   0.0088284
0-6 months    COHORTS        PHILIPPINES   >=50 cm              NA                -0.0038851   -0.0264075   0.0186373
0-6 months    GMS-Nepal      NEPAL         >=50 cm              NA                 0.0244343   -0.0284055   0.0772740
0-6 months    IRC            INDIA         >=50 cm              NA                -0.0378025   -0.0888698   0.0132648
0-6 months    Keneba         GAMBIA        >=50 cm              NA                 0.0041174   -0.0049442   0.0131791
6-24 months   COHORTS        GUATEMALA     >=50 cm              NA                 0.0041475   -0.0073486   0.0156437
6-24 months   COHORTS        INDIA         >=50 cm              NA                 0.0314133    0.0182304   0.0445962
6-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                 0.0133901    0.0033280   0.0234522
6-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                 0.0550203    0.0041559   0.1058846
6-24 months   IRC            INDIA         >=50 cm              NA                -0.0091135   -0.0520559   0.0338289
6-24 months   Keneba         GAMBIA        >=50 cm              NA                 0.0112363   -0.0002235   0.0226960
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.0245955   -0.0164594   0.0656503
6-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                 0.0432050    0.0181178   0.0682921
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0050080    0.0011876   0.0088284


### Parameter: PAF


agecat        studyid        country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              NA                 0.1705374   -0.4549860   0.5271375
0-24 months   COHORTS        INDIA         >=50 cm              NA                 0.3263391    0.1772877   0.4483867
0-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                 0.2625581    0.0417437   0.4324894
0-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                 0.4099010   -0.1071456   0.6854823
0-24 months   IRC            INDIA         >=50 cm              NA                -0.0774648   -0.5113100   0.2318384
0-24 months   Keneba         GAMBIA        >=50 cm              NA                 0.2119441   -0.0310559   0.3976736
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.2695035   -0.3427697   0.6025938
0-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                 0.5266334    0.1384809   0.7399060
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.2846112    0.0365770   0.4687888
0-6 months    COHORTS        PHILIPPINES   >=50 cm              NA                -0.0637306   -0.5049984   0.2481568
0-6 months    GMS-Nepal      NEPAL         >=50 cm              NA                 0.2230611   -0.4412322   0.5811681
0-6 months    IRC            INDIA         >=50 cm              NA                -0.2310152   -0.5832892   0.0428796
0-6 months    Keneba         GAMBIA        >=50 cm              NA                 0.1326938   -0.2111358   0.3789135
6-24 months   COHORTS        GUATEMALA     >=50 cm              NA                 0.1705374   -0.4549860   0.5271375
6-24 months   COHORTS        INDIA         >=50 cm              NA                 0.3263391    0.1772877   0.4483867
6-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                 0.2625581    0.0417437   0.4324894
6-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                 0.4099010   -0.1071456   0.6854823
6-24 months   IRC            INDIA         >=50 cm              NA                -0.0774648   -0.5113100   0.2318384
6-24 months   Keneba         GAMBIA        >=50 cm              NA                 0.2119441   -0.0310559   0.3976736
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.2695035   -0.3427697   0.6025938
6-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                 0.5266334    0.1384809   0.7399060
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.2846112    0.0365770   0.4687888

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

**Outcome Variable:** y_rate

## Predictor Variables

**Intervention Variable:** lag_WHZ_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        lag_WHZ_quart    n_cell      n
-------------  ---------------  -----------------------------  --------------  -------  -----
3-6 months     CMC-V-BCS-2002   INDIA                          1                    62    306
3-6 months     CMC-V-BCS-2002   INDIA                          2                   137    306
3-6 months     CMC-V-BCS-2002   INDIA                          3                    96    306
3-6 months     CMC-V-BCS-2002   INDIA                          4                    11    306
3-6 months     CMIN             BANGLADESH                     1                    62    181
3-6 months     CMIN             BANGLADESH                     2                    48    181
3-6 months     CMIN             BANGLADESH                     3                    41    181
3-6 months     CMIN             BANGLADESH                     4                    30    181
3-6 months     CONTENT          PERU                           1                     0      5
3-6 months     CONTENT          PERU                           2                     2      5
3-6 months     CONTENT          PERU                           3                     3      5
3-6 months     CONTENT          PERU                           4                     0      5
3-6 months     EE               PAKISTAN                       1                     1      8
3-6 months     EE               PAKISTAN                       2                     6      8
3-6 months     EE               PAKISTAN                       3                     1      8
3-6 months     EE               PAKISTAN                       4                     0      8
3-6 months     GMS-Nepal        NEPAL                          1                   121    271
3-6 months     GMS-Nepal        NEPAL                          2                   104    271
3-6 months     GMS-Nepal        NEPAL                          3                    39    271
3-6 months     GMS-Nepal        NEPAL                          4                     7    271
3-6 months     IRC              INDIA                          1                     1      5
3-6 months     IRC              INDIA                          2                     2      5
3-6 months     IRC              INDIA                          3                     2      5
3-6 months     IRC              INDIA                          4                     0      5
3-6 months     Keneba           GAMBIA                         1                   238   1066
3-6 months     Keneba           GAMBIA                         2                   258   1066
3-6 months     Keneba           GAMBIA                         3                   310   1066
3-6 months     Keneba           GAMBIA                         4                   260   1066
3-6 months     MAL-ED           INDIA                          1                     1      3
3-6 months     MAL-ED           INDIA                          2                     2      3
3-6 months     MAL-ED           INDIA                          3                     0      3
3-6 months     MAL-ED           INDIA                          4                     0      3
3-6 months     MAL-ED           NEPAL                          1                     9     30
3-6 months     MAL-ED           NEPAL                          2                    11     30
3-6 months     MAL-ED           NEPAL                          3                     7     30
3-6 months     MAL-ED           NEPAL                          4                     3     30
3-6 months     MAL-ED           PERU                           1                     1     61
3-6 months     MAL-ED           PERU                           2                     4     61
3-6 months     MAL-ED           PERU                           3                    21     61
3-6 months     MAL-ED           PERU                           4                    35     61
3-6 months     MAL-ED           SOUTH AFRICA                   1                     7     73
3-6 months     MAL-ED           SOUTH AFRICA                   2                    18     73
3-6 months     MAL-ED           SOUTH AFRICA                   3                    20     73
3-6 months     MAL-ED           SOUTH AFRICA                   4                    28     73
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     2     25
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     5     25
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     6     25
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    12     25
3-6 months     PROVIDE          BANGLADESH                     1                   175    460
3-6 months     PROVIDE          BANGLADESH                     2                   136    460
3-6 months     PROVIDE          BANGLADESH                     3                   112    460
3-6 months     PROVIDE          BANGLADESH                     4                    37    460
3-6 months     ResPak           PAKISTAN                       1                    51    156
3-6 months     ResPak           PAKISTAN                       2                    31    156
3-6 months     ResPak           PAKISTAN                       3                    30    156
3-6 months     ResPak           PAKISTAN                       4                    44    156
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   362   1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   320   1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   379   1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   595   1656
6-9 months     CMC-V-BCS-2002   INDIA                          1                    58    313
6-9 months     CMC-V-BCS-2002   INDIA                          2                   143    313
6-9 months     CMC-V-BCS-2002   INDIA                          3                    97    313
6-9 months     CMC-V-BCS-2002   INDIA                          4                    15    313
6-9 months     CMIN             BANGLADESH                     1                    80    177
6-9 months     CMIN             BANGLADESH                     2                    50    177
6-9 months     CMIN             BANGLADESH                     3                    29    177
6-9 months     CMIN             BANGLADESH                     4                    18    177
6-9 months     CONTENT          PERU                           1                     0      1
6-9 months     CONTENT          PERU                           2                     0      1
6-9 months     CONTENT          PERU                           3                     1      1
6-9 months     CONTENT          PERU                           4                     0      1
6-9 months     EE               PAKISTAN                       1                     2      8
6-9 months     EE               PAKISTAN                       2                     5      8
6-9 months     EE               PAKISTAN                       3                     1      8
6-9 months     EE               PAKISTAN                       4                     0      8
6-9 months     GMS-Nepal        NEPAL                          1                   103    280
6-9 months     GMS-Nepal        NEPAL                          2                   108    280
6-9 months     GMS-Nepal        NEPAL                          3                    59    280
6-9 months     GMS-Nepal        NEPAL                          4                    10    280
6-9 months     Guatemala BSC    GUATEMALA                      1                    49    204
6-9 months     Guatemala BSC    GUATEMALA                      2                    59    204
6-9 months     Guatemala BSC    GUATEMALA                      3                    52    204
6-9 months     Guatemala BSC    GUATEMALA                      4                    44    204
6-9 months     IRC              INDIA                          1                     0      4
6-9 months     IRC              INDIA                          2                     1      4
6-9 months     IRC              INDIA                          3                     1      4
6-9 months     IRC              INDIA                          4                     2      4
6-9 months     Keneba           GAMBIA                         1                   155    700
6-9 months     Keneba           GAMBIA                         2                   160    700
6-9 months     Keneba           GAMBIA                         3                   187    700
6-9 months     Keneba           GAMBIA                         4                   198    700
6-9 months     MAL-ED           BRAZIL                         1                     1      1
6-9 months     MAL-ED           BRAZIL                         2                     0      1
6-9 months     MAL-ED           BRAZIL                         3                     0      1
6-9 months     MAL-ED           BRAZIL                         4                     0      1
6-9 months     MAL-ED           INDIA                          1                     4      6
6-9 months     MAL-ED           INDIA                          2                     1      6
6-9 months     MAL-ED           INDIA                          3                     1      6
6-9 months     MAL-ED           INDIA                          4                     0      6
6-9 months     MAL-ED           NEPAL                          1                     9     30
6-9 months     MAL-ED           NEPAL                          2                     5     30
6-9 months     MAL-ED           NEPAL                          3                     9     30
6-9 months     MAL-ED           NEPAL                          4                     7     30
6-9 months     MAL-ED           PERU                           1                     6     62
6-9 months     MAL-ED           PERU                           2                     9     62
6-9 months     MAL-ED           PERU                           3                    13     62
6-9 months     MAL-ED           PERU                           4                    34     62
6-9 months     MAL-ED           SOUTH AFRICA                   1                    12     69
6-9 months     MAL-ED           SOUTH AFRICA                   2                    14     69
6-9 months     MAL-ED           SOUTH AFRICA                   3                    19     69
6-9 months     MAL-ED           SOUTH AFRICA                   4                    24     69
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     2     34
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     8     34
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     9     34
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    15     34
6-9 months     PROVIDE          BANGLADESH                     1                     4     15
6-9 months     PROVIDE          BANGLADESH                     2                     5     15
6-9 months     PROVIDE          BANGLADESH                     3                     5     15
6-9 months     PROVIDE          BANGLADESH                     4                     1     15
6-9 months     ResPak           PAKISTAN                       1                    46    142
6-9 months     ResPak           PAKISTAN                       2                    20    142
6-9 months     ResPak           PAKISTAN                       3                    26    142
6-9 months     ResPak           PAKISTAN                       4                    50    142
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   348   1483
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   312   1483
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   377   1483
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   446   1483
9-12 months    CMC-V-BCS-2002   INDIA                          1                    34    317
9-12 months    CMC-V-BCS-2002   INDIA                          2                   135    317
9-12 months    CMC-V-BCS-2002   INDIA                          3                   115    317
9-12 months    CMC-V-BCS-2002   INDIA                          4                    33    317
9-12 months    CMIN             BANGLADESH                     1                    73    160
9-12 months    CMIN             BANGLADESH                     2                    41    160
9-12 months    CMIN             BANGLADESH                     3                    28    160
9-12 months    CMIN             BANGLADESH                     4                    18    160
9-12 months    CONTENT          PERU                           1                     0      2
9-12 months    CONTENT          PERU                           2                     0      2
9-12 months    CONTENT          PERU                           3                     2      2
9-12 months    CONTENT          PERU                           4                     0      2
9-12 months    EE               PAKISTAN                       1                     2      7
9-12 months    EE               PAKISTAN                       2                     2      7
9-12 months    EE               PAKISTAN                       3                     3      7
9-12 months    EE               PAKISTAN                       4                     0      7
9-12 months    GMS-Nepal        NEPAL                          1                   105    280
9-12 months    GMS-Nepal        NEPAL                          2                   100    280
9-12 months    GMS-Nepal        NEPAL                          3                    59    280
9-12 months    GMS-Nepal        NEPAL                          4                    16    280
9-12 months    Guatemala BSC    GUATEMALA                      1                    36    186
9-12 months    Guatemala BSC    GUATEMALA                      2                    50    186
9-12 months    Guatemala BSC    GUATEMALA                      3                    49    186
9-12 months    Guatemala BSC    GUATEMALA                      4                    51    186
9-12 months    IRC              INDIA                          1                     1      7
9-12 months    IRC              INDIA                          2                     2      7
9-12 months    IRC              INDIA                          3                     3      7
9-12 months    IRC              INDIA                          4                     1      7
9-12 months    Keneba           GAMBIA                         1                   176    686
9-12 months    Keneba           GAMBIA                         2                   161    686
9-12 months    Keneba           GAMBIA                         3                   186    686
9-12 months    Keneba           GAMBIA                         4                   163    686
9-12 months    MAL-ED           BRAZIL                         1                     0      4
9-12 months    MAL-ED           BRAZIL                         2                     2      4
9-12 months    MAL-ED           BRAZIL                         3                     1      4
9-12 months    MAL-ED           BRAZIL                         4                     1      4
9-12 months    MAL-ED           INDIA                          1                     1      7
9-12 months    MAL-ED           INDIA                          2                     4      7
9-12 months    MAL-ED           INDIA                          3                     2      7
9-12 months    MAL-ED           INDIA                          4                     0      7
9-12 months    MAL-ED           NEPAL                          1                     4     30
9-12 months    MAL-ED           NEPAL                          2                    11     30
9-12 months    MAL-ED           NEPAL                          3                     6     30
9-12 months    MAL-ED           NEPAL                          4                     9     30
9-12 months    MAL-ED           PERU                           1                     9     69
9-12 months    MAL-ED           PERU                           2                    10     69
9-12 months    MAL-ED           PERU                           3                    15     69
9-12 months    MAL-ED           PERU                           4                    35     69
9-12 months    MAL-ED           SOUTH AFRICA                   1                     9     66
9-12 months    MAL-ED           SOUTH AFRICA                   2                     8     66
9-12 months    MAL-ED           SOUTH AFRICA                   3                    21     66
9-12 months    MAL-ED           SOUTH AFRICA                   4                    28     66
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     6     50
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     9     50
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    16     50
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    19     50
9-12 months    PROVIDE          BANGLADESH                     1                     9     26
9-12 months    PROVIDE          BANGLADESH                     2                     5     26
9-12 months    PROVIDE          BANGLADESH                     3                     5     26
9-12 months    PROVIDE          BANGLADESH                     4                     7     26
9-12 months    ResPak           PAKISTAN                       1                    43    140
9-12 months    ResPak           PAKISTAN                       2                    27    140
9-12 months    ResPak           PAKISTAN                       3                    30    140
9-12 months    ResPak           PAKISTAN                       4                    40    140
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   235   1073
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   242   1073
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   240   1073
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   356   1073
12-15 months   CMC-V-BCS-2002   INDIA                          1                    34    329
12-15 months   CMC-V-BCS-2002   INDIA                          2                   115    329
12-15 months   CMC-V-BCS-2002   INDIA                          3                   139    329
12-15 months   CMC-V-BCS-2002   INDIA                          4                    41    329
12-15 months   CMIN             BANGLADESH                     1                    69    158
12-15 months   CMIN             BANGLADESH                     2                    44    158
12-15 months   CMIN             BANGLADESH                     3                    28    158
12-15 months   CMIN             BANGLADESH                     4                    17    158
12-15 months   EE               PAKISTAN                       1                     2      8
12-15 months   EE               PAKISTAN                       2                     3      8
12-15 months   EE               PAKISTAN                       3                     2      8
12-15 months   EE               PAKISTAN                       4                     1      8
12-15 months   GMS-Nepal        NEPAL                          1                   121    282
12-15 months   GMS-Nepal        NEPAL                          2                    91    282
12-15 months   GMS-Nepal        NEPAL                          3                    48    282
12-15 months   GMS-Nepal        NEPAL                          4                    22    282
12-15 months   Guatemala BSC    GUATEMALA                      1                    16     97
12-15 months   Guatemala BSC    GUATEMALA                      2                    31     97
12-15 months   Guatemala BSC    GUATEMALA                      3                    21     97
12-15 months   Guatemala BSC    GUATEMALA                      4                    29     97
12-15 months   IRC              INDIA                          1                     0      5
12-15 months   IRC              INDIA                          2                     2      5
12-15 months   IRC              INDIA                          3                     2      5
12-15 months   IRC              INDIA                          4                     1      5
12-15 months   Keneba           GAMBIA                         1                   246    946
12-15 months   Keneba           GAMBIA                         2                   232    946
12-15 months   Keneba           GAMBIA                         3                   262    946
12-15 months   Keneba           GAMBIA                         4                   206    946
12-15 months   MAL-ED           BRAZIL                         1                     0      7
12-15 months   MAL-ED           BRAZIL                         2                     1      7
12-15 months   MAL-ED           BRAZIL                         3                     2      7
12-15 months   MAL-ED           BRAZIL                         4                     4      7
12-15 months   MAL-ED           INDIA                          1                     8     19
12-15 months   MAL-ED           INDIA                          2                     6     19
12-15 months   MAL-ED           INDIA                          3                     3     19
12-15 months   MAL-ED           INDIA                          4                     2     19
12-15 months   MAL-ED           NEPAL                          1                     5     45
12-15 months   MAL-ED           NEPAL                          2                    12     45
12-15 months   MAL-ED           NEPAL                          3                    14     45
12-15 months   MAL-ED           NEPAL                          4                    14     45
12-15 months   MAL-ED           PERU                           1                     5     60
12-15 months   MAL-ED           PERU                           2                    15     60
12-15 months   MAL-ED           PERU                           3                    14     60
12-15 months   MAL-ED           PERU                           4                    26     60
12-15 months   MAL-ED           SOUTH AFRICA                   1                    15     89
12-15 months   MAL-ED           SOUTH AFRICA                   2                    13     89
12-15 months   MAL-ED           SOUTH AFRICA                   3                    28     89
12-15 months   MAL-ED           SOUTH AFRICA                   4                    33     89
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     4     65
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    12     65
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    25     65
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    24     65
12-15 months   PROVIDE          BANGLADESH                     1                   110    426
12-15 months   PROVIDE          BANGLADESH                     2                   109    426
12-15 months   PROVIDE          BANGLADESH                     3                   115    426
12-15 months   PROVIDE          BANGLADESH                     4                    92    426
12-15 months   ResPak           PAKISTAN                       1                    37     91
12-15 months   ResPak           PAKISTAN                       2                    23     91
12-15 months   ResPak           PAKISTAN                       3                    18     91
12-15 months   ResPak           PAKISTAN                       4                    13     91
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   141    777
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   153    777
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   180    777
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   303    777
15-18 months   CMC-V-BCS-2002   INDIA                          1                    39    321
15-18 months   CMC-V-BCS-2002   INDIA                          2                   139    321
15-18 months   CMC-V-BCS-2002   INDIA                          3                   116    321
15-18 months   CMC-V-BCS-2002   INDIA                          4                    27    321
15-18 months   CMIN             BANGLADESH                     1                    59    161
15-18 months   CMIN             BANGLADESH                     2                    55    161
15-18 months   CMIN             BANGLADESH                     3                    29    161
15-18 months   CMIN             BANGLADESH                     4                    18    161
15-18 months   CONTENT          PERU                           1                     1      2
15-18 months   CONTENT          PERU                           2                     0      2
15-18 months   CONTENT          PERU                           3                     0      2
15-18 months   CONTENT          PERU                           4                     1      2
15-18 months   EE               PAKISTAN                       1                     0      4
15-18 months   EE               PAKISTAN                       2                     3      4
15-18 months   EE               PAKISTAN                       3                     1      4
15-18 months   EE               PAKISTAN                       4                     0      4
15-18 months   GMS-Nepal        NEPAL                          1                   113    288
15-18 months   GMS-Nepal        NEPAL                          2                   110    288
15-18 months   GMS-Nepal        NEPAL                          3                    41    288
15-18 months   GMS-Nepal        NEPAL                          4                    24    288
15-18 months   IRC              INDIA                          1                     1      6
15-18 months   IRC              INDIA                          2                     2      6
15-18 months   IRC              INDIA                          3                     1      6
15-18 months   IRC              INDIA                          4                     2      6
15-18 months   Keneba           GAMBIA                         1                   228    927
15-18 months   Keneba           GAMBIA                         2                   241    927
15-18 months   Keneba           GAMBIA                         3                   265    927
15-18 months   Keneba           GAMBIA                         4                   193    927
15-18 months   MAL-ED           BRAZIL                         1                     0      8
15-18 months   MAL-ED           BRAZIL                         2                     2      8
15-18 months   MAL-ED           BRAZIL                         3                     2      8
15-18 months   MAL-ED           BRAZIL                         4                     4      8
15-18 months   MAL-ED           INDIA                          1                    12     28
15-18 months   MAL-ED           INDIA                          2                    10     28
15-18 months   MAL-ED           INDIA                          3                     4     28
15-18 months   MAL-ED           INDIA                          4                     2     28
15-18 months   MAL-ED           NEPAL                          1                     6     45
15-18 months   MAL-ED           NEPAL                          2                    12     45
15-18 months   MAL-ED           NEPAL                          3                    14     45
15-18 months   MAL-ED           NEPAL                          4                    13     45
15-18 months   MAL-ED           PERU                           1                     4     63
15-18 months   MAL-ED           PERU                           2                    15     63
15-18 months   MAL-ED           PERU                           3                    17     63
15-18 months   MAL-ED           PERU                           4                    27     63
15-18 months   MAL-ED           SOUTH AFRICA                   1                    12     88
15-18 months   MAL-ED           SOUTH AFRICA                   2                    10     88
15-18 months   MAL-ED           SOUTH AFRICA                   3                    24     88
15-18 months   MAL-ED           SOUTH AFRICA                   4                    42     88
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    11     67
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    12     67
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    18     67
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    26     67
15-18 months   PROVIDE          BANGLADESH                     1                   107    386
15-18 months   PROVIDE          BANGLADESH                     2                    98    386
15-18 months   PROVIDE          BANGLADESH                     3                    92    386
15-18 months   PROVIDE          BANGLADESH                     4                    89    386
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   140    652
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   115    652
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   151    652
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   246    652
18-21 months   CMC-V-BCS-2002   INDIA                          1                    48    305
18-21 months   CMC-V-BCS-2002   INDIA                          2                   127    305
18-21 months   CMC-V-BCS-2002   INDIA                          3                   111    305
18-21 months   CMC-V-BCS-2002   INDIA                          4                    19    305
18-21 months   CMIN             BANGLADESH                     1                    67    164
18-21 months   CMIN             BANGLADESH                     2                    48    164
18-21 months   CMIN             BANGLADESH                     3                    35    164
18-21 months   CMIN             BANGLADESH                     4                    14    164
18-21 months   GMS-Nepal        NEPAL                          1                    78    258
18-21 months   GMS-Nepal        NEPAL                          2                   102    258
18-21 months   GMS-Nepal        NEPAL                          3                    51    258
18-21 months   GMS-Nepal        NEPAL                          4                    27    258
18-21 months   IRC              INDIA                          1                     1      6
18-21 months   IRC              INDIA                          2                     1      6
18-21 months   IRC              INDIA                          3                     2      6
18-21 months   IRC              INDIA                          4                     2      6
18-21 months   Keneba           GAMBIA                         1                   247    933
18-21 months   Keneba           GAMBIA                         2                   241    933
18-21 months   Keneba           GAMBIA                         3                   244    933
18-21 months   Keneba           GAMBIA                         4                   201    933
18-21 months   MAL-ED           BRAZIL                         1                     1      1
18-21 months   MAL-ED           BRAZIL                         2                     0      1
18-21 months   MAL-ED           BRAZIL                         3                     0      1
18-21 months   MAL-ED           BRAZIL                         4                     0      1
18-21 months   MAL-ED           INDIA                          1                     8     25
18-21 months   MAL-ED           INDIA                          2                     7     25
18-21 months   MAL-ED           INDIA                          3                     8     25
18-21 months   MAL-ED           INDIA                          4                     2     25
18-21 months   MAL-ED           NEPAL                          1                     6     40
18-21 months   MAL-ED           NEPAL                          2                    14     40
18-21 months   MAL-ED           NEPAL                          3                    10     40
18-21 months   MAL-ED           NEPAL                          4                    10     40
18-21 months   MAL-ED           PERU                           1                     5     67
18-21 months   MAL-ED           PERU                           2                    12     67
18-21 months   MAL-ED           PERU                           3                    20     67
18-21 months   MAL-ED           PERU                           4                    30     67
18-21 months   MAL-ED           SOUTH AFRICA                   1                    10    110
18-21 months   MAL-ED           SOUTH AFRICA                   2                    15    110
18-21 months   MAL-ED           SOUTH AFRICA                   3                    29    110
18-21 months   MAL-ED           SOUTH AFRICA                   4                    56    110
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     6     64
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     9     64
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    27     64
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    22     64
18-21 months   PROVIDE          BANGLADESH                     1                   109    367
18-21 months   PROVIDE          BANGLADESH                     2                    87    367
18-21 months   PROVIDE          BANGLADESH                     3                    81    367
18-21 months   PROVIDE          BANGLADESH                     4                    90    367
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     2      8
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     2      8
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1      8
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     3      8
21-24 months   CMC-V-BCS-2002   INDIA                          1                    55    308
21-24 months   CMC-V-BCS-2002   INDIA                          2                   115    308
21-24 months   CMC-V-BCS-2002   INDIA                          3                   115    308
21-24 months   CMC-V-BCS-2002   INDIA                          4                    23    308
21-24 months   CMIN             BANGLADESH                     1                    63    133
21-24 months   CMIN             BANGLADESH                     2                    34    133
21-24 months   CMIN             BANGLADESH                     3                    26    133
21-24 months   CMIN             BANGLADESH                     4                    10    133
21-24 months   GMS-Nepal        NEPAL                          1                    71    230
21-24 months   GMS-Nepal        NEPAL                          2                    79    230
21-24 months   GMS-Nepal        NEPAL                          3                    51    230
21-24 months   GMS-Nepal        NEPAL                          4                    29    230
21-24 months   IRC              INDIA                          1                     1      9
21-24 months   IRC              INDIA                          2                     4      9
21-24 months   IRC              INDIA                          3                     2      9
21-24 months   IRC              INDIA                          4                     2      9
21-24 months   Keneba           GAMBIA                         1                   210    841
21-24 months   Keneba           GAMBIA                         2                   217    841
21-24 months   Keneba           GAMBIA                         3                   230    841
21-24 months   Keneba           GAMBIA                         4                   184    841
21-24 months   MAL-ED           BRAZIL                         1                     0      6
21-24 months   MAL-ED           BRAZIL                         2                     1      6
21-24 months   MAL-ED           BRAZIL                         3                     2      6
21-24 months   MAL-ED           BRAZIL                         4                     3      6
21-24 months   MAL-ED           INDIA                          1                    14     26
21-24 months   MAL-ED           INDIA                          2                     8     26
21-24 months   MAL-ED           INDIA                          3                     3     26
21-24 months   MAL-ED           INDIA                          4                     1     26
21-24 months   MAL-ED           NEPAL                          1                     8     35
21-24 months   MAL-ED           NEPAL                          2                     6     35
21-24 months   MAL-ED           NEPAL                          3                    12     35
21-24 months   MAL-ED           NEPAL                          4                     9     35
21-24 months   MAL-ED           PERU                           1                     5     69
21-24 months   MAL-ED           PERU                           2                    11     69
21-24 months   MAL-ED           PERU                           3                    23     69
21-24 months   MAL-ED           PERU                           4                    30     69
21-24 months   MAL-ED           SOUTH AFRICA                   1                    12    127
21-24 months   MAL-ED           SOUTH AFRICA                   2                    16    127
21-24 months   MAL-ED           SOUTH AFRICA                   3                    25    127
21-24 months   MAL-ED           SOUTH AFRICA                   4                    74    127
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     5     78
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    17     78
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    27     78
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    29     78
21-24 months   PROVIDE          BANGLADESH                     1                   106    306
21-24 months   PROVIDE          BANGLADESH                     2                    77    306
21-24 months   PROVIDE          BANGLADESH                     3                    63    306
21-24 months   PROVIDE          BANGLADESH                     4                    60    306


The following strata were considered:

* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/bb9b7042-857d-41ce-baea-aa4626be120d/45d3f001-9c28-436d-8abb-2ec5e78f5f22/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bb9b7042-857d-41ce-baea-aa4626be120d/45d3f001-9c28-436d-8abb-2ec5e78f5f22/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bb9b7042-857d-41ce-baea-aa4626be120d/45d3f001-9c28-436d-8abb-2ec5e78f5f22/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.1547623   -0.2549329   -0.0545917
3-6 months     CMC-V-BCS-2002   INDIA                          2                    NA                -0.0987269   -0.1752373   -0.0222164
3-6 months     CMC-V-BCS-2002   INDIA                          3                    NA                -0.0431231   -0.1219401    0.0356938
3-6 months     CMC-V-BCS-2002   INDIA                          4                    NA                -0.1971731   -0.3942585   -0.0000876
3-6 months     CMIN             BANGLADESH                     1                    NA                -0.0420206   -0.0917699    0.0077288
3-6 months     CMIN             BANGLADESH                     2                    NA                 0.0027929   -0.0479562    0.0535420
3-6 months     CMIN             BANGLADESH                     3                    NA                -0.0348647   -0.1018043    0.0320750
3-6 months     CMIN             BANGLADESH                     4                    NA                 0.0978751    0.0032734    0.1924767
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.1925829   -0.2293580   -0.1558079
3-6 months     GMS-Nepal        NEPAL                          2                    NA                -0.1191635   -0.1575086   -0.0808185
3-6 months     GMS-Nepal        NEPAL                          3                    NA                -0.1011230   -0.1557739   -0.0464721
3-6 months     GMS-Nepal        NEPAL                          4                    NA                -0.0926288   -0.1663852   -0.0188725
3-6 months     Keneba           GAMBIA                         1                    NA                -0.0590295   -0.1010549   -0.0170042
3-6 months     Keneba           GAMBIA                         2                    NA                -0.0413347   -0.0828198    0.0001503
3-6 months     Keneba           GAMBIA                         3                    NA                -0.0089901   -0.0500049    0.0320246
3-6 months     Keneba           GAMBIA                         4                    NA                 0.0492809   -0.0016812    0.1002429
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                -0.2496915   -0.5364728    0.0370898
3-6 months     MAL-ED           SOUTH AFRICA                   2                    NA                -0.0478993   -0.1751604    0.0793617
3-6 months     MAL-ED           SOUTH AFRICA                   3                    NA                 0.0000906   -0.1439293    0.1441104
3-6 months     MAL-ED           SOUTH AFRICA                   4                    NA                 0.0358777   -0.0749102    0.1466656
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0579642   -0.0864483   -0.0294801
3-6 months     PROVIDE          BANGLADESH                     2                    NA                -0.0449438   -0.0800905   -0.0097971
3-6 months     PROVIDE          BANGLADESH                     3                    NA                 0.0104858   -0.0248423    0.0458139
3-6 months     PROVIDE          BANGLADESH                     4                    NA                 0.0727937    0.0248255    0.1207619
3-6 months     ResPak           PAKISTAN                       1                    NA                -0.0756386   -0.1970519    0.0457746
3-6 months     ResPak           PAKISTAN                       2                    NA                -0.0130326   -0.1416644    0.1155993
3-6 months     ResPak           PAKISTAN                       3                    NA                 0.1802210    0.0425759    0.3178660
3-6 months     ResPak           PAKISTAN                       4                    NA                 0.1037492   -0.0186800    0.2261784
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1095710   -0.1449299   -0.0742120
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1067630   -0.1430857   -0.0704404
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0760335   -0.1093881   -0.0426790
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0629458   -0.0920762   -0.0338153
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.0434140   -0.1328047    0.0459767
6-9 months     CMC-V-BCS-2002   INDIA                          2                    NA                -0.1140305   -0.1641475   -0.0639135
6-9 months     CMC-V-BCS-2002   INDIA                          3                    NA                -0.0530691   -0.1110199    0.0048816
6-9 months     CMC-V-BCS-2002   INDIA                          4                    NA                -0.1122100   -0.2368923    0.0124722
6-9 months     CMIN             BANGLADESH                     1                    NA                -0.0748698   -0.1133941   -0.0363455
6-9 months     CMIN             BANGLADESH                     2                    NA                -0.0393960   -0.0873665    0.0085745
6-9 months     CMIN             BANGLADESH                     3                    NA                -0.0634254   -0.1184007   -0.0084501
6-9 months     CMIN             BANGLADESH                     4                    NA                 0.0346327   -0.0824202    0.1516855
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0131936   -0.0522418    0.0258545
6-9 months     GMS-Nepal        NEPAL                          2                    NA                -0.0188417   -0.0654694    0.0277859
6-9 months     GMS-Nepal        NEPAL                          3                    NA                -0.0499930   -0.0948055   -0.0051805
6-9 months     GMS-Nepal        NEPAL                          4                    NA                 0.0382704   -0.0329234    0.1094642
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                -0.0910788   -0.1306114   -0.0515462
6-9 months     Guatemala BSC    GUATEMALA                      2                    NA                -0.1298836   -0.1690541   -0.0907132
6-9 months     Guatemala BSC    GUATEMALA                      3                    NA                -0.0820409   -0.1149334   -0.0491484
6-9 months     Guatemala BSC    GUATEMALA                      4                    NA                -0.0913642   -0.1332086   -0.0495198
6-9 months     Keneba           GAMBIA                         1                    NA                -0.0668774   -0.1276969   -0.0060579
6-9 months     Keneba           GAMBIA                         2                    NA                -0.0410405   -0.0950755    0.0129945
6-9 months     Keneba           GAMBIA                         3                    NA                 0.0222937   -0.0290707    0.0736580
6-9 months     Keneba           GAMBIA                         4                    NA                 0.0367535   -0.0077452    0.0812521
6-9 months     MAL-ED           NEPAL                          1                    NA                -0.0474162   -0.1461754    0.0513430
6-9 months     MAL-ED           NEPAL                          2                    NA                 0.0469746   -0.1003872    0.1943365
6-9 months     MAL-ED           NEPAL                          3                    NA                -0.0452248   -0.0812759   -0.0091736
6-9 months     MAL-ED           NEPAL                          4                    NA                -0.0893093   -0.1581351   -0.0204834
6-9 months     MAL-ED           PERU                           1                    NA                 0.0157096   -0.0526843    0.0841035
6-9 months     MAL-ED           PERU                           2                    NA                 0.0156586   -0.0736690    0.1049861
6-9 months     MAL-ED           PERU                           3                    NA                -0.1827178   -0.2482688   -0.1171668
6-9 months     MAL-ED           PERU                           4                    NA                -0.0169627   -0.0763611    0.0424357
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                -0.0183033   -0.0969645    0.0603579
6-9 months     MAL-ED           SOUTH AFRICA                   2                    NA                -0.0933753   -0.1947625    0.0080119
6-9 months     MAL-ED           SOUTH AFRICA                   3                    NA                 0.1042189   -0.0100115    0.2184492
6-9 months     MAL-ED           SOUTH AFRICA                   4                    NA                -0.0232862   -0.0983820    0.0518097
6-9 months     ResPak           PAKISTAN                       1                    NA                -0.0463949   -0.1346129    0.0418232
6-9 months     ResPak           PAKISTAN                       2                    NA                -0.0880107   -0.1863180    0.0102966
6-9 months     ResPak           PAKISTAN                       3                    NA                -0.0101144   -0.1118119    0.0915831
6-9 months     ResPak           PAKISTAN                       4                    NA                 0.1428461    0.0744748    0.2112174
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0875078   -0.1170584   -0.0579571
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0645626   -0.1018432   -0.0272819
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0679971   -0.0988818   -0.0371125
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0019061   -0.0322704    0.0284582
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.1803537   -0.2530479   -0.1076596
9-12 months    CMC-V-BCS-2002   INDIA                          2                    NA                -0.1476810   -0.1892596   -0.1061024
9-12 months    CMC-V-BCS-2002   INDIA                          3                    NA                -0.0714418   -0.1235238   -0.0193598
9-12 months    CMC-V-BCS-2002   INDIA                          4                    NA                -0.1024179   -0.1783975   -0.0264382
9-12 months    CMIN             BANGLADESH                     1                    NA                -0.1377310   -0.1689083   -0.1065538
9-12 months    CMIN             BANGLADESH                     2                    NA                -0.0811200   -0.1283882   -0.0338517
9-12 months    CMIN             BANGLADESH                     3                    NA                -0.0257947   -0.0842040    0.0326147
9-12 months    CMIN             BANGLADESH                     4                    NA                -0.0169318   -0.1015047    0.0676411
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.1058509   -0.1394752   -0.0722267
9-12 months    GMS-Nepal        NEPAL                          2                    NA                -0.0861927   -0.1233662   -0.0490192
9-12 months    GMS-Nepal        NEPAL                          3                    NA                -0.0857616   -0.1161633   -0.0553599
9-12 months    GMS-Nepal        NEPAL                          4                    NA                -0.0406344   -0.0985519    0.0172830
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.0876526   -0.1162091   -0.0590961
9-12 months    Guatemala BSC    GUATEMALA                      2                    NA                -0.0489932   -0.0818471   -0.0161393
9-12 months    Guatemala BSC    GUATEMALA                      3                    NA                -0.0660035   -0.1001263   -0.0318806
9-12 months    Guatemala BSC    GUATEMALA                      4                    NA                -0.0408548   -0.0681519   -0.0135577
9-12 months    Keneba           GAMBIA                         1                    NA                -0.1163953   -0.1638877   -0.0689028
9-12 months    Keneba           GAMBIA                         2                    NA                -0.1263647   -0.1673615   -0.0853679
9-12 months    Keneba           GAMBIA                         3                    NA                -0.0961921   -0.1315755   -0.0608087
9-12 months    Keneba           GAMBIA                         4                    NA                -0.0520079   -0.0890576   -0.0149582
9-12 months    MAL-ED           PERU                           1                    NA                -0.0863554   -0.1416792   -0.0310316
9-12 months    MAL-ED           PERU                           2                    NA                -0.0580020   -0.1389550    0.0229509
9-12 months    MAL-ED           PERU                           3                    NA                -0.0801221   -0.1648462    0.0046020
9-12 months    MAL-ED           PERU                           4                    NA                -0.0431701   -0.0897245    0.0033844
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                -0.1222500   -0.2548974    0.0103975
9-12 months    MAL-ED           SOUTH AFRICA                   2                    NA                -0.1043715   -0.2123455    0.0036026
9-12 months    MAL-ED           SOUTH AFRICA                   3                    NA                -0.0923484   -0.1722900   -0.0124067
9-12 months    MAL-ED           SOUTH AFRICA                   4                    NA                -0.0607680   -0.1252552    0.0037191
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2419984   -0.4015708   -0.0824261
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0443049   -0.1553803    0.0667705
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1849694   -0.2917098   -0.0782290
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1155359   -0.2784564    0.0473846
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0617470   -0.1381090    0.0146149
9-12 months    PROVIDE          BANGLADESH                     2                    NA                -0.0514597   -0.1548232    0.0519038
9-12 months    PROVIDE          BANGLADESH                     3                    NA                -0.1508482   -0.2467929   -0.0549035
9-12 months    PROVIDE          BANGLADESH                     4                    NA                -0.0203686   -0.0844232    0.0436860
9-12 months    ResPak           PAKISTAN                       1                    NA                -0.0885760   -0.2008987    0.0237468
9-12 months    ResPak           PAKISTAN                       2                    NA                -0.0676181   -0.2077905    0.0725542
9-12 months    ResPak           PAKISTAN                       3                    NA                 0.0567616   -0.0419605    0.1554837
9-12 months    ResPak           PAKISTAN                       4                    NA                 0.0593664   -0.0035463    0.1222792
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0841101   -0.1149431   -0.0532772
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0700539   -0.0972848   -0.0428231
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0628484   -0.0934029   -0.0322940
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0521011   -0.0783407   -0.0258614
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.1431474   -0.1982068   -0.0880879
12-15 months   CMC-V-BCS-2002   INDIA                          2                    NA                -0.0865567   -0.1312551   -0.0418584
12-15 months   CMC-V-BCS-2002   INDIA                          3                    NA                -0.0607427   -0.1086173   -0.0128680
12-15 months   CMC-V-BCS-2002   INDIA                          4                    NA                -0.0041851   -0.0763488    0.0679785
12-15 months   CMIN             BANGLADESH                     1                    NA                -0.0877463   -0.1185298   -0.0569629
12-15 months   CMIN             BANGLADESH                     2                    NA                -0.0439573   -0.0823002   -0.0056145
12-15 months   CMIN             BANGLADESH                     3                    NA                -0.0610421   -0.1020679   -0.0200163
12-15 months   CMIN             BANGLADESH                     4                    NA                -0.0255729   -0.1125839    0.0614382
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0756674   -0.0957466   -0.0555882
12-15 months   GMS-Nepal        NEPAL                          2                    NA                -0.0756312   -0.0951708   -0.0560917
12-15 months   GMS-Nepal        NEPAL                          3                    NA                -0.0749142   -0.1060389   -0.0437894
12-15 months   GMS-Nepal        NEPAL                          4                    NA                -0.0396599   -0.0789626   -0.0003572
12-15 months   Guatemala BSC    GUATEMALA                      1                    NA                -0.0076343   -0.0646097    0.0493410
12-15 months   Guatemala BSC    GUATEMALA                      2                    NA                -0.0048835   -0.0434653    0.0336983
12-15 months   Guatemala BSC    GUATEMALA                      3                    NA                -0.0208870   -0.0739880    0.0322140
12-15 months   Guatemala BSC    GUATEMALA                      4                    NA                -0.0081920   -0.0495835    0.0331996
12-15 months   Keneba           GAMBIA                         1                    NA                -0.0686892   -0.0985855   -0.0387930
12-15 months   Keneba           GAMBIA                         2                    NA                -0.0501804   -0.0789830   -0.0213777
12-15 months   Keneba           GAMBIA                         3                    NA                -0.0321476   -0.0626412   -0.0016541
12-15 months   Keneba           GAMBIA                         4                    NA                -0.0732251   -0.1054172   -0.0410331
12-15 months   MAL-ED           NEPAL                          1                    NA                -0.0468204   -0.0851875   -0.0084533
12-15 months   MAL-ED           NEPAL                          2                    NA                -0.0265228   -0.1031262    0.0500806
12-15 months   MAL-ED           NEPAL                          3                    NA                -0.0472802   -0.1146895    0.0201290
12-15 months   MAL-ED           NEPAL                          4                    NA                -0.0102292   -0.0603716    0.0399133
12-15 months   MAL-ED           PERU                           1                    NA                -0.1163778   -0.2236768   -0.0090789
12-15 months   MAL-ED           PERU                           2                    NA                -0.0897866   -0.1523688   -0.0272044
12-15 months   MAL-ED           PERU                           3                    NA                -0.0708516   -0.1168088   -0.0248944
12-15 months   MAL-ED           PERU                           4                    NA                -0.0937266   -0.1374899   -0.0499634
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0416371   -0.1105510    0.0272769
12-15 months   MAL-ED           SOUTH AFRICA                   2                    NA                -0.0853165   -0.1561444   -0.0144886
12-15 months   MAL-ED           SOUTH AFRICA                   3                    NA                -0.0583250   -0.1367490    0.0200991
12-15 months   MAL-ED           SOUTH AFRICA                   4                    NA                -0.0483733   -0.1041747    0.0074281
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0527779   -0.0726563   -0.0328995
12-15 months   PROVIDE          BANGLADESH                     2                    NA                -0.0282722   -0.0538960   -0.0026485
12-15 months   PROVIDE          BANGLADESH                     3                    NA                -0.0434637   -0.0651700   -0.0217574
12-15 months   PROVIDE          BANGLADESH                     4                    NA                -0.0272885   -0.0510557   -0.0035212
12-15 months   ResPak           PAKISTAN                       1                    NA                 0.0553784   -0.0673030    0.1780599
12-15 months   ResPak           PAKISTAN                       2                    NA                 0.0639284    0.0020574    0.1257995
12-15 months   ResPak           PAKISTAN                       3                    NA                 0.1685720    0.0048594    0.3322845
12-15 months   ResPak           PAKISTAN                       4                    NA                 0.1133227   -0.0369199    0.2635652
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0706248   -0.1042690   -0.0369807
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0826320   -0.1143442   -0.0509197
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0608395   -0.0911270   -0.0305520
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0549626   -0.0787238   -0.0312015
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0452852   -0.1381635    0.0475930
15-18 months   CMC-V-BCS-2002   INDIA                          2                    NA                -0.0913009   -0.1236605   -0.0589413
15-18 months   CMC-V-BCS-2002   INDIA                          3                    NA                -0.0572599   -0.0954034   -0.0191163
15-18 months   CMC-V-BCS-2002   INDIA                          4                    NA                -0.0280317   -0.0921156    0.0360522
15-18 months   CMIN             BANGLADESH                     1                    NA                -0.0926881   -0.1196577   -0.0657185
15-18 months   CMIN             BANGLADESH                     2                    NA                -0.0450899   -0.0781961   -0.0119837
15-18 months   CMIN             BANGLADESH                     3                    NA                -0.0649104   -0.1043391   -0.0254818
15-18 months   CMIN             BANGLADESH                     4                    NA                -0.0088253   -0.0890170    0.0713664
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0775748   -0.1086704   -0.0464792
15-18 months   GMS-Nepal        NEPAL                          2                    NA                -0.0618363   -0.0805963   -0.0430762
15-18 months   GMS-Nepal        NEPAL                          3                    NA                -0.0616523   -0.0933079   -0.0299968
15-18 months   GMS-Nepal        NEPAL                          4                    NA                -0.0752193   -0.1112405   -0.0391982
15-18 months   Keneba           GAMBIA                         1                    NA                -0.0353859   -0.0621410   -0.0086308
15-18 months   Keneba           GAMBIA                         2                    NA                -0.0351035   -0.0634419   -0.0067651
15-18 months   Keneba           GAMBIA                         3                    NA                -0.0562331   -0.0806872   -0.0317790
15-18 months   Keneba           GAMBIA                         4                    NA                -0.0547925   -0.0800319   -0.0295532
15-18 months   MAL-ED           NEPAL                          1                    NA                -0.0172905   -0.0883535    0.0537726
15-18 months   MAL-ED           NEPAL                          2                    NA                -0.0838071   -0.1666104   -0.0010039
15-18 months   MAL-ED           NEPAL                          3                    NA                -0.0558341   -0.1171428    0.0054746
15-18 months   MAL-ED           NEPAL                          4                    NA                -0.0924496   -0.1435471   -0.0413521
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.0038564   -0.0642245    0.0719373
15-18 months   MAL-ED           SOUTH AFRICA                   2                    NA                -0.0266377   -0.1350480    0.0817726
15-18 months   MAL-ED           SOUTH AFRICA                   3                    NA                -0.0407977   -0.1068343    0.0252389
15-18 months   MAL-ED           SOUTH AFRICA                   4                    NA                -0.0168356   -0.0609165    0.0272453
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1255408   -0.2187723   -0.0323094
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0962381   -0.1666948   -0.0257814
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1414441   -0.2223011   -0.0605870
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0739905   -0.1413671   -0.0066140
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0464586   -0.0636124   -0.0293049
15-18 months   PROVIDE          BANGLADESH                     2                    NA                -0.0306631   -0.0517014   -0.0096248
15-18 months   PROVIDE          BANGLADESH                     3                    NA                -0.0534325   -0.0744985   -0.0323665
15-18 months   PROVIDE          BANGLADESH                     4                    NA                -0.0422562   -0.0638336   -0.0206789
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0433842   -0.0738179   -0.0129505
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0432931   -0.0806928   -0.0058934
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0140965   -0.0462466    0.0180536
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0018787   -0.0277520    0.0239946
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0806273   -0.1264669   -0.0347878
18-21 months   CMC-V-BCS-2002   INDIA                          2                    NA                -0.0503165   -0.0820006   -0.0186324
18-21 months   CMC-V-BCS-2002   INDIA                          3                    NA                -0.0292522   -0.0712388    0.0127344
18-21 months   CMC-V-BCS-2002   INDIA                          4                    NA                 0.0083544   -0.0846500    0.1013588
18-21 months   CMIN             BANGLADESH                     1                    NA                -0.0190954   -0.0426478    0.0044570
18-21 months   CMIN             BANGLADESH                     2                    NA                -0.0229228   -0.0505198    0.0046743
18-21 months   CMIN             BANGLADESH                     3                    NA                 0.0358315   -0.0027840    0.0744471
18-21 months   CMIN             BANGLADESH                     4                    NA                -0.0172094   -0.0900962    0.0556774
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0226461    0.0026544    0.0426378
18-21 months   GMS-Nepal        NEPAL                          2                    NA                 0.0538517    0.0295310    0.0781723
18-21 months   GMS-Nepal        NEPAL                          3                    NA                -0.0013426   -0.0292835    0.0265983
18-21 months   GMS-Nepal        NEPAL                          4                    NA                -0.0277880   -0.1278180    0.0722420
18-21 months   Keneba           GAMBIA                         1                    NA                -0.0053298   -0.0302195    0.0195599
18-21 months   Keneba           GAMBIA                         2                    NA                -0.0235593   -0.0537043    0.0065856
18-21 months   Keneba           GAMBIA                         3                    NA                -0.0209040   -0.0495185    0.0077106
18-21 months   Keneba           GAMBIA                         4                    NA                -0.0235502   -0.0553681    0.0082677
18-21 months   MAL-ED           NEPAL                          1                    NA                -0.0333839   -0.0608728   -0.0058951
18-21 months   MAL-ED           NEPAL                          2                    NA                -0.0049955   -0.0678529    0.0578618
18-21 months   MAL-ED           NEPAL                          3                    NA                -0.0521308   -0.1067324    0.0024708
18-21 months   MAL-ED           NEPAL                          4                    NA                -0.0334850   -0.0822730    0.0153030
18-21 months   MAL-ED           PERU                           1                    NA                -0.0834970   -0.1498060   -0.0171880
18-21 months   MAL-ED           PERU                           2                    NA                -0.0515385   -0.0984549   -0.0046221
18-21 months   MAL-ED           PERU                           3                    NA                -0.0302925   -0.0636894    0.0031045
18-21 months   MAL-ED           PERU                           4                    NA                 0.0265937   -0.0165238    0.0697112
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0693980   -0.1595217    0.0207258
18-21 months   MAL-ED           SOUTH AFRICA                   2                    NA                -0.1259108   -0.1805843   -0.0712374
18-21 months   MAL-ED           SOUTH AFRICA                   3                    NA                -0.0431926   -0.1042701    0.0178849
18-21 months   MAL-ED           SOUTH AFRICA                   4                    NA                -0.0039696   -0.0492604    0.0413211
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1861545   -0.3304775   -0.0418314
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0292004   -0.1345275    0.1929283
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0199753   -0.0763603    0.0364097
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.0165730   -0.0548433    0.0879892
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0176182   -0.0354919    0.0002555
18-21 months   PROVIDE          BANGLADESH                     2                    NA                -0.0142069   -0.0356974    0.0072835
18-21 months   PROVIDE          BANGLADESH                     3                    NA                -0.0329530   -0.0536784   -0.0122277
18-21 months   PROVIDE          BANGLADESH                     4                    NA                -0.0002848   -0.0197657    0.0191960
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0039783   -0.0660352    0.0580785
21-24 months   CMC-V-BCS-2002   INDIA                          2                    NA                 0.0093246   -0.0239781    0.0426272
21-24 months   CMC-V-BCS-2002   INDIA                          3                    NA                 0.0319166    0.0023512    0.0614820
21-24 months   CMC-V-BCS-2002   INDIA                          4                    NA                 0.0403485   -0.0425549    0.1232519
21-24 months   CMIN             BANGLADESH                     1                    NA                 0.0033766   -0.0226551    0.0294083
21-24 months   CMIN             BANGLADESH                     2                    NA                -0.0113921   -0.0419111    0.0191268
21-24 months   CMIN             BANGLADESH                     3                    NA                 0.0515772    0.0035022    0.0996521
21-24 months   CMIN             BANGLADESH                     4                    NA                 0.0910549    0.0206025    0.1615073
21-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0650011    0.0242167    0.1057855
21-24 months   GMS-Nepal        NEPAL                          2                    NA                 0.0463727    0.0191797    0.0735656
21-24 months   GMS-Nepal        NEPAL                          3                    NA                 0.0252790   -0.0175850    0.0681429
21-24 months   GMS-Nepal        NEPAL                          4                    NA                 0.0964961    0.0166620    0.1763303
21-24 months   Keneba           GAMBIA                         1                    NA                 0.0113554   -0.0207916    0.0435025
21-24 months   Keneba           GAMBIA                         2                    NA                 0.0210121   -0.0072442    0.0492685
21-24 months   Keneba           GAMBIA                         3                    NA                 0.0143252   -0.0154031    0.0440534
21-24 months   Keneba           GAMBIA                         4                    NA                 0.0163430   -0.0120350    0.0447210
21-24 months   MAL-ED           NEPAL                          1                    NA                -0.0330587   -0.0722036    0.0060862
21-24 months   MAL-ED           NEPAL                          2                    NA                -0.0524094   -0.1157211    0.0109022
21-24 months   MAL-ED           NEPAL                          3                    NA                 0.0621043   -0.0494307    0.1736392
21-24 months   MAL-ED           NEPAL                          4                    NA                -0.0495207   -0.1083643    0.0093229
21-24 months   MAL-ED           PERU                           1                    NA                 0.0029241   -0.0411928    0.0470410
21-24 months   MAL-ED           PERU                           2                    NA                 0.0226692   -0.0296422    0.0749806
21-24 months   MAL-ED           PERU                           3                    NA                 0.0507293    0.0039032    0.0975554
21-24 months   MAL-ED           PERU                           4                    NA                 0.0786807    0.0428098    0.1145516
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.0644940   -0.0179049    0.1468929
21-24 months   MAL-ED           SOUTH AFRICA                   2                    NA                 0.0383421   -0.0265420    0.1032263
21-24 months   MAL-ED           SOUTH AFRICA                   3                    NA                 0.0557272   -0.0019638    0.1134181
21-24 months   MAL-ED           SOUTH AFRICA                   4                    NA                 0.0666281    0.0346180    0.0986381
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0151906   -0.0588472    0.0892285
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0541033   -0.0037364    0.1119430
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0230492   -0.0649649    0.0188665
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0204007   -0.1100916    0.0692901
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0470561    0.0280024    0.0661097
21-24 months   PROVIDE          BANGLADESH                     2                    NA                 0.0506318    0.0313102    0.0699533
21-24 months   PROVIDE          BANGLADESH                     3                    NA                 0.0315959    0.0080386    0.0551532
21-24 months   PROVIDE          BANGLADESH                     4                    NA                 0.0731794    0.0460095    0.1003492


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0961751   -0.1438349   -0.0485152
3-6 months     CMIN             BANGLADESH                     NA                   NA                -0.0053283   -0.0369418    0.0262853
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1486633   -0.1726305   -0.1246960
3-6 months     Keneba           GAMBIA                         NA                   NA                -0.0137780   -0.0359465    0.0083905
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0219677   -0.0958140    0.0518786
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269311   -0.0450334   -0.0088288
3-6 months     ResPak           PAKISTAN                       NA                   NA                 0.0366027   -0.0294732    0.1026785
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0846004   -0.1012677   -0.0679332
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     CMIN             BANGLADESH                     NA                   NA                -0.0518380   -0.0789102   -0.0247658
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0212883   -0.0463864    0.0038097
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                -0.1000595   -0.1194855   -0.0806336
6-9 months     Keneba           GAMBIA                         NA                   NA                -0.0078377   -0.0341182    0.0184429
6-9 months     MAL-ED           NEPAL                          NA                   NA                -0.0408020   -0.0866412    0.0050371
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0438206   -0.0861937   -0.0014475
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0015305   -0.0521734    0.0491125
6-9 months     ResPak           PAKISTAN                       NA                   NA                 0.0210208   -0.0255372    0.0675787
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0519766   -0.0680269   -0.0359262
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    CMIN             BANGLADESH                     NA                   NA                -0.0900457   -0.1145732   -0.0655181
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0908704   -0.1106331   -0.0711076
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0587254   -0.0745802   -0.0428705
9-12 months    Keneba           GAMBIA                         NA                   NA                -0.0979582   -0.1183285   -0.0775878
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0589856   -0.0922238   -0.0257473
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0844855   -0.1283435   -0.0406275
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1401086   -0.2179648   -0.0622523
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0657632   -0.1109045   -0.0206219
9-12 months    ResPak           PAKISTAN                       NA                   NA                -0.0111211   -0.0642819    0.0420397
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0655643   -0.0799283   -0.0512004
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   CMIN             BANGLADESH                     NA                   NA                -0.0641300   -0.0852944   -0.0429656
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0727184   -0.0850764   -0.0603605
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                -0.0097911   -0.0327495    0.0131674
12-15 months   Keneba           GAMBIA                         NA                   NA                -0.0550174   -0.0702458   -0.0397890
12-15 months   MAL-ED           NEPAL                          NA                   NA                -0.0301668   -0.0639364    0.0036027
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0892917   -0.1177358   -0.0608476
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0557651   -0.0916368   -0.0198933
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0384885   -0.0499357   -0.0270414
12-15 months   ResPak           PAKISTAN                       NA                   NA                 0.0882071    0.0224390    0.1539752
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0646146   -0.0791715   -0.0500578
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   CMIN             BANGLADESH                     NA                   NA                -0.0620485   -0.0814047   -0.0426923
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0691005   -0.0842766   -0.0539245
15-18 months   Keneba           GAMBIA                         NA                   NA                -0.0453125   -0.0585222   -0.0321028
15-18 months   MAL-ED           NEPAL                          NA                   NA                -0.0687322   -0.1035727   -0.0338918
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0216629   -0.0535045    0.0101786
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1045605   -0.1445148   -0.0646062
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0431416   -0.0532302   -0.0330530
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0209252   -0.0363844   -0.0054660
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   CMIN             BANGLADESH                     NA                   NA                -0.0083324   -0.0249759    0.0083111
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0249632    0.0082174    0.0417091
18-21 months   Keneba           GAMBIA                         NA                   NA                -0.0180369   -0.0324342   -0.0036397
18-21 months   MAL-ED           NEPAL                          NA                   NA                -0.0281600   -0.0576533    0.0013333
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0125968   -0.0380983    0.0129048
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0368866   -0.0681101   -0.0056631
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0160758   -0.0617635    0.0296119
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0159434   -0.0259032   -0.0059835
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   CMIN             BANGLADESH                     NA                   NA                 0.0156162   -0.0032678    0.0345001
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0537658    0.0326646    0.0748669
21-24 months   Keneba           GAMBIA                         NA                   NA                 0.0157505    0.0008408    0.0306602
21-24 months   MAL-ED           NEPAL                          NA                   NA                -0.0079817   -0.0547153    0.0387518
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0549446    0.0304238    0.0794654
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0607170    0.0360792    0.0853548
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0027979   -0.0422063    0.0366105
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0498951    0.0388791    0.0609110


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          2                    1                  0.0560355   -0.0700121    0.1820831
3-6 months     CMC-V-BCS-2002   INDIA                          3                    1                  0.1116392   -0.0158216    0.2391000
3-6 months     CMC-V-BCS-2002   INDIA                          4                    1                 -0.0424107   -0.2634917    0.1786703
3-6 months     CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CMIN             BANGLADESH                     2                    1                  0.0448135   -0.0262532    0.1158802
3-6 months     CMIN             BANGLADESH                     3                    1                  0.0071559   -0.0762462    0.0905580
3-6 months     CMIN             BANGLADESH                     4                    1                  0.1398956    0.0330103    0.2467809
3-6 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          2                    1                  0.0734194    0.0202899    0.1265490
3-6 months     GMS-Nepal        NEPAL                          3                    1                  0.0914599    0.0255878    0.1573320
3-6 months     GMS-Nepal        NEPAL                          4                    1                  0.0999541    0.0175380    0.1823702
3-6 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         2                    1                  0.0176948   -0.0413572    0.0767468
3-6 months     Keneba           GAMBIA                         3                    1                  0.0500394   -0.0086832    0.1087620
3-6 months     Keneba           GAMBIA                         4                    1                  0.1083104    0.0422554    0.1743654
3-6 months     MAL-ED           SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   2                    1                  0.2017921   -0.1119576    0.5155419
3-6 months     MAL-ED           SOUTH AFRICA                   3                    1                  0.2497820   -0.0711311    0.5706951
3-6 months     MAL-ED           SOUTH AFRICA                   4                    1                  0.2855692   -0.0218678    0.5930061
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2                    1                  0.0130204   -0.0322193    0.0582601
3-6 months     PROVIDE          BANGLADESH                     3                    1                  0.0684500    0.0230692    0.1138308
3-6 months     PROVIDE          BANGLADESH                     4                    1                  0.1307579    0.0749700    0.1865458
3-6 months     ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       2                    1                  0.0626061   -0.1142762    0.2394883
3-6 months     ResPak           PAKISTAN                       3                    1                  0.2558596    0.0723185    0.4394007
3-6 months     ResPak           PAKISTAN                       4                    1                  0.1793878    0.0069637    0.3518120
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0028079   -0.0478832    0.0534990
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0335374   -0.0150710    0.0821459
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0466252    0.0008122    0.0924383
6-9 months     CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          2                    1                 -0.0706165   -0.1730977    0.0318648
6-9 months     CMC-V-BCS-2002   INDIA                          3                    1                 -0.0096551   -0.1161867    0.0968765
6-9 months     CMC-V-BCS-2002   INDIA                          4                    1                 -0.0687960   -0.2222117    0.0846197
6-9 months     CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CMIN             BANGLADESH                     2                    1                  0.0354738   -0.0260510    0.0969985
6-9 months     CMIN             BANGLADESH                     3                    1                  0.0114444   -0.0556853    0.0785742
6-9 months     CMIN             BANGLADESH                     4                    1                  0.1095025   -0.0137270    0.2327319
6-9 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          2                    1                 -0.0056481   -0.0664666    0.0551704
6-9 months     GMS-Nepal        NEPAL                          3                    1                 -0.0367994   -0.0962377    0.0226389
6-9 months     GMS-Nepal        NEPAL                          4                    1                  0.0514640   -0.0297352    0.1326633
6-9 months     Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      2                    1                 -0.0388048   -0.0944569    0.0168472
6-9 months     Guatemala BSC    GUATEMALA                      3                    1                  0.0090379   -0.0423892    0.0604650
6-9 months     Guatemala BSC    GUATEMALA                      4                    1                 -0.0002854   -0.0578508    0.0572801
6-9 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         2                    1                  0.0258369   -0.0555191    0.1071929
6-9 months     Keneba           GAMBIA                         3                    1                  0.0891711    0.0095639    0.1687783
6-9 months     Keneba           GAMBIA                         4                    1                  0.1036309    0.0282707    0.1789910
6-9 months     MAL-ED           NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          2                    1                  0.0943909   -0.0830039    0.2717856
6-9 months     MAL-ED           NEPAL                          3                    1                  0.0021915   -0.1029421    0.1073250
6-9 months     MAL-ED           NEPAL                          4                    1                 -0.0418930   -0.1622690    0.0784830
6-9 months     MAL-ED           PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           2                    1                 -0.0000511   -0.1125550    0.1124529
6-9 months     MAL-ED           PERU                           3                    1                 -0.1984274   -0.2931620   -0.1036928
6-9 months     MAL-ED           PERU                           4                    1                 -0.0326723   -0.1232587    0.0579141
6-9 months     MAL-ED           SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   2                    1                 -0.0750720   -0.2033957    0.0532516
6-9 months     MAL-ED           SOUTH AFRICA                   3                    1                  0.1225221   -0.0161723    0.2612166
6-9 months     MAL-ED           SOUTH AFRICA                   4                    1                 -0.0049829   -0.1137348    0.1037690
6-9 months     ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ResPak           PAKISTAN                       2                    1                 -0.0416158   -0.1737019    0.0904703
6-9 months     ResPak           PAKISTAN                       3                    1                  0.0362805   -0.0983479    0.1709089
6-9 months     ResPak           PAKISTAN                       4                    1                  0.1892409    0.0776297    0.3008522
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0229452   -0.0246267    0.0705171
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0195106   -0.0232340    0.0622553
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0856017    0.0432315    0.1279719
9-12 months    CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          2                    1                  0.0326728   -0.0510722    0.1164177
9-12 months    CMC-V-BCS-2002   INDIA                          3                    1                  0.1089120    0.0194862    0.1983378
9-12 months    CMC-V-BCS-2002   INDIA                          4                    1                  0.0779359   -0.0272180    0.1830898
9-12 months    CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CMIN             BANGLADESH                     2                    1                  0.0566111   -0.0000132    0.1132354
9-12 months    CMIN             BANGLADESH                     3                    1                  0.1119364    0.0457271    0.1781457
9-12 months    CMIN             BANGLADESH                     4                    1                  0.1207992    0.0306627    0.2109358
9-12 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          2                    1                  0.0196582   -0.0304662    0.0697827
9-12 months    GMS-Nepal        NEPAL                          3                    1                  0.0200894   -0.0252411    0.0654198
9-12 months    GMS-Nepal        NEPAL                          4                    1                  0.0652165   -0.0017538    0.1321868
9-12 months    Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      2                    1                  0.0386594   -0.0048705    0.0821893
9-12 months    Guatemala BSC    GUATEMALA                      3                    1                  0.0216491   -0.0228463    0.0661445
9-12 months    Guatemala BSC    GUATEMALA                      4                    1                  0.0467978    0.0072933    0.0863022
9-12 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         2                    1                 -0.0099694   -0.0727092    0.0527703
9-12 months    Keneba           GAMBIA                         3                    1                  0.0202032   -0.0390212    0.0794275
9-12 months    Keneba           GAMBIA                         4                    1                  0.0643874    0.0041527    0.1246220
9-12 months    MAL-ED           PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           2                    1                  0.0283533   -0.0696982    0.1264049
9-12 months    MAL-ED           PERU                           3                    1                  0.0062333   -0.0949542    0.1074207
9-12 months    MAL-ED           PERU                           4                    1                  0.0431853   -0.0291199    0.1154905
9-12 months    MAL-ED           SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   2                    1                  0.0178785   -0.1531588    0.1889158
9-12 months    MAL-ED           SOUTH AFRICA                   3                    1                  0.0299016   -0.1249726    0.1847758
9-12 months    MAL-ED           SOUTH AFRICA                   4                    1                  0.0614819   -0.0860103    0.2089741
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1976935    0.0032685    0.3921185
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0570290   -0.1349523    0.2490104
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1264625   -0.1015866    0.3545117
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2                    1                  0.0102873   -0.1182240    0.1387986
9-12 months    PROVIDE          BANGLADESH                     3                    1                 -0.0891012   -0.2117247    0.0335224
9-12 months    PROVIDE          BANGLADESH                     4                    1                  0.0413785   -0.0582917    0.1410486
9-12 months    ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       2                    1                  0.0209579   -0.1586659    0.2005816
9-12 months    ResPak           PAKISTAN                       3                    1                  0.1453376   -0.0042032    0.2948784
9-12 months    ResPak           PAKISTAN                       4                    1                  0.1479424    0.0192008    0.2766841
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0140562   -0.0270800    0.0551925
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0212617   -0.0221462    0.0646696
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0320091   -0.0084779    0.0724960
12-15 months   CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          2                    1                  0.0565906   -0.0143282    0.1275095
12-15 months   CMC-V-BCS-2002   INDIA                          3                    1                  0.0824047    0.0094422    0.1553672
12-15 months   CMC-V-BCS-2002   INDIA                          4                    1                  0.1389622    0.0481925    0.2297319
12-15 months   CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CMIN             BANGLADESH                     2                    1                  0.0437890   -0.0053821    0.0929601
12-15 months   CMIN             BANGLADESH                     3                    1                  0.0267042   -0.0245865    0.0779949
12-15 months   CMIN             BANGLADESH                     4                    1                  0.0621735   -0.0301225    0.1544694
12-15 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          2                    1                  0.0000362   -0.0279811    0.0280535
12-15 months   GMS-Nepal        NEPAL                          3                    1                  0.0007532   -0.0362862    0.0377927
12-15 months   GMS-Nepal        NEPAL                          4                    1                  0.0360075   -0.0081273    0.0801422
12-15 months   Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      2                    1                  0.0027508   -0.0660587    0.0715603
12-15 months   Guatemala BSC    GUATEMALA                      3                    1                 -0.0132527   -0.0911366    0.0646313
12-15 months   Guatemala BSC    GUATEMALA                      4                    1                 -0.0005577   -0.0709811    0.0698657
12-15 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         2                    1                  0.0185089   -0.0230047    0.0600225
12-15 months   Keneba           GAMBIA                         3                    1                  0.0365416   -0.0061625    0.0792457
12-15 months   Keneba           GAMBIA                         4                    1                 -0.0045359   -0.0484689    0.0393971
12-15 months   MAL-ED           NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          2                    1                  0.0202976   -0.0653769    0.1059721
12-15 months   MAL-ED           NEPAL                          3                    1                 -0.0004598   -0.0780229    0.0771033
12-15 months   MAL-ED           NEPAL                          4                    1                  0.0365913   -0.0265459    0.0997284
12-15 months   MAL-ED           PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           2                    1                  0.0265912   -0.0976247    0.1508072
12-15 months   MAL-ED           PERU                           3                    1                  0.0455262   -0.0712005    0.1622529
12-15 months   MAL-ED           PERU                           4                    1                  0.0226512   -0.0932293    0.1385316
12-15 months   MAL-ED           SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   2                    1                 -0.0436794   -0.1425011    0.0551422
12-15 months   MAL-ED           SOUTH AFRICA                   3                    1                 -0.0166879   -0.1210884    0.0877126
12-15 months   MAL-ED           SOUTH AFRICA                   4                    1                 -0.0067362   -0.0954094    0.0819370
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2                    1                  0.0245057   -0.0079246    0.0569360
12-15 months   PROVIDE          BANGLADESH                     3                    1                  0.0093142   -0.0201190    0.0387474
12-15 months   PROVIDE          BANGLADESH                     4                    1                  0.0254895   -0.0054949    0.0564738
12-15 months   ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ResPak           PAKISTAN                       2                    1                  0.0085500   -0.1288500    0.1459500
12-15 months   ResPak           PAKISTAN                       3                    1                  0.1131935   -0.0913854    0.3177724
12-15 months   ResPak           PAKISTAN                       4                    1                  0.0579442   -0.1360237    0.2519121
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0120071   -0.0582413    0.0342271
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0097854   -0.0354834    0.0550541
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0156622   -0.0255267    0.0568510
15-18 months   CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          2                    1                 -0.0460157   -0.1443697    0.0523383
15-18 months   CMC-V-BCS-2002   INDIA                          3                    1                 -0.0119747   -0.1123803    0.0884310
15-18 months   CMC-V-BCS-2002   INDIA                          4                    1                  0.0172535   -0.0955876    0.1300946
15-18 months   CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CMIN             BANGLADESH                     2                    1                  0.0475982    0.0048972    0.0902992
15-18 months   CMIN             BANGLADESH                     3                    1                  0.0277777   -0.0199923    0.0755477
15-18 months   CMIN             BANGLADESH                     4                    1                  0.0838628   -0.0007425    0.1684681
15-18 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          2                    1                  0.0157385   -0.0205778    0.0520548
15-18 months   GMS-Nepal        NEPAL                          3                    1                  0.0159224   -0.0284511    0.0602959
15-18 months   GMS-Nepal        NEPAL                          4                    1                  0.0023554   -0.0452309    0.0499418
15-18 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         2                    1                  0.0002824   -0.0386907    0.0392555
15-18 months   Keneba           GAMBIA                         3                    1                 -0.0208472   -0.0570942    0.0153997
15-18 months   Keneba           GAMBIA                         4                    1                 -0.0194066   -0.0561879    0.0173747
15-18 months   MAL-ED           NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          2                    1                 -0.0665167   -0.1756328    0.0425995
15-18 months   MAL-ED           NEPAL                          3                    1                 -0.0385437   -0.1323984    0.0553111
15-18 months   MAL-ED           NEPAL                          4                    1                 -0.0751591   -0.1626857    0.0123675
15-18 months   MAL-ED           SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   2                    1                 -0.0304941   -0.1585090    0.0975207
15-18 months   MAL-ED           SOUTH AFRICA                   3                    1                 -0.0446541   -0.1395005    0.0501923
15-18 months   MAL-ED           SOUTH AFRICA                   4                    1                 -0.0206920   -0.1017977    0.0604137
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0293027   -0.0875572    0.1461627
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0159032   -0.1393130    0.1075065
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0515503   -0.0634789    0.1665794
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2                    1                  0.0157955   -0.0113497    0.0429407
15-18 months   PROVIDE          BANGLADESH                     3                    1                 -0.0069738   -0.0341405    0.0201928
15-18 months   PROVIDE          BANGLADESH                     4                    1                  0.0042024   -0.0233627    0.0317675
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0000911   -0.0481266    0.0483088
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0292877   -0.0149823    0.0735578
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0415055    0.0015601    0.0814509
18-21 months   CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          2                    1                  0.0303108   -0.0254130    0.0860346
18-21 months   CMC-V-BCS-2002   INDIA                          3                    1                  0.0513752   -0.0107870    0.1135373
18-21 months   CMC-V-BCS-2002   INDIA                          4                    1                  0.0889818   -0.0147056    0.1926691
18-21 months   CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CMIN             BANGLADESH                     2                    1                 -0.0038273   -0.0401084    0.0324537
18-21 months   CMIN             BANGLADESH                     3                    1                  0.0549270    0.0096956    0.1001583
18-21 months   CMIN             BANGLADESH                     4                    1                  0.0018860   -0.0747116    0.0784836
18-21 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          2                    1                  0.0312056   -0.0002771    0.0626883
18-21 months   GMS-Nepal        NEPAL                          3                    1                 -0.0239887   -0.0583450    0.0103677
18-21 months   GMS-Nepal        NEPAL                          4                    1                 -0.0504341   -0.1524423    0.0515741
18-21 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         2                    1                 -0.0182295   -0.0573219    0.0208628
18-21 months   Keneba           GAMBIA                         3                    1                 -0.0155742   -0.0534990    0.0223506
18-21 months   Keneba           GAMBIA                         4                    1                 -0.0182204   -0.0586169    0.0221761
18-21 months   MAL-ED           NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          2                    1                  0.0283884   -0.0402169    0.0969937
18-21 months   MAL-ED           NEPAL                          3                    1                 -0.0187469   -0.0798776    0.0423839
18-21 months   MAL-ED           NEPAL                          4                    1                 -0.0001011   -0.0561002    0.0558981
18-21 months   MAL-ED           PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           2                    1                  0.0319584   -0.0492698    0.1131867
18-21 months   MAL-ED           PERU                           3                    1                  0.0532045   -0.0210400    0.1274490
18-21 months   MAL-ED           PERU                           4                    1                  0.1100907    0.0309958    0.1891856
18-21 months   MAL-ED           SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   2                    1                 -0.0565129   -0.1619239    0.0488981
18-21 months   MAL-ED           SOUTH AFRICA                   3                    1                  0.0262053   -0.0826650    0.1350757
18-21 months   MAL-ED           SOUTH AFRICA                   4                    1                  0.0654283   -0.0354357    0.1662924
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2153548   -0.0029019    0.4336115
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1661792    0.0112326    0.3211257
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    1                  0.2027274    0.0417013    0.3637536
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2                    1                  0.0034112   -0.0245407    0.0313631
18-21 months   PROVIDE          BANGLADESH                     3                    1                 -0.0153349   -0.0427029    0.0120332
18-21 months   PROVIDE          BANGLADESH                     4                    1                  0.0173333   -0.0091048    0.0437714
21-24 months   CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          2                    1                  0.0133029   -0.0571252    0.0837310
21-24 months   CMC-V-BCS-2002   INDIA                          3                    1                  0.0358949   -0.0328449    0.1046348
21-24 months   CMC-V-BCS-2002   INDIA                          4                    1                  0.0443268   -0.0592301    0.1478837
21-24 months   CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   CMIN             BANGLADESH                     2                    1                 -0.0147687   -0.0548817    0.0253444
21-24 months   CMIN             BANGLADESH                     3                    1                  0.0482006   -0.0064697    0.1028710
21-24 months   CMIN             BANGLADESH                     4                    1                  0.0876784    0.0125705    0.1627862
21-24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          2                    1                 -0.0186284   -0.0676470    0.0303902
21-24 months   GMS-Nepal        NEPAL                          3                    1                 -0.0397221   -0.0988887    0.0194445
21-24 months   GMS-Nepal        NEPAL                          4                    1                  0.0314950   -0.0581535    0.1211435
21-24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         2                    1                  0.0096567   -0.0331434    0.0524569
21-24 months   Keneba           GAMBIA                         3                    1                  0.0029698   -0.0408161    0.0467556
21-24 months   Keneba           GAMBIA                         4                    1                  0.0049876   -0.0378930    0.0478682
21-24 months   MAL-ED           NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          2                    1                 -0.0193507   -0.0937866    0.0550851
21-24 months   MAL-ED           NEPAL                          3                    1                  0.0951630   -0.0230418    0.2133677
21-24 months   MAL-ED           NEPAL                          4                    1                 -0.0164620   -0.0871365    0.0542125
21-24 months   MAL-ED           PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           2                    1                  0.0197451   -0.0486858    0.0881760
21-24 months   MAL-ED           PERU                           3                    1                  0.0478052   -0.0165297    0.1121401
21-24 months   MAL-ED           PERU                           4                    1                  0.0757566    0.0188969    0.1326163
21-24 months   MAL-ED           SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   2                    1                 -0.0261519   -0.1310306    0.0787268
21-24 months   MAL-ED           SOUTH AFRICA                   3                    1                 -0.0087669   -0.1093543    0.0918206
21-24 months   MAL-ED           SOUTH AFRICA                   4                    1                  0.0021340   -0.0862641    0.0905322
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0389127   -0.0550396    0.1328650
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0382398   -0.1233193    0.0468398
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0355914   -0.1518929    0.0807102
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2                    1                  0.0035757   -0.0235603    0.0307117
21-24 months   PROVIDE          BANGLADESH                     3                    1                 -0.0154602   -0.0457585    0.0148381
21-24 months   PROVIDE          BANGLADESH                     4                    1                  0.0261233   -0.0070617    0.0593083


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                 0.0585873   -0.0321843   0.1493589
3-6 months     CMIN             BANGLADESH                     1                    NA                 0.0366923   -0.0054839   0.0788685
3-6 months     GMS-Nepal        NEPAL                          1                    NA                 0.0439197    0.0171027   0.0707367
3-6 months     Keneba           GAMBIA                         1                    NA                 0.0452516    0.0069247   0.0835784
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                 0.2277238   -0.0404628   0.4959104
3-6 months     PROVIDE          BANGLADESH                     1                    NA                 0.0310331    0.0081921   0.0538741
3-6 months     ResPak           PAKISTAN                       1                    NA                 0.1122413    0.0149339   0.2095487
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0249705   -0.0063574   0.0562985
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.0385516   -0.1172858   0.0401826
6-9 months     CMIN             BANGLADESH                     1                    NA                 0.0230318   -0.0065562   0.0526197
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0080947   -0.0402332   0.0240438
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                -0.0089807   -0.0434688   0.0255073
6-9 months     Keneba           GAMBIA                         1                    NA                 0.0590397    0.0065845   0.1114949
6-9 months     MAL-ED           NEPAL                          1                    NA                 0.0066142   -0.0708621   0.0840905
6-9 months     MAL-ED           PERU                           1                    NA                -0.0595302   -0.1341482   0.0150877
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                 0.0167728   -0.0644682   0.0980138
6-9 months     ResPak           PAKISTAN                       1                    NA                 0.0674157   -0.0026410   0.1374723
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0355312    0.0086793   0.0623831
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                 0.0615381   -0.0089192   0.1319954
9-12 months    CMIN             BANGLADESH                     1                    NA                 0.0476854    0.0214813   0.0738894
9-12 months    GMS-Nepal        NEPAL                          1                    NA                 0.0149806   -0.0109658   0.0409269
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                 0.0289272    0.0015195   0.0563349
9-12 months    Keneba           GAMBIA                         1                    NA                 0.0184371   -0.0204618   0.0573360
9-12 months    MAL-ED           PERU                           1                    NA                 0.0273698   -0.0306565   0.0853962
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.0377645   -0.0835621   0.1590911
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1018899   -0.0575269   0.2613067
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0040162   -0.0659188   0.0578865
9-12 months    ResPak           PAKISTAN                       1                    NA                 0.0774549   -0.0102514   0.1651612
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0185458   -0.0086678   0.0457594
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0719137    0.0154711   0.1283564
12-15 months   CMIN             BANGLADESH                     1                    NA                 0.0236163   -0.0002140   0.0474467
12-15 months   GMS-Nepal        NEPAL                          1                    NA                 0.0029490   -0.0115392   0.0174371
12-15 months   Guatemala BSC    GUATEMALA                      1                    NA                -0.0021567   -0.0541411   0.0498276
12-15 months   Keneba           GAMBIA                         1                    NA                 0.0136718   -0.0120351   0.0393788
12-15 months   MAL-ED           NEPAL                          1                    NA                 0.0166536   -0.0311512   0.0644584
12-15 months   MAL-ED           PERU                           1                    NA                 0.0270861   -0.0749104   0.1290826
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0141280   -0.0807244   0.0524685
12-15 months   PROVIDE          BANGLADESH                     1                    NA                 0.0142894   -0.0036583   0.0322371
12-15 months   ResPak           PAKISTAN                       1                    NA                 0.0328287   -0.0516528   0.1173101
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0060102   -0.0245351   0.0365555
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0228019   -0.1069367   0.0613329
15-18 months   CMIN             BANGLADESH                     1                    NA                 0.0306397    0.0067875   0.0544918
15-18 months   GMS-Nepal        NEPAL                          1                    NA                 0.0084743   -0.0124654   0.0294140
15-18 months   Keneba           GAMBIA                         1                    NA                -0.0099266   -0.0331258   0.0132727
15-18 months   MAL-ED           NEPAL                          1                    NA                -0.0514418   -0.1215642   0.0186807
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0255193   -0.0917372   0.0406985
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0209803   -0.0652422   0.1072028
15-18 months   PROVIDE          BANGLADESH                     1                    NA                 0.0033171   -0.0119439   0.0185780
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0224590   -0.0052436   0.0501617
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0368615   -0.0071734   0.0808964
18-21 months   CMIN             BANGLADESH                     1                    NA                 0.0107630   -0.0086915   0.0302176
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0023171   -0.0186216   0.0232559
18-21 months   Keneba           GAMBIA                         1                    NA                -0.0127071   -0.0350402   0.0096261
18-21 months   MAL-ED           NEPAL                          1                    NA                 0.0052240   -0.0321766   0.0426245
18-21 months   MAL-ED           PERU                           1                    NA                 0.0709002    0.0046359   0.1371645
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.0325114   -0.0547837   0.1198064
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1700787    0.0321981   0.3079592
18-21 months   PROVIDE          BANGLADESH                     1                    NA                 0.0016748   -0.0134547   0.0168043
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0216794   -0.0323213   0.0756802
21-24 months   CMIN             BANGLADESH                     1                    NA                 0.0122396   -0.0075662   0.0320454
21-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0112353   -0.0441242   0.0216536
21-24 months   Keneba           GAMBIA                         1                    NA                 0.0043951   -0.0228010   0.0315912
21-24 months   MAL-ED           NEPAL                          1                    NA                 0.0250769   -0.0298399   0.0799938
21-24 months   MAL-ED           PERU                           1                    NA                 0.0520205    0.0044233   0.0996177
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0037770   -0.0819661   0.0744121
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0179886   -0.0975615   0.0615844
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0028390   -0.0124212   0.0180992

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

**Intervention Variable:** lag_WHZ_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        lag_WHZ_quart    ever_stunted   n_cell      n
-------------  ---------------  -----------------------------  --------------  -------------  -------  -----
3-6 months     CMC-V-BCS-2002   INDIA                          1                           0       34    294
3-6 months     CMC-V-BCS-2002   INDIA                          1                           1       20    294
3-6 months     CMC-V-BCS-2002   INDIA                          2                           0       85    294
3-6 months     CMC-V-BCS-2002   INDIA                          2                           1       48    294
3-6 months     CMC-V-BCS-2002   INDIA                          3                           0       72    294
3-6 months     CMC-V-BCS-2002   INDIA                          3                           1       22    294
3-6 months     CMC-V-BCS-2002   INDIA                          4                           0        9    294
3-6 months     CMC-V-BCS-2002   INDIA                          4                           1        4    294
3-6 months     CMIN             BANGLADESH                     1                           0       40    159
3-6 months     CMIN             BANGLADESH                     1                           1       15    159
3-6 months     CMIN             BANGLADESH                     2                           0       43    159
3-6 months     CMIN             BANGLADESH                     2                           1       11    159
3-6 months     CMIN             BANGLADESH                     3                           0       25    159
3-6 months     CMIN             BANGLADESH                     3                           1        9    159
3-6 months     CMIN             BANGLADESH                     4                           0       13    159
3-6 months     CMIN             BANGLADESH                     4                           1        3    159
3-6 months     CONTENT          PERU                           1                           0        0      4
3-6 months     CONTENT          PERU                           1                           1        0      4
3-6 months     CONTENT          PERU                           2                           0        1      4
3-6 months     CONTENT          PERU                           2                           1        0      4
3-6 months     CONTENT          PERU                           3                           0        3      4
3-6 months     CONTENT          PERU                           3                           1        0      4
3-6 months     CONTENT          PERU                           4                           0        0      4
3-6 months     CONTENT          PERU                           4                           1        0      4
3-6 months     EE               PAKISTAN                       1                           0        1      5
3-6 months     EE               PAKISTAN                       1                           1        1      5
3-6 months     EE               PAKISTAN                       2                           0        1      5
3-6 months     EE               PAKISTAN                       2                           1        2      5
3-6 months     EE               PAKISTAN                       3                           0        0      5
3-6 months     EE               PAKISTAN                       3                           1        0      5
3-6 months     EE               PAKISTAN                       4                           0        0      5
3-6 months     EE               PAKISTAN                       4                           1        0      5
3-6 months     GMS-Nepal        NEPAL                          1                           0      100    293
3-6 months     GMS-Nepal        NEPAL                          1                           1       30    293
3-6 months     GMS-Nepal        NEPAL                          2                           0       91    293
3-6 months     GMS-Nepal        NEPAL                          2                           1       20    293
3-6 months     GMS-Nepal        NEPAL                          3                           0       33    293
3-6 months     GMS-Nepal        NEPAL                          3                           1       12    293
3-6 months     GMS-Nepal        NEPAL                          4                           0        5    293
3-6 months     GMS-Nepal        NEPAL                          4                           1        2    293
3-6 months     Guatemala BSC    GUATEMALA                      1                           0        4     63
3-6 months     Guatemala BSC    GUATEMALA                      1                           1        9     63
3-6 months     Guatemala BSC    GUATEMALA                      2                           0       14     63
3-6 months     Guatemala BSC    GUATEMALA                      2                           1        6     63
3-6 months     Guatemala BSC    GUATEMALA                      3                           0        8     63
3-6 months     Guatemala BSC    GUATEMALA                      3                           1        5     63
3-6 months     Guatemala BSC    GUATEMALA                      4                           0       12     63
3-6 months     Guatemala BSC    GUATEMALA                      4                           1        5     63
3-6 months     IRC              INDIA                          1                           0        1      7
3-6 months     IRC              INDIA                          1                           1        1      7
3-6 months     IRC              INDIA                          2                           0        2      7
3-6 months     IRC              INDIA                          2                           1        0      7
3-6 months     IRC              INDIA                          3                           0        2      7
3-6 months     IRC              INDIA                          3                           1        1      7
3-6 months     IRC              INDIA                          4                           0        0      7
3-6 months     IRC              INDIA                          4                           1        0      7
3-6 months     Keneba           GAMBIA                         1                           0      263   1483
3-6 months     Keneba           GAMBIA                         1                           1       69   1483
3-6 months     Keneba           GAMBIA                         2                           0      315   1483
3-6 months     Keneba           GAMBIA                         2                           1       59   1483
3-6 months     Keneba           GAMBIA                         3                           0      363   1483
3-6 months     Keneba           GAMBIA                         3                           1       84   1483
3-6 months     Keneba           GAMBIA                         4                           0      252   1483
3-6 months     Keneba           GAMBIA                         4                           1       78   1483
3-6 months     MAL-ED           INDIA                          1                           0        1      3
3-6 months     MAL-ED           INDIA                          1                           1        0      3
3-6 months     MAL-ED           INDIA                          2                           0        2      3
3-6 months     MAL-ED           INDIA                          2                           1        0      3
3-6 months     MAL-ED           INDIA                          3                           0        0      3
3-6 months     MAL-ED           INDIA                          3                           1        0      3
3-6 months     MAL-ED           INDIA                          4                           0        0      3
3-6 months     MAL-ED           INDIA                          4                           1        0      3
3-6 months     MAL-ED           NEPAL                          1                           0        7     27
3-6 months     MAL-ED           NEPAL                          1                           1        1     27
3-6 months     MAL-ED           NEPAL                          2                           0        9     27
3-6 months     MAL-ED           NEPAL                          2                           1        1     27
3-6 months     MAL-ED           NEPAL                          3                           0        7     27
3-6 months     MAL-ED           NEPAL                          3                           1        0     27
3-6 months     MAL-ED           NEPAL                          4                           0        2     27
3-6 months     MAL-ED           NEPAL                          4                           1        0     27
3-6 months     MAL-ED           PERU                           1                           0        1     56
3-6 months     MAL-ED           PERU                           1                           1        0     56
3-6 months     MAL-ED           PERU                           2                           0        3     56
3-6 months     MAL-ED           PERU                           2                           1        1     56
3-6 months     MAL-ED           PERU                           3                           0       12     56
3-6 months     MAL-ED           PERU                           3                           1        4     56
3-6 months     MAL-ED           PERU                           4                           0       27     56
3-6 months     MAL-ED           PERU                           4                           1        8     56
3-6 months     MAL-ED           SOUTH AFRICA                   1                           0        7     72
3-6 months     MAL-ED           SOUTH AFRICA                   1                           1        1     72
3-6 months     MAL-ED           SOUTH AFRICA                   2                           0       14     72
3-6 months     MAL-ED           SOUTH AFRICA                   2                           1        4     72
3-6 months     MAL-ED           SOUTH AFRICA                   3                           0       14     72
3-6 months     MAL-ED           SOUTH AFRICA                   3                           1        4     72
3-6 months     MAL-ED           SOUTH AFRICA                   4                           0       17     72
3-6 months     MAL-ED           SOUTH AFRICA                   4                           1       11     72
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0        0     24
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        2     24
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           0        4     24
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           1        1     24
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           0        4     24
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           1        2     24
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           0        6     24
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           1        5     24
3-6 months     PROVIDE          BANGLADESH                     1                           0      143    444
3-6 months     PROVIDE          BANGLADESH                     1                           1       29    444
3-6 months     PROVIDE          BANGLADESH                     2                           0      112    444
3-6 months     PROVIDE          BANGLADESH                     2                           1       17    444
3-6 months     PROVIDE          BANGLADESH                     3                           0       90    444
3-6 months     PROVIDE          BANGLADESH                     3                           1       17    444
3-6 months     PROVIDE          BANGLADESH                     4                           0       27    444
3-6 months     PROVIDE          BANGLADESH                     4                           1        9    444
3-6 months     ResPak           PAKISTAN                       1                           0       52    192
3-6 months     ResPak           PAKISTAN                       1                           1       17    192
3-6 months     ResPak           PAKISTAN                       2                           0       24    192
3-6 months     ResPak           PAKISTAN                       2                           1       10    192
3-6 months     ResPak           PAKISTAN                       3                           0       24    192
3-6 months     ResPak           PAKISTAN                       3                           1       14    192
3-6 months     ResPak           PAKISTAN                       4                           0       15    192
3-6 months     ResPak           PAKISTAN                       4                           1       36    192
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      416   2082
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       54   2082
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      389   2082
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       48   2082
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      436   2082
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       58   2082
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      579   2082
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1      102   2082
6-9 months     CMC-V-BCS-2002   INDIA                          1                           0       30    213
6-9 months     CMC-V-BCS-2002   INDIA                          1                           1       12    213
6-9 months     CMC-V-BCS-2002   INDIA                          2                           0       74    213
6-9 months     CMC-V-BCS-2002   INDIA                          2                           1       22    213
6-9 months     CMC-V-BCS-2002   INDIA                          3                           0       44    213
6-9 months     CMC-V-BCS-2002   INDIA                          3                           1       21    213
6-9 months     CMC-V-BCS-2002   INDIA                          4                           0        8    213
6-9 months     CMC-V-BCS-2002   INDIA                          4                           1        2    213
6-9 months     CMIN             BANGLADESH                     1                           0       44    121
6-9 months     CMIN             BANGLADESH                     1                           1       11    121
6-9 months     CMIN             BANGLADESH                     2                           0       26    121
6-9 months     CMIN             BANGLADESH                     2                           1        4    121
6-9 months     CMIN             BANGLADESH                     3                           0       22    121
6-9 months     CMIN             BANGLADESH                     3                           1        3    121
6-9 months     CMIN             BANGLADESH                     4                           0        9    121
6-9 months     CMIN             BANGLADESH                     4                           1        2    121
6-9 months     CONTENT          PERU                           1                           0        0      1
6-9 months     CONTENT          PERU                           1                           1        0      1
6-9 months     CONTENT          PERU                           2                           0        0      1
6-9 months     CONTENT          PERU                           2                           1        0      1
6-9 months     CONTENT          PERU                           3                           0        1      1
6-9 months     CONTENT          PERU                           3                           1        0      1
6-9 months     CONTENT          PERU                           4                           0        0      1
6-9 months     CONTENT          PERU                           4                           1        0      1
6-9 months     EE               PAKISTAN                       1                           0        0      1
6-9 months     EE               PAKISTAN                       1                           1        0      1
6-9 months     EE               PAKISTAN                       2                           0        1      1
6-9 months     EE               PAKISTAN                       2                           1        0      1
6-9 months     EE               PAKISTAN                       3                           0        0      1
6-9 months     EE               PAKISTAN                       3                           1        0      1
6-9 months     EE               PAKISTAN                       4                           0        0      1
6-9 months     EE               PAKISTAN                       4                           1        0      1
6-9 months     GMS-Nepal        NEPAL                          1                           0       70    250
6-9 months     GMS-Nepal        NEPAL                          1                           1       17    250
6-9 months     GMS-Nepal        NEPAL                          2                           0       79    250
6-9 months     GMS-Nepal        NEPAL                          2                           1       20    250
6-9 months     GMS-Nepal        NEPAL                          3                           0       46    250
6-9 months     GMS-Nepal        NEPAL                          3                           1        8    250
6-9 months     GMS-Nepal        NEPAL                          4                           0        8    250
6-9 months     GMS-Nepal        NEPAL                          4                           1        2    250
6-9 months     Guatemala BSC    GUATEMALA                      1                           0       38    201
6-9 months     Guatemala BSC    GUATEMALA                      1                           1       13    201
6-9 months     Guatemala BSC    GUATEMALA                      2                           0       32    201
6-9 months     Guatemala BSC    GUATEMALA                      2                           1       23    201
6-9 months     Guatemala BSC    GUATEMALA                      3                           0       31    201
6-9 months     Guatemala BSC    GUATEMALA                      3                           1       16    201
6-9 months     Guatemala BSC    GUATEMALA                      4                           0       41    201
6-9 months     Guatemala BSC    GUATEMALA                      4                           1        7    201
6-9 months     IRC              INDIA                          1                           0        0      2
6-9 months     IRC              INDIA                          1                           1        0      2
6-9 months     IRC              INDIA                          2                           0        0      2
6-9 months     IRC              INDIA                          2                           1        0      2
6-9 months     IRC              INDIA                          3                           0        0      2
6-9 months     IRC              INDIA                          3                           1        0      2
6-9 months     IRC              INDIA                          4                           0        2      2
6-9 months     IRC              INDIA                          4                           1        0      2
6-9 months     Keneba           GAMBIA                         1                           0      208   1152
6-9 months     Keneba           GAMBIA                         1                           1       30   1152
6-9 months     Keneba           GAMBIA                         2                           0      264   1152
6-9 months     Keneba           GAMBIA                         2                           1       36   1152
6-9 months     Keneba           GAMBIA                         3                           0      288   1152
6-9 months     Keneba           GAMBIA                         3                           1       36   1152
6-9 months     Keneba           GAMBIA                         4                           0      252   1152
6-9 months     Keneba           GAMBIA                         4                           1       38   1152
6-9 months     MAL-ED           BRAZIL                         1                           0        1      1
6-9 months     MAL-ED           BRAZIL                         1                           1        0      1
6-9 months     MAL-ED           BRAZIL                         2                           0        0      1
6-9 months     MAL-ED           BRAZIL                         2                           1        0      1
6-9 months     MAL-ED           BRAZIL                         3                           0        0      1
6-9 months     MAL-ED           BRAZIL                         3                           1        0      1
6-9 months     MAL-ED           BRAZIL                         4                           0        0      1
6-9 months     MAL-ED           BRAZIL                         4                           1        0      1
6-9 months     MAL-ED           INDIA                          1                           0        2      4
6-9 months     MAL-ED           INDIA                          1                           1        1      4
6-9 months     MAL-ED           INDIA                          2                           0        1      4
6-9 months     MAL-ED           INDIA                          2                           1        0      4
6-9 months     MAL-ED           INDIA                          3                           0        0      4
6-9 months     MAL-ED           INDIA                          3                           1        0      4
6-9 months     MAL-ED           INDIA                          4                           0        0      4
6-9 months     MAL-ED           INDIA                          4                           1        0      4
6-9 months     MAL-ED           NEPAL                          1                           0        7     22
6-9 months     MAL-ED           NEPAL                          1                           1        0     22
6-9 months     MAL-ED           NEPAL                          2                           0        1     22
6-9 months     MAL-ED           NEPAL                          2                           1        1     22
6-9 months     MAL-ED           NEPAL                          3                           0        8     22
6-9 months     MAL-ED           NEPAL                          3                           1        0     22
6-9 months     MAL-ED           NEPAL                          4                           0        5     22
6-9 months     MAL-ED           NEPAL                          4                           1        0     22
6-9 months     MAL-ED           PERU                           1                           0        3     35
6-9 months     MAL-ED           PERU                           1                           1        0     35
6-9 months     MAL-ED           PERU                           2                           0        4     35
6-9 months     MAL-ED           PERU                           2                           1        0     35
6-9 months     MAL-ED           PERU                           3                           0        5     35
6-9 months     MAL-ED           PERU                           3                           1        3     35
6-9 months     MAL-ED           PERU                           4                           0       16     35
6-9 months     MAL-ED           PERU                           4                           1        4     35
6-9 months     MAL-ED           SOUTH AFRICA                   1                           0        6     45
6-9 months     MAL-ED           SOUTH AFRICA                   1                           1        1     45
6-9 months     MAL-ED           SOUTH AFRICA                   2                           0        8     45
6-9 months     MAL-ED           SOUTH AFRICA                   2                           1        4     45
6-9 months     MAL-ED           SOUTH AFRICA                   3                           0       13     45
6-9 months     MAL-ED           SOUTH AFRICA                   3                           1        1     45
6-9 months     MAL-ED           SOUTH AFRICA                   4                           0       12     45
6-9 months     MAL-ED           SOUTH AFRICA                   4                           1        0     45
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0        2     23
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0     23
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           0        7     23
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           1        1     23
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           0        2     23
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           1        1     23
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           0        5     23
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           1        5     23
6-9 months     PROVIDE          BANGLADESH                     1                           0        4     24
6-9 months     PROVIDE          BANGLADESH                     1                           1        2     24
6-9 months     PROVIDE          BANGLADESH                     2                           0        6     24
6-9 months     PROVIDE          BANGLADESH                     2                           1        0     24
6-9 months     PROVIDE          BANGLADESH                     3                           0        6     24
6-9 months     PROVIDE          BANGLADESH                     3                           1        1     24
6-9 months     PROVIDE          BANGLADESH                     4                           0        5     24
6-9 months     PROVIDE          BANGLADESH                     4                           1        0     24
6-9 months     ResPak           PAKISTAN                       1                           0       38    101
6-9 months     ResPak           PAKISTAN                       1                           1        6    101
6-9 months     ResPak           PAKISTAN                       2                           0       17    101
6-9 months     ResPak           PAKISTAN                       2                           1        2    101
6-9 months     ResPak           PAKISTAN                       3                           0       21    101
6-9 months     ResPak           PAKISTAN                       3                           1        2    101
6-9 months     ResPak           PAKISTAN                       4                           0       12    101
6-9 months     ResPak           PAKISTAN                       4                           1        3    101
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      365   1679
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       61   1679
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      284   1679
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       46   1679
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      386   1679
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       48   1679
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      447   1679
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       42   1679
9-12 months    CMC-V-BCS-2002   INDIA                          1                           0       11    173
9-12 months    CMC-V-BCS-2002   INDIA                          1                           1        8    173
9-12 months    CMC-V-BCS-2002   INDIA                          2                           0       47    173
9-12 months    CMC-V-BCS-2002   INDIA                          2                           1       21    173
9-12 months    CMC-V-BCS-2002   INDIA                          3                           0       46    173
9-12 months    CMC-V-BCS-2002   INDIA                          3                           1       25    173
9-12 months    CMC-V-BCS-2002   INDIA                          4                           0       12    173
9-12 months    CMC-V-BCS-2002   INDIA                          4                           1        3    173
9-12 months    CMIN             BANGLADESH                     1                           0       24    104
9-12 months    CMIN             BANGLADESH                     1                           1       14    104
9-12 months    CMIN             BANGLADESH                     2                           0       25    104
9-12 months    CMIN             BANGLADESH                     2                           1        6    104
9-12 months    CMIN             BANGLADESH                     3                           0       20    104
9-12 months    CMIN             BANGLADESH                     3                           1        5    104
9-12 months    CMIN             BANGLADESH                     4                           0        9    104
9-12 months    CMIN             BANGLADESH                     4                           1        1    104
9-12 months    CONTENT          PERU                           1                           0        0      2
9-12 months    CONTENT          PERU                           1                           1        0      2
9-12 months    CONTENT          PERU                           2                           0        0      2
9-12 months    CONTENT          PERU                           2                           1        0      2
9-12 months    CONTENT          PERU                           3                           0        2      2
9-12 months    CONTENT          PERU                           3                           1        0      2
9-12 months    CONTENT          PERU                           4                           0        0      2
9-12 months    CONTENT          PERU                           4                           1        0      2
9-12 months    EE               PAKISTAN                       1                           0        0      1
9-12 months    EE               PAKISTAN                       1                           1        0      1
9-12 months    EE               PAKISTAN                       2                           0        0      1
9-12 months    EE               PAKISTAN                       2                           1        0      1
9-12 months    EE               PAKISTAN                       3                           0        1      1
9-12 months    EE               PAKISTAN                       3                           1        0      1
9-12 months    EE               PAKISTAN                       4                           0        0      1
9-12 months    EE               PAKISTAN                       4                           1        0      1
9-12 months    GMS-Nepal        NEPAL                          1                           0       61    224
9-12 months    GMS-Nepal        NEPAL                          1                           1       13    224
9-12 months    GMS-Nepal        NEPAL                          2                           0       72    224
9-12 months    GMS-Nepal        NEPAL                          2                           1       17    224
9-12 months    GMS-Nepal        NEPAL                          3                           0       37    224
9-12 months    GMS-Nepal        NEPAL                          3                           1       10    224
9-12 months    GMS-Nepal        NEPAL                          4                           0       13    224
9-12 months    GMS-Nepal        NEPAL                          4                           1        1    224
9-12 months    Guatemala BSC    GUATEMALA                      1                           0       16    133
9-12 months    Guatemala BSC    GUATEMALA                      1                           1       10    133
9-12 months    Guatemala BSC    GUATEMALA                      2                           0       24    133
9-12 months    Guatemala BSC    GUATEMALA                      2                           1       10    133
9-12 months    Guatemala BSC    GUATEMALA                      3                           0       21    133
9-12 months    Guatemala BSC    GUATEMALA                      3                           1       12    133
9-12 months    Guatemala BSC    GUATEMALA                      4                           0       34    133
9-12 months    Guatemala BSC    GUATEMALA                      4                           1        6    133
9-12 months    IRC              INDIA                          1                           0        1      5
9-12 months    IRC              INDIA                          1                           1        0      5
9-12 months    IRC              INDIA                          2                           0        2      5
9-12 months    IRC              INDIA                          2                           1        0      5
9-12 months    IRC              INDIA                          3                           0        1      5
9-12 months    IRC              INDIA                          3                           1        0      5
9-12 months    IRC              INDIA                          4                           0        1      5
9-12 months    IRC              INDIA                          4                           1        0      5
9-12 months    Keneba           GAMBIA                         1                           0      204   1018
9-12 months    Keneba           GAMBIA                         1                           1       42   1018
9-12 months    Keneba           GAMBIA                         2                           0      223   1018
9-12 months    Keneba           GAMBIA                         2                           1       28   1018
9-12 months    Keneba           GAMBIA                         3                           0      261   1018
9-12 months    Keneba           GAMBIA                         3                           1       23   1018
9-12 months    Keneba           GAMBIA                         4                           0      217   1018
9-12 months    Keneba           GAMBIA                         4                           1       20   1018
9-12 months    MAL-ED           BRAZIL                         1                           0        0      3
9-12 months    MAL-ED           BRAZIL                         1                           1        0      3
9-12 months    MAL-ED           BRAZIL                         2                           0        1      3
9-12 months    MAL-ED           BRAZIL                         2                           1        0      3
9-12 months    MAL-ED           BRAZIL                         3                           0        1      3
9-12 months    MAL-ED           BRAZIL                         3                           1        0      3
9-12 months    MAL-ED           BRAZIL                         4                           0        1      3
9-12 months    MAL-ED           BRAZIL                         4                           1        0      3
9-12 months    MAL-ED           INDIA                          1                           0        2      5
9-12 months    MAL-ED           INDIA                          1                           1        0      5
9-12 months    MAL-ED           INDIA                          2                           0        2      5
9-12 months    MAL-ED           INDIA                          2                           1        0      5
9-12 months    MAL-ED           INDIA                          3                           0        1      5
9-12 months    MAL-ED           INDIA                          3                           1        0      5
9-12 months    MAL-ED           INDIA                          4                           0        0      5
9-12 months    MAL-ED           INDIA                          4                           1        0      5
9-12 months    MAL-ED           NEPAL                          1                           0        2     22
9-12 months    MAL-ED           NEPAL                          1                           1        1     22
9-12 months    MAL-ED           NEPAL                          2                           0        7     22
9-12 months    MAL-ED           NEPAL                          2                           1        0     22
9-12 months    MAL-ED           NEPAL                          3                           0        5     22
9-12 months    MAL-ED           NEPAL                          3                           1        0     22
9-12 months    MAL-ED           NEPAL                          4                           0        7     22
9-12 months    MAL-ED           NEPAL                          4                           1        0     22
9-12 months    MAL-ED           PERU                           1                           0        2     40
9-12 months    MAL-ED           PERU                           1                           1        0     40
9-12 months    MAL-ED           PERU                           2                           0        5     40
9-12 months    MAL-ED           PERU                           2                           1        0     40
9-12 months    MAL-ED           PERU                           3                           0        8     40
9-12 months    MAL-ED           PERU                           3                           1        3     40
9-12 months    MAL-ED           PERU                           4                           0       19     40
9-12 months    MAL-ED           PERU                           4                           1        3     40
9-12 months    MAL-ED           SOUTH AFRICA                   1                           0        4     38
9-12 months    MAL-ED           SOUTH AFRICA                   1                           1        1     38
9-12 months    MAL-ED           SOUTH AFRICA                   2                           0        6     38
9-12 months    MAL-ED           SOUTH AFRICA                   2                           1        0     38
9-12 months    MAL-ED           SOUTH AFRICA                   3                           0       10     38
9-12 months    MAL-ED           SOUTH AFRICA                   3                           1        1     38
9-12 months    MAL-ED           SOUTH AFRICA                   4                           0       14     38
9-12 months    MAL-ED           SOUTH AFRICA                   4                           1        2     38
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0        2     31
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        1     31
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           0        4     31
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           1        2     31
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           0        6     31
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           1        4     31
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           0        9     31
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           1        3     31
9-12 months    PROVIDE          BANGLADESH                     1                           0        6     34
9-12 months    PROVIDE          BANGLADESH                     1                           1        4     34
9-12 months    PROVIDE          BANGLADESH                     2                           0        4     34
9-12 months    PROVIDE          BANGLADESH                     2                           1        0     34
9-12 months    PROVIDE          BANGLADESH                     3                           0        7     34
9-12 months    PROVIDE          BANGLADESH                     3                           1        2     34
9-12 months    PROVIDE          BANGLADESH                     4                           0       10     34
9-12 months    PROVIDE          BANGLADESH                     4                           1        1     34
9-12 months    ResPak           PAKISTAN                       1                           0       33     85
9-12 months    ResPak           PAKISTAN                       1                           1        0     85
9-12 months    ResPak           PAKISTAN                       2                           0       19     85
9-12 months    ResPak           PAKISTAN                       2                           1        2     85
9-12 months    ResPak           PAKISTAN                       3                           0       16     85
9-12 months    ResPak           PAKISTAN                       3                           1        1     85
9-12 months    ResPak           PAKISTAN                       4                           0       13     85
9-12 months    ResPak           PAKISTAN                       4                           1        1     85
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      247   1288
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       36   1288
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      248   1288
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       28   1288
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      269   1288
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       32   1288
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      400   1288
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       28   1288
12-15 months   CMC-V-BCS-2002   INDIA                          1                           0        7    134
12-15 months   CMC-V-BCS-2002   INDIA                          1                           1        3    134
12-15 months   CMC-V-BCS-2002   INDIA                          2                           0       30    134
12-15 months   CMC-V-BCS-2002   INDIA                          2                           1       22    134
12-15 months   CMC-V-BCS-2002   INDIA                          3                           0       38    134
12-15 months   CMC-V-BCS-2002   INDIA                          3                           1       17    134
12-15 months   CMC-V-BCS-2002   INDIA                          4                           0       11    134
12-15 months   CMC-V-BCS-2002   INDIA                          4                           1        6    134
12-15 months   CMIN             BANGLADESH                     1                           0       17     89
12-15 months   CMIN             BANGLADESH                     1                           1       10     89
12-15 months   CMIN             BANGLADESH                     2                           0       20     89
12-15 months   CMIN             BANGLADESH                     2                           1        9     89
12-15 months   CMIN             BANGLADESH                     3                           0       15     89
12-15 months   CMIN             BANGLADESH                     3                           1        6     89
12-15 months   CMIN             BANGLADESH                     4                           0       12     89
12-15 months   CMIN             BANGLADESH                     4                           1        0     89
12-15 months   EE               PAKISTAN                       1                           0        0      1
12-15 months   EE               PAKISTAN                       1                           1        0      1
12-15 months   EE               PAKISTAN                       2                           0        0      1
12-15 months   EE               PAKISTAN                       2                           1        0      1
12-15 months   EE               PAKISTAN                       3                           0        0      1
12-15 months   EE               PAKISTAN                       3                           1        0      1
12-15 months   EE               PAKISTAN                       4                           0        1      1
12-15 months   EE               PAKISTAN                       4                           1        0      1
12-15 months   GMS-Nepal        NEPAL                          1                           0       62    195
12-15 months   GMS-Nepal        NEPAL                          1                           1       19    195
12-15 months   GMS-Nepal        NEPAL                          2                           0       51    195
12-15 months   GMS-Nepal        NEPAL                          2                           1       15    195
12-15 months   GMS-Nepal        NEPAL                          3                           0       29    195
12-15 months   GMS-Nepal        NEPAL                          3                           1        4    195
12-15 months   GMS-Nepal        NEPAL                          4                           0       12    195
12-15 months   GMS-Nepal        NEPAL                          4                           1        3    195
12-15 months   Guatemala BSC    GUATEMALA                      1                           0        7     90
12-15 months   Guatemala BSC    GUATEMALA                      1                           1        2     90
12-15 months   Guatemala BSC    GUATEMALA                      2                           0       16     90
12-15 months   Guatemala BSC    GUATEMALA                      2                           1        7     90
12-15 months   Guatemala BSC    GUATEMALA                      3                           0       16     90
12-15 months   Guatemala BSC    GUATEMALA                      3                           1        4     90
12-15 months   Guatemala BSC    GUATEMALA                      4                           0       35     90
12-15 months   Guatemala BSC    GUATEMALA                      4                           1        3     90
12-15 months   IRC              INDIA                          1                           0        0      3
12-15 months   IRC              INDIA                          1                           1        0      3
12-15 months   IRC              INDIA                          2                           0        2      3
12-15 months   IRC              INDIA                          2                           1        0      3
12-15 months   IRC              INDIA                          3                           0        0      3
12-15 months   IRC              INDIA                          3                           1        0      3
12-15 months   IRC              INDIA                          4                           0        0      3
12-15 months   IRC              INDIA                          4                           1        1      3
12-15 months   Keneba           GAMBIA                         1                           0      142    834
12-15 months   Keneba           GAMBIA                         1                           1       28    834
12-15 months   Keneba           GAMBIA                         2                           0      195    834
12-15 months   Keneba           GAMBIA                         2                           1       27    834
12-15 months   Keneba           GAMBIA                         3                           0      221    834
12-15 months   Keneba           GAMBIA                         3                           1       34    834
12-15 months   Keneba           GAMBIA                         4                           0      168    834
12-15 months   Keneba           GAMBIA                         4                           1       19    834
12-15 months   MAL-ED           BRAZIL                         1                           0        0      5
12-15 months   MAL-ED           BRAZIL                         1                           1        0      5
12-15 months   MAL-ED           BRAZIL                         2                           0        1      5
12-15 months   MAL-ED           BRAZIL                         2                           1        0      5
12-15 months   MAL-ED           BRAZIL                         3                           0        1      5
12-15 months   MAL-ED           BRAZIL                         3                           1        0      5
12-15 months   MAL-ED           BRAZIL                         4                           0        3      5
12-15 months   MAL-ED           BRAZIL                         4                           1        0      5
12-15 months   MAL-ED           INDIA                          1                           0        2      7
12-15 months   MAL-ED           INDIA                          1                           1        0      7
12-15 months   MAL-ED           INDIA                          2                           0        4      7
12-15 months   MAL-ED           INDIA                          2                           1        0      7
12-15 months   MAL-ED           INDIA                          3                           0        1      7
12-15 months   MAL-ED           INDIA                          3                           1        0      7
12-15 months   MAL-ED           INDIA                          4                           0        0      7
12-15 months   MAL-ED           INDIA                          4                           1        0      7
12-15 months   MAL-ED           NEPAL                          1                           0        4     38
12-15 months   MAL-ED           NEPAL                          1                           1        0     38
12-15 months   MAL-ED           NEPAL                          2                           0        9     38
12-15 months   MAL-ED           NEPAL                          2                           1        2     38
12-15 months   MAL-ED           NEPAL                          3                           0       10     38
12-15 months   MAL-ED           NEPAL                          3                           1        1     38
12-15 months   MAL-ED           NEPAL                          4                           0       11     38
12-15 months   MAL-ED           NEPAL                          4                           1        1     38
12-15 months   MAL-ED           PERU                           1                           0        1     31
12-15 months   MAL-ED           PERU                           1                           1        0     31
12-15 months   MAL-ED           PERU                           2                           0        4     31
12-15 months   MAL-ED           PERU                           2                           1        1     31
12-15 months   MAL-ED           PERU                           3                           0        8     31
12-15 months   MAL-ED           PERU                           3                           1        1     31
12-15 months   MAL-ED           PERU                           4                           0       11     31
12-15 months   MAL-ED           PERU                           4                           1        5     31
12-15 months   MAL-ED           SOUTH AFRICA                   1                           0        6     54
12-15 months   MAL-ED           SOUTH AFRICA                   1                           1        4     54
12-15 months   MAL-ED           SOUTH AFRICA                   2                           0        4     54
12-15 months   MAL-ED           SOUTH AFRICA                   2                           1        1     54
12-15 months   MAL-ED           SOUTH AFRICA                   3                           0       16     54
12-15 months   MAL-ED           SOUTH AFRICA                   3                           1        3     54
12-15 months   MAL-ED           SOUTH AFRICA                   4                           0       18     54
12-15 months   MAL-ED           SOUTH AFRICA                   4                           1        2     54
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0        0     26
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0     26
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           0        1     26
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           1        3     26
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           0        6     26
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           1        3     26
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           0        8     26
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           1        5     26
12-15 months   PROVIDE          BANGLADESH                     1                           0       63    326
12-15 months   PROVIDE          BANGLADESH                     1                           1        9    326
12-15 months   PROVIDE          BANGLADESH                     2                           0       68    326
12-15 months   PROVIDE          BANGLADESH                     2                           1        9    326
12-15 months   PROVIDE          BANGLADESH                     3                           0       91    326
12-15 months   PROVIDE          BANGLADESH                     3                           1        6    326
12-15 months   PROVIDE          BANGLADESH                     4                           0       77    326
12-15 months   PROVIDE          BANGLADESH                     4                           1        3    326
12-15 months   ResPak           PAKISTAN                       1                           0       31     67
12-15 months   ResPak           PAKISTAN                       1                           1        4     67
12-15 months   ResPak           PAKISTAN                       2                           0       14     67
12-15 months   ResPak           PAKISTAN                       2                           1        2     67
12-15 months   ResPak           PAKISTAN                       3                           0        9     67
12-15 months   ResPak           PAKISTAN                       3                           1        0     67
12-15 months   ResPak           PAKISTAN                       4                           0        7     67
12-15 months   ResPak           PAKISTAN                       4                           1        0     67
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      152    945
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       20    945
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      168    945
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       16    945
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      191    945
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       16    945
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      364    945
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       18    945
15-18 months   CMC-V-BCS-2002   INDIA                          1                           0        6    108
15-18 months   CMC-V-BCS-2002   INDIA                          1                           1        3    108
15-18 months   CMC-V-BCS-2002   INDIA                          2                           0       28    108
15-18 months   CMC-V-BCS-2002   INDIA                          2                           1       17    108
15-18 months   CMC-V-BCS-2002   INDIA                          3                           0       20    108
15-18 months   CMC-V-BCS-2002   INDIA                          3                           1       24    108
15-18 months   CMC-V-BCS-2002   INDIA                          4                           0        6    108
15-18 months   CMC-V-BCS-2002   INDIA                          4                           1        4    108
15-18 months   CMIN             BANGLADESH                     1                           0        7     69
15-18 months   CMIN             BANGLADESH                     1                           1        8     69
15-18 months   CMIN             BANGLADESH                     2                           0       17     69
15-18 months   CMIN             BANGLADESH                     2                           1        6     69
15-18 months   CMIN             BANGLADESH                     3                           0       17     69
15-18 months   CMIN             BANGLADESH                     3                           1        4     69
15-18 months   CMIN             BANGLADESH                     4                           0        9     69
15-18 months   CMIN             BANGLADESH                     4                           1        1     69
15-18 months   CONTENT          PERU                           1                           0        1      1
15-18 months   CONTENT          PERU                           1                           1        0      1
15-18 months   CONTENT          PERU                           2                           0        0      1
15-18 months   CONTENT          PERU                           2                           1        0      1
15-18 months   CONTENT          PERU                           3                           0        0      1
15-18 months   CONTENT          PERU                           3                           1        0      1
15-18 months   CONTENT          PERU                           4                           0        0      1
15-18 months   CONTENT          PERU                           4                           1        0      1
15-18 months   EE               PAKISTAN                       1                           0        0      1
15-18 months   EE               PAKISTAN                       1                           1        0      1
15-18 months   EE               PAKISTAN                       2                           0        0      1
15-18 months   EE               PAKISTAN                       2                           1        0      1
15-18 months   EE               PAKISTAN                       3                           0        0      1
15-18 months   EE               PAKISTAN                       3                           1        0      1
15-18 months   EE               PAKISTAN                       4                           0        1      1
15-18 months   EE               PAKISTAN                       4                           1        0      1
15-18 months   GMS-Nepal        NEPAL                          1                           0       39    171
15-18 months   GMS-Nepal        NEPAL                          1                           1       24    171
15-18 months   GMS-Nepal        NEPAL                          2                           0       40    171
15-18 months   GMS-Nepal        NEPAL                          2                           1       23    171
15-18 months   GMS-Nepal        NEPAL                          3                           0       20    171
15-18 months   GMS-Nepal        NEPAL                          3                           1        9    171
15-18 months   GMS-Nepal        NEPAL                          4                           0       13    171
15-18 months   GMS-Nepal        NEPAL                          4                           1        3    171
15-18 months   Guatemala BSC    GUATEMALA                      1                           0        0     26
15-18 months   Guatemala BSC    GUATEMALA                      1                           1        2     26
15-18 months   Guatemala BSC    GUATEMALA                      2                           0        3     26
15-18 months   Guatemala BSC    GUATEMALA                      2                           1        0     26
15-18 months   Guatemala BSC    GUATEMALA                      3                           0        5     26
15-18 months   Guatemala BSC    GUATEMALA                      3                           1        1     26
15-18 months   Guatemala BSC    GUATEMALA                      4                           0       13     26
15-18 months   Guatemala BSC    GUATEMALA                      4                           1        2     26
15-18 months   IRC              INDIA                          1                           0        0      3
15-18 months   IRC              INDIA                          1                           1        0      3
15-18 months   IRC              INDIA                          2                           0        1      3
15-18 months   IRC              INDIA                          2                           1        0      3
15-18 months   IRC              INDIA                          3                           0        1      3
15-18 months   IRC              INDIA                          3                           1        0      3
15-18 months   IRC              INDIA                          4                           0        1      3
15-18 months   IRC              INDIA                          4                           1        0      3
15-18 months   Keneba           GAMBIA                         1                           0      118    757
15-18 months   Keneba           GAMBIA                         1                           1       33    757
15-18 months   Keneba           GAMBIA                         2                           0      165    757
15-18 months   Keneba           GAMBIA                         2                           1       29    757
15-18 months   Keneba           GAMBIA                         3                           0      196    757
15-18 months   Keneba           GAMBIA                         3                           1       29    757
15-18 months   Keneba           GAMBIA                         4                           0      162    757
15-18 months   Keneba           GAMBIA                         4                           1       25    757
15-18 months   MAL-ED           BRAZIL                         1                           0        0      6
15-18 months   MAL-ED           BRAZIL                         1                           1        0      6
15-18 months   MAL-ED           BRAZIL                         2                           0        1      6
15-18 months   MAL-ED           BRAZIL                         2                           1        0      6
15-18 months   MAL-ED           BRAZIL                         3                           0        2      6
15-18 months   MAL-ED           BRAZIL                         3                           1        0      6
15-18 months   MAL-ED           BRAZIL                         4                           0        3      6
15-18 months   MAL-ED           BRAZIL                         4                           1        0      6
15-18 months   MAL-ED           INDIA                          1                           0        0      9
15-18 months   MAL-ED           INDIA                          1                           1        2      9
15-18 months   MAL-ED           INDIA                          2                           0        4      9
15-18 months   MAL-ED           INDIA                          2                           1        0      9
15-18 months   MAL-ED           INDIA                          3                           0        1      9
15-18 months   MAL-ED           INDIA                          3                           1        0      9
15-18 months   MAL-ED           INDIA                          4                           0        2      9
15-18 months   MAL-ED           INDIA                          4                           1        0      9
15-18 months   MAL-ED           NEPAL                          1                           0        3     35
15-18 months   MAL-ED           NEPAL                          1                           1        1     35
15-18 months   MAL-ED           NEPAL                          2                           0        6     35
15-18 months   MAL-ED           NEPAL                          2                           1        2     35
15-18 months   MAL-ED           NEPAL                          3                           0       11     35
15-18 months   MAL-ED           NEPAL                          3                           1        0     35
15-18 months   MAL-ED           NEPAL                          4                           0       12     35
15-18 months   MAL-ED           NEPAL                          4                           1        0     35
15-18 months   MAL-ED           PERU                           1                           0        0     25
15-18 months   MAL-ED           PERU                           1                           1        1     25
15-18 months   MAL-ED           PERU                           2                           0        3     25
15-18 months   MAL-ED           PERU                           2                           1        3     25
15-18 months   MAL-ED           PERU                           3                           0        5     25
15-18 months   MAL-ED           PERU                           3                           1        4     25
15-18 months   MAL-ED           PERU                           4                           0        8     25
15-18 months   MAL-ED           PERU                           4                           1        1     25
15-18 months   MAL-ED           SOUTH AFRICA                   1                           0        4     45
15-18 months   MAL-ED           SOUTH AFRICA                   1                           1        0     45
15-18 months   MAL-ED           SOUTH AFRICA                   2                           0        4     45
15-18 months   MAL-ED           SOUTH AFRICA                   2                           1        0     45
15-18 months   MAL-ED           SOUTH AFRICA                   3                           0       14     45
15-18 months   MAL-ED           SOUTH AFRICA                   3                           1        1     45
15-18 months   MAL-ED           SOUTH AFRICA                   4                           0       20     45
15-18 months   MAL-ED           SOUTH AFRICA                   4                           1        2     45
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0        1     24
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        1     24
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           0        4     24
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           1        1     24
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           0        7     24
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           1        0     24
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           0        9     24
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           1        1     24
15-18 months   PROVIDE          BANGLADESH                     1                           0       42    262
15-18 months   PROVIDE          BANGLADESH                     1                           1        8    262
15-18 months   PROVIDE          BANGLADESH                     2                           0       59    262
15-18 months   PROVIDE          BANGLADESH                     2                           1        8    262
15-18 months   PROVIDE          BANGLADESH                     3                           0       64    262
15-18 months   PROVIDE          BANGLADESH                     3                           1        5    262
15-18 months   PROVIDE          BANGLADESH                     4                           0       74    262
15-18 months   PROVIDE          BANGLADESH                     4                           1        2    262
15-18 months   ResPak           PAKISTAN                       1                           0       16     35
15-18 months   ResPak           PAKISTAN                       1                           1        0     35
15-18 months   ResPak           PAKISTAN                       2                           0        8     35
15-18 months   ResPak           PAKISTAN                       2                           1        1     35
15-18 months   ResPak           PAKISTAN                       3                           0        9     35
15-18 months   ResPak           PAKISTAN                       3                           1        0     35
15-18 months   ResPak           PAKISTAN                       4                           0        1     35
15-18 months   ResPak           PAKISTAN                       4                           1        0     35
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      107    730
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       19    730
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0       90    730
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       16    730
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      156    730
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       19    730
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      301    730
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       22    730
18-21 months   CMC-V-BCS-2002   INDIA                          1                           0        5     74
18-21 months   CMC-V-BCS-2002   INDIA                          1                           1        3     74
18-21 months   CMC-V-BCS-2002   INDIA                          2                           0       15     74
18-21 months   CMC-V-BCS-2002   INDIA                          2                           1        9     74
18-21 months   CMC-V-BCS-2002   INDIA                          3                           0       23     74
18-21 months   CMC-V-BCS-2002   INDIA                          3                           1       12     74
18-21 months   CMC-V-BCS-2002   INDIA                          4                           0        3     74
18-21 months   CMC-V-BCS-2002   INDIA                          4                           1        4     74
18-21 months   CMIN             BANGLADESH                     1                           0        8     55
18-21 months   CMIN             BANGLADESH                     1                           1        3     55
18-21 months   CMIN             BANGLADESH                     2                           0       11     55
18-21 months   CMIN             BANGLADESH                     2                           1        6     55
18-21 months   CMIN             BANGLADESH                     3                           0        9     55
18-21 months   CMIN             BANGLADESH                     3                           1        6     55
18-21 months   CMIN             BANGLADESH                     4                           0        8     55
18-21 months   CMIN             BANGLADESH                     4                           1        4     55
18-21 months   EE               PAKISTAN                       1                           0        0      1
18-21 months   EE               PAKISTAN                       1                           1        0      1
18-21 months   EE               PAKISTAN                       2                           0        0      1
18-21 months   EE               PAKISTAN                       2                           1        0      1
18-21 months   EE               PAKISTAN                       3                           0        1      1
18-21 months   EE               PAKISTAN                       3                           1        0      1
18-21 months   EE               PAKISTAN                       4                           0        0      1
18-21 months   EE               PAKISTAN                       4                           1        0      1
18-21 months   GMS-Nepal        NEPAL                          1                           0       24    138
18-21 months   GMS-Nepal        NEPAL                          1                           1        4    138
18-21 months   GMS-Nepal        NEPAL                          2                           0       44    138
18-21 months   GMS-Nepal        NEPAL                          2                           1        8    138
18-21 months   GMS-Nepal        NEPAL                          3                           0       26    138
18-21 months   GMS-Nepal        NEPAL                          3                           1       14    138
18-21 months   GMS-Nepal        NEPAL                          4                           0       15    138
18-21 months   GMS-Nepal        NEPAL                          4                           1        3    138
18-21 months   IRC              INDIA                          1                           0        1      2
18-21 months   IRC              INDIA                          1                           1        0      2
18-21 months   IRC              INDIA                          2                           0        0      2
18-21 months   IRC              INDIA                          2                           1        0      2
18-21 months   IRC              INDIA                          3                           0        1      2
18-21 months   IRC              INDIA                          3                           1        0      2
18-21 months   IRC              INDIA                          4                           0        0      2
18-21 months   IRC              INDIA                          4                           1        0      2
18-21 months   Keneba           GAMBIA                         1                           0      106    715
18-21 months   Keneba           GAMBIA                         1                           1       25    715
18-21 months   Keneba           GAMBIA                         2                           0      147    715
18-21 months   Keneba           GAMBIA                         2                           1       30    715
18-21 months   Keneba           GAMBIA                         3                           0      171    715
18-21 months   Keneba           GAMBIA                         3                           1       39    715
18-21 months   Keneba           GAMBIA                         4                           0      165    715
18-21 months   Keneba           GAMBIA                         4                           1       32    715
18-21 months   MAL-ED           BRAZIL                         1                           0        1      1
18-21 months   MAL-ED           BRAZIL                         1                           1        0      1
18-21 months   MAL-ED           BRAZIL                         2                           0        0      1
18-21 months   MAL-ED           BRAZIL                         2                           1        0      1
18-21 months   MAL-ED           BRAZIL                         3                           0        0      1
18-21 months   MAL-ED           BRAZIL                         3                           1        0      1
18-21 months   MAL-ED           BRAZIL                         4                           0        0      1
18-21 months   MAL-ED           BRAZIL                         4                           1        0      1
18-21 months   MAL-ED           INDIA                          1                           0        2     10
18-21 months   MAL-ED           INDIA                          1                           1        0     10
18-21 months   MAL-ED           INDIA                          2                           0        2     10
18-21 months   MAL-ED           INDIA                          2                           1        1     10
18-21 months   MAL-ED           INDIA                          3                           0        3     10
18-21 months   MAL-ED           INDIA                          3                           1        0     10
18-21 months   MAL-ED           INDIA                          4                           0        2     10
18-21 months   MAL-ED           INDIA                          4                           1        0     10
18-21 months   MAL-ED           NEPAL                          1                           0        3     28
18-21 months   MAL-ED           NEPAL                          1                           1        0     28
18-21 months   MAL-ED           NEPAL                          2                           0        7     28
18-21 months   MAL-ED           NEPAL                          2                           1        1     28
18-21 months   MAL-ED           NEPAL                          3                           0        7     28
18-21 months   MAL-ED           NEPAL                          3                           1        0     28
18-21 months   MAL-ED           NEPAL                          4                           0        9     28
18-21 months   MAL-ED           NEPAL                          4                           1        1     28
18-21 months   MAL-ED           PERU                           1                           0        0     24
18-21 months   MAL-ED           PERU                           1                           1        0     24
18-21 months   MAL-ED           PERU                           2                           0        4     24
18-21 months   MAL-ED           PERU                           2                           1        2     24
18-21 months   MAL-ED           PERU                           3                           0        4     24
18-21 months   MAL-ED           PERU                           3                           1        3     24
18-21 months   MAL-ED           PERU                           4                           0        9     24
18-21 months   MAL-ED           PERU                           4                           1        2     24
18-21 months   MAL-ED           SOUTH AFRICA                   1                           0        3     50
18-21 months   MAL-ED           SOUTH AFRICA                   1                           1        1     50
18-21 months   MAL-ED           SOUTH AFRICA                   2                           0        4     50
18-21 months   MAL-ED           SOUTH AFRICA                   2                           1        0     50
18-21 months   MAL-ED           SOUTH AFRICA                   3                           0       13     50
18-21 months   MAL-ED           SOUTH AFRICA                   3                           1        1     50
18-21 months   MAL-ED           SOUTH AFRICA                   4                           0       24     50
18-21 months   MAL-ED           SOUTH AFRICA                   4                           1        4     50
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0        2     12
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0     12
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           0        0     12
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           1        2     12
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           0        3     12
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           1        0     12
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           0        5     12
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           1        0     12
18-21 months   PROVIDE          BANGLADESH                     1                           0       37    220
18-21 months   PROVIDE          BANGLADESH                     1                           1        9    220
18-21 months   PROVIDE          BANGLADESH                     2                           0       45    220
18-21 months   PROVIDE          BANGLADESH                     2                           1        4    220
18-21 months   PROVIDE          BANGLADESH                     3                           0       51    220
18-21 months   PROVIDE          BANGLADESH                     3                           1        0    220
18-21 months   PROVIDE          BANGLADESH                     4                           0       73    220
18-21 months   PROVIDE          BANGLADESH                     4                           1        1    220
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0       83    546
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        9    546
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0       83    546
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1        4    546
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      121    546
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1        7    546
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      228    546
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       11    546
21-24 months   CMC-V-BCS-2002   INDIA                          1                           0        4     52
21-24 months   CMC-V-BCS-2002   INDIA                          1                           1        3     52
21-24 months   CMC-V-BCS-2002   INDIA                          2                           0       10     52
21-24 months   CMC-V-BCS-2002   INDIA                          2                           1       12     52
21-24 months   CMC-V-BCS-2002   INDIA                          3                           0       13     52
21-24 months   CMC-V-BCS-2002   INDIA                          3                           1        5     52
21-24 months   CMC-V-BCS-2002   INDIA                          4                           0        3     52
21-24 months   CMC-V-BCS-2002   INDIA                          4                           1        2     52
21-24 months   CMIN             BANGLADESH                     1                           0        8     42
21-24 months   CMIN             BANGLADESH                     1                           1        0     42
21-24 months   CMIN             BANGLADESH                     2                           0        6     42
21-24 months   CMIN             BANGLADESH                     2                           1        4     42
21-24 months   CMIN             BANGLADESH                     3                           0        9     42
21-24 months   CMIN             BANGLADESH                     3                           1        3     42
21-24 months   CMIN             BANGLADESH                     4                           0       11     42
21-24 months   CMIN             BANGLADESH                     4                           1        1     42
21-24 months   GMS-Nepal        NEPAL                          1                           0       24    111
21-24 months   GMS-Nepal        NEPAL                          1                           1        3    111
21-24 months   GMS-Nepal        NEPAL                          2                           0       42    111
21-24 months   GMS-Nepal        NEPAL                          2                           1        4    111
21-24 months   GMS-Nepal        NEPAL                          3                           0       18    111
21-24 months   GMS-Nepal        NEPAL                          3                           1        4    111
21-24 months   GMS-Nepal        NEPAL                          4                           0       13    111
21-24 months   GMS-Nepal        NEPAL                          4                           1        3    111
21-24 months   IRC              INDIA                          1                           0        0      4
21-24 months   IRC              INDIA                          1                           1        1      4
21-24 months   IRC              INDIA                          2                           0        2      4
21-24 months   IRC              INDIA                          2                           1        0      4
21-24 months   IRC              INDIA                          3                           0        1      4
21-24 months   IRC              INDIA                          3                           1        0      4
21-24 months   IRC              INDIA                          4                           0        0      4
21-24 months   IRC              INDIA                          4                           1        0      4
21-24 months   Keneba           GAMBIA                         1                           0       97    589
21-24 months   Keneba           GAMBIA                         1                           1       21    589
21-24 months   Keneba           GAMBIA                         2                           0      121    589
21-24 months   Keneba           GAMBIA                         2                           1       24    589
21-24 months   Keneba           GAMBIA                         3                           0      138    589
21-24 months   Keneba           GAMBIA                         3                           1       24    589
21-24 months   Keneba           GAMBIA                         4                           0      131    589
21-24 months   Keneba           GAMBIA                         4                           1       33    589
21-24 months   MAL-ED           BRAZIL                         1                           0        1      5
21-24 months   MAL-ED           BRAZIL                         1                           1        0      5
21-24 months   MAL-ED           BRAZIL                         2                           0        1      5
21-24 months   MAL-ED           BRAZIL                         2                           1        0      5
21-24 months   MAL-ED           BRAZIL                         3                           0        2      5
21-24 months   MAL-ED           BRAZIL                         3                           1        0      5
21-24 months   MAL-ED           BRAZIL                         4                           0        1      5
21-24 months   MAL-ED           BRAZIL                         4                           1        0      5
21-24 months   MAL-ED           INDIA                          1                           0        5     10
21-24 months   MAL-ED           INDIA                          1                           1        0     10
21-24 months   MAL-ED           INDIA                          2                           0        2     10
21-24 months   MAL-ED           INDIA                          2                           1        0     10
21-24 months   MAL-ED           INDIA                          3                           0        2     10
21-24 months   MAL-ED           INDIA                          3                           1        0     10
21-24 months   MAL-ED           INDIA                          4                           0        1     10
21-24 months   MAL-ED           INDIA                          4                           1        0     10
21-24 months   MAL-ED           NEPAL                          1                           0        5     25
21-24 months   MAL-ED           NEPAL                          1                           1        1     25
21-24 months   MAL-ED           NEPAL                          2                           0        3     25
21-24 months   MAL-ED           NEPAL                          2                           1        1     25
21-24 months   MAL-ED           NEPAL                          3                           0        7     25
21-24 months   MAL-ED           NEPAL                          3                           1        0     25
21-24 months   MAL-ED           NEPAL                          4                           0        7     25
21-24 months   MAL-ED           NEPAL                          4                           1        1     25
21-24 months   MAL-ED           PERU                           1                           0        1     21
21-24 months   MAL-ED           PERU                           1                           1        0     21
21-24 months   MAL-ED           PERU                           2                           0        1     21
21-24 months   MAL-ED           PERU                           2                           1        0     21
21-24 months   MAL-ED           PERU                           3                           0        9     21
21-24 months   MAL-ED           PERU                           3                           1        0     21
21-24 months   MAL-ED           PERU                           4                           0       10     21
21-24 months   MAL-ED           PERU                           4                           1        0     21
21-24 months   MAL-ED           SOUTH AFRICA                   1                           0        4     56
21-24 months   MAL-ED           SOUTH AFRICA                   1                           1        1     56
21-24 months   MAL-ED           SOUTH AFRICA                   2                           0        7     56
21-24 months   MAL-ED           SOUTH AFRICA                   2                           1        0     56
21-24 months   MAL-ED           SOUTH AFRICA                   3                           0        8     56
21-24 months   MAL-ED           SOUTH AFRICA                   3                           1        1     56
21-24 months   MAL-ED           SOUTH AFRICA                   4                           0       30     56
21-24 months   MAL-ED           SOUTH AFRICA                   4                           1        5     56
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0        0     17
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        1     17
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           0        3     17
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                           1        2     17
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           0        4     17
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                           1        0     17
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           0        6     17
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                           1        1     17
21-24 months   PROVIDE          BANGLADESH                     1                           0       40    197
21-24 months   PROVIDE          BANGLADESH                     1                           1        3    197
21-24 months   PROVIDE          BANGLADESH                     2                           0       45    197
21-24 months   PROVIDE          BANGLADESH                     2                           1        2    197
21-24 months   PROVIDE          BANGLADESH                     3                           0       50    197
21-24 months   PROVIDE          BANGLADESH                     3                           1        2    197
21-24 months   PROVIDE          BANGLADESH                     4                           0       52    197
21-24 months   PROVIDE          BANGLADESH                     4                           1        3    197
21-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0        1      1
21-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        0      1
21-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0        0      1
21-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1        0      1
21-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0        0      1
21-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1        0      1
21-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0        0      1
21-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1        0      1


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
* agecat: 15-18 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ResPak, country: PAKISTAN
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
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
* agecat: 21-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: Guatemala BSC, country: GUATEMALA
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

* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ResPak, country: PAKISTAN
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ResPak, country: PAKISTAN
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
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
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/77351d63-90e2-4125-9168-d85331877afb/cacb5403-ede2-4fb4-a94f-61db068937d8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/77351d63-90e2-4125-9168-d85331877afb/cacb5403-ede2-4fb4-a94f-61db068937d8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/77351d63-90e2-4125-9168-d85331877afb/cacb5403-ede2-4fb4-a94f-61db068937d8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/77351d63-90e2-4125-9168-d85331877afb/cacb5403-ede2-4fb4-a94f-61db068937d8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     Keneba           GAMBIA                         1                    NA                0.2078313   0.1641707   0.2514919
3-6 months     Keneba           GAMBIA                         2                    NA                0.1577540   0.1207994   0.1947086
3-6 months     Keneba           GAMBIA                         3                    NA                0.1879195   0.1516930   0.2241460
3-6 months     Keneba           GAMBIA                         4                    NA                0.2363636   0.1905103   0.2822170
3-6 months     PROVIDE          BANGLADESH                     1                    NA                0.1686047   0.1125887   0.2246206
3-6 months     PROVIDE          BANGLADESH                     2                    NA                0.1317829   0.0733461   0.1902198
3-6 months     PROVIDE          BANGLADESH                     3                    NA                0.1588785   0.0895347   0.2282223
3-6 months     PROVIDE          BANGLADESH                     4                    NA                0.2500000   0.1083922   0.3916078
3-6 months     ResPak           PAKISTAN                       1                    NA                0.2463768   0.1444392   0.3483144
3-6 months     ResPak           PAKISTAN                       2                    NA                0.2941176   0.1405608   0.4476745
3-6 months     ResPak           PAKISTAN                       3                    NA                0.3684211   0.2146494   0.5221927
3-6 months     ResPak           PAKISTAN                       4                    NA                0.7058824   0.5805037   0.8312610
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1148936   0.0860567   0.1437306
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1098398   0.0805157   0.1391640
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1174089   0.0890154   0.1458024
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1497797   0.1229713   0.1765881
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                0.2549020   0.1349964   0.3748075
6-9 months     Guatemala BSC    GUATEMALA                      2                    NA                0.4181818   0.2874967   0.5488669
6-9 months     Guatemala BSC    GUATEMALA                      3                    NA                0.3404255   0.2046176   0.4762335
6-9 months     Guatemala BSC    GUATEMALA                      4                    NA                0.1458333   0.0457388   0.2459278
6-9 months     Keneba           GAMBIA                         1                    NA                0.1260504   0.0838649   0.1682360
6-9 months     Keneba           GAMBIA                         2                    NA                0.1200000   0.0832118   0.1567882
6-9 months     Keneba           GAMBIA                         3                    NA                0.1111111   0.0768764   0.1453458
6-9 months     Keneba           GAMBIA                         4                    NA                0.1310345   0.0921808   0.1698881
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1431925   0.1099208   0.1764641
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1393939   0.1020135   0.1767744
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1105991   0.0810831   0.1401151
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0858896   0.0610472   0.1107319
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                0.3846154   0.1969056   0.5723252
9-12 months    Guatemala BSC    GUATEMALA                      2                    NA                0.2941176   0.1403821   0.4478532
9-12 months    Guatemala BSC    GUATEMALA                      3                    NA                0.3636364   0.1988898   0.5283829
9-12 months    Guatemala BSC    GUATEMALA                      4                    NA                0.1500000   0.0389261   0.2610739
9-12 months    Keneba           GAMBIA                         1                    NA                0.1707317   0.1236883   0.2177751
9-12 months    Keneba           GAMBIA                         2                    NA                0.1115538   0.0725881   0.1505195
9-12 months    Keneba           GAMBIA                         3                    NA                0.0809859   0.0492414   0.1127304
9-12 months    Keneba           GAMBIA                         4                    NA                0.0843882   0.0489816   0.1197948
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1272085   0.0883723   0.1660447
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1014493   0.0658158   0.1370827
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1063123   0.0714771   0.1411475
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0654206   0.0419858   0.0888553
12-15 months   Keneba           GAMBIA                         1                    NA                0.1647059   0.1089156   0.2204961
12-15 months   Keneba           GAMBIA                         2                    NA                0.1216216   0.0786008   0.1646424
12-15 months   Keneba           GAMBIA                         3                    NA                0.1333333   0.0915855   0.1750812
12-15 months   Keneba           GAMBIA                         4                    NA                0.1016043   0.0582754   0.1449332
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1162791   0.0683474   0.1642107
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0869565   0.0462217   0.1276914
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0772947   0.0408949   0.1136945
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0471204   0.0258601   0.0683807
15-18 months   Keneba           GAMBIA                         1                    NA                0.2185430   0.1525850   0.2845011
15-18 months   Keneba           GAMBIA                         2                    NA                0.1494845   0.0992765   0.1996926
15-18 months   Keneba           GAMBIA                         3                    NA                0.1288889   0.0850774   0.1727004
15-18 months   Keneba           GAMBIA                         4                    NA                0.1336898   0.0848808   0.1824989
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1507937   0.0882679   0.2133194
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1509434   0.0827459   0.2191409
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1085714   0.0624473   0.1546955
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0681115   0.0406175   0.0956054
18-21 months   Keneba           GAMBIA                         1                    NA                0.1908397   0.1235005   0.2581789
18-21 months   Keneba           GAMBIA                         2                    NA                0.1694915   0.1141805   0.2248025
18-21 months   Keneba           GAMBIA                         3                    NA                0.1857143   0.1330819   0.2383467
18-21 months   Keneba           GAMBIA                         4                    NA                0.1624365   0.1108936   0.2139795
21-24 months   Keneba           GAMBIA                         1                    NA                0.1779661   0.1088961   0.2470361
21-24 months   Keneba           GAMBIA                         2                    NA                0.1655172   0.1049743   0.2260602
21-24 months   Keneba           GAMBIA                         3                    NA                0.1481481   0.0933974   0.2028989
21-24 months   Keneba           GAMBIA                         4                    NA                0.2012195   0.1398088   0.2626302


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     Keneba           GAMBIA                         NA                   NA                0.1955496   0.1753565   0.2157426
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.1621622   0.1278379   0.1964864
3-6 months     ResPak           PAKISTAN                       NA                   NA                0.4010417   0.3315353   0.4705480
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1258405   0.1115904   0.1400906
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                0.2935323   0.2304210   0.3566437
6-9 months     Keneba           GAMBIA                         NA                   NA                0.1215278   0.1026517   0.1404039
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1173317   0.1019339   0.1327295
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.2857143   0.2086482   0.3627803
9-12 months    Keneba           GAMBIA                         NA                   NA                0.1110020   0.0916955   0.1303085
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0962733   0.0801583   0.1123883
12-15 months   Keneba           GAMBIA                         NA                   NA                0.1294964   0.1066961   0.1522967
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0740741   0.0573677   0.0907805
15-18 months   Keneba           GAMBIA                         NA                   NA                0.1532365   0.1275592   0.1789138
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1041096   0.0819400   0.1262792
18-21 months   Keneba           GAMBIA                         NA                   NA                0.1762238   0.1482767   0.2041708
21-24 months   Keneba           GAMBIA                         NA                   NA                0.1731749   0.1425899   0.2037599


### Parameter: RR


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     Keneba           GAMBIA                         2                    1                 0.7590483   0.5541363   1.0397339
3-6 months     Keneba           GAMBIA                         3                    1                 0.9041922   0.6798816   1.2025086
3-6 months     Keneba           GAMBIA                         4                    1                 1.1372859   0.8544445   1.5137546
3-6 months     PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     PROVIDE          BANGLADESH                     2                    1                 0.7816092   0.4491106   1.3602728
3-6 months     PROVIDE          BANGLADESH                     3                    1                 0.9423139   0.5444730   1.6308532
3-6 months     PROVIDE          BANGLADESH                     4                    1                 1.4827586   0.7689177   2.8593087
3-6 months     ResPak           PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ResPak           PAKISTAN                       2                    1                 1.1937716   0.6132140   2.3239698
3-6 months     ResPak           PAKISTAN                       3                    1                 1.4953560   0.8308244   2.6914108
3-6 months     ResPak           PAKISTAN                       4                    1                 2.8650519   1.8263605   4.4944700
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9560132   0.6627144   1.3791178
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0218923   0.7211687   1.4480162
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.3036384   0.9578044   1.7743426
6-9 months     Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     Guatemala BSC    GUATEMALA                      2                    1                 1.6405594   0.9326671   2.8857406
6-9 months     Guatemala BSC    GUATEMALA                      3                    1                 1.3355155   0.7207460   2.4746606
6-9 months     Guatemala BSC    GUATEMALA                      4                    1                 0.5721154   0.2489505   1.3147835
6-9 months     Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     Keneba           GAMBIA                         2                    1                 0.9520000   0.6046832   1.4988079
6-9 months     Keneba           GAMBIA                         3                    1                 0.8814815   0.5593073   1.3892356
6-9 months     Keneba           GAMBIA                         4                    1                 1.0395402   0.6647445   1.6256530
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9734724   0.6826919   1.3881058
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7723804   0.5421950   1.1002897
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5998190   0.4138982   0.8692543
9-12 months    Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    Guatemala BSC    GUATEMALA                      2                    1                 0.7647059   0.3740412   1.5633977
9-12 months    Guatemala BSC    GUATEMALA                      3                    1                 0.9454545   0.4857766   1.8401139
9-12 months    Guatemala BSC    GUATEMALA                      4                    1                 0.3900000   0.1606597   0.9467217
9-12 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    Keneba           GAMBIA                         2                    1                 0.6533865   0.4187495   1.0194971
9-12 months    Keneba           GAMBIA                         3                    1                 0.4743461   0.2937726   0.7659129
9-12 months    Keneba           GAMBIA                         4                    1                 0.4942737   0.2992064   0.8165147
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7975040   0.5007503   1.2701194
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8357327   0.5340322   1.3078785
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5142783   0.3212117   0.8233889
12-15 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   Keneba           GAMBIA                         2                    1                 0.7384170   0.4524854   1.2050325
12-15 months   Keneba           GAMBIA                         3                    1                 0.8095238   0.5103890   1.2839791
12-15 months   Keneba           GAMBIA                         4                    1                 0.6168831   0.3578364   1.0634603
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7478261   0.4006866   1.3957139
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6647343   0.3555047   1.2429418
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4052356   0.2199342   0.7466592
15-18 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
15-18 months   Keneba           GAMBIA                         2                    1                 0.6840050   0.4354642   1.0744003
15-18 months   Keneba           GAMBIA                         3                    1                 0.5897643   0.3743366   0.9291689
15-18 months   Keneba           GAMBIA                         4                    1                 0.6117323   0.3809268   0.9823841
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0009930   0.5421324   1.8482333
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7200000   0.3976657   1.3036075
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4516865   0.2532323   0.8056661
18-21 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
18-21 months   Keneba           GAMBIA                         2                    1                 0.8881356   0.5492188   1.4361941
18-21 months   Keneba           GAMBIA                         3                    1                 0.9731429   0.6189056   1.5301316
18-21 months   Keneba           GAMBIA                         4                    1                 0.8511675   0.5295681   1.3680698
21-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
21-24 months   Keneba           GAMBIA                         2                    1                 0.9300493   0.5456210   1.5853342
21-24 months   Keneba           GAMBIA                         3                    1                 0.8324515   0.4870942   1.4226726
21-24 months   Keneba           GAMBIA                         4                    1                 1.1306620   0.6900940   1.8524963


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     Keneba           GAMBIA                         1                    NA                -0.0122818   -0.0504983    0.0259348
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0064425   -0.0498575    0.0369725
3-6 months     ResPak           PAKISTAN                       1                    NA                 0.1546649    0.0666099    0.2427198
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0109469   -0.0147278    0.0366216
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                 0.0386304   -0.0665572    0.1438179
6-9 months     Keneba           GAMBIA                         1                    NA                -0.0045226   -0.0419472    0.0329019
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0258607   -0.0538313    0.0021098
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.0989011   -0.2644247    0.0666225
9-12 months    Keneba           GAMBIA                         1                    NA                -0.0597297   -0.0986686   -0.0207908
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0309352   -0.0641791    0.0023087
12-15 months   Keneba           GAMBIA                         1                    NA                -0.0352095   -0.0838253    0.0134063
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0422050   -0.0839210   -0.0004890
15-18 months   Keneba           GAMBIA                         1                    NA                -0.0653066   -0.1225272   -0.0080860
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0466841   -0.1019234    0.0085553
18-21 months   Keneba           GAMBIA                         1                    NA                -0.0146159   -0.0750641    0.0458323
21-24 months   Keneba           GAMBIA                         1                    NA                -0.0047912   -0.0663916    0.0568091


### Parameter: PAF


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     Keneba           GAMBIA                         1                    NA                -0.0628064   -0.2772974    0.1156660
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0397287   -0.3449809    0.1962446
3-6 months     ResPak           PAKISTAN                       1                    NA                 0.3856578    0.1243179    0.5690031
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0869904   -0.1414096    0.2696868
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                 0.1316052   -0.3115264    0.4250138
6-9 months     Keneba           GAMBIA                         1                    NA                -0.0372149   -0.3957101    0.2291990
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2204070   -0.4822276   -0.0048345
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.3461538   -1.0710229    0.1250072
9-12 months    Keneba           GAMBIA                         1                    NA                -0.5380963   -0.9223739   -0.2306348
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3213268   -0.7120348   -0.0197833
12-15 months   Keneba           GAMBIA                         1                    NA                -0.2718954   -0.7060493    0.0517753
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5697674   -1.2313841   -0.1043235
15-18 months   Keneba           GAMBIA                         1                    NA                -0.4261818   -0.8487348   -0.1002089
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4484127   -1.0809735   -0.0081336
18-21 months   Keneba           GAMBIA                         1                    NA                -0.0829395   -0.4863194    0.2109650
21-24 months   Keneba           GAMBIA                         1                    NA                -0.0276670   -0.4526768    0.2729976

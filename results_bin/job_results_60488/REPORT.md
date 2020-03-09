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

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hdlvry
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hdlvry
* delta_month
* delta_W_parity

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




# Results Detail

## Results Plots
![](/tmp/c69beec6-361f-4cc7-80b9-427b2375f214/a7922f9e-13da-429b-ba07-5108d1fdf85e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c69beec6-361f-4cc7-80b9-427b2375f214/a7922f9e-13da-429b-ba07-5108d1fdf85e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c69beec6-361f-4cc7-80b9-427b2375f214/a7922f9e-13da-429b-ba07-5108d1fdf85e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c69beec6-361f-4cc7-80b9-427b2375f214/a7922f9e-13da-429b-ba07-5108d1fdf85e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     Keneba           GAMBIA                         1                    NA                0.2046634   0.1613142   0.2480125
3-6 months     Keneba           GAMBIA                         2                    NA                0.1584829   0.1213371   0.1956286
3-6 months     Keneba           GAMBIA                         3                    NA                0.1899829   0.1534376   0.2265283
3-6 months     Keneba           GAMBIA                         4                    NA                0.2358559   0.1899751   0.2817367
3-6 months     PROVIDE          BANGLADESH                     1                    NA                0.1686047   0.1125887   0.2246206
3-6 months     PROVIDE          BANGLADESH                     2                    NA                0.1317829   0.0733461   0.1902198
3-6 months     PROVIDE          BANGLADESH                     3                    NA                0.1588785   0.0895347   0.2282223
3-6 months     PROVIDE          BANGLADESH                     4                    NA                0.2500000   0.1083922   0.3916078
3-6 months     ResPak           PAKISTAN                       1                    NA                0.2562807   0.1520483   0.3605132
3-6 months     ResPak           PAKISTAN                       2                    NA                0.2591163   0.1088248   0.4094078
3-6 months     ResPak           PAKISTAN                       3                    NA                0.4079691   0.2442330   0.5717051
3-6 months     ResPak           PAKISTAN                       4                    NA                0.7107214   0.5798173   0.8416256
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1157969   0.0867465   0.1448473
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1109071   0.0813338   0.1404803
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1185373   0.0900821   0.1469925
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1475325   0.1207926   0.1742724
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                0.2549020   0.1349964   0.3748075
6-9 months     Guatemala BSC    GUATEMALA                      2                    NA                0.4181818   0.2874967   0.5488669
6-9 months     Guatemala BSC    GUATEMALA                      3                    NA                0.3404255   0.2046176   0.4762335
6-9 months     Guatemala BSC    GUATEMALA                      4                    NA                0.1458333   0.0457388   0.2459278
6-9 months     Keneba           GAMBIA                         1                    NA                0.1250501   0.0829499   0.1671502
6-9 months     Keneba           GAMBIA                         2                    NA                0.1214653   0.0844159   0.1585147
6-9 months     Keneba           GAMBIA                         3                    NA                0.1115204   0.0773524   0.1456885
6-9 months     Keneba           GAMBIA                         4                    NA                0.1314546   0.0925164   0.1703929
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1462520   0.1127594   0.1797446
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1398263   0.1025967   0.1770559
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1102983   0.0807845   0.1398120
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0856625   0.0607056   0.1106194
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                0.3846154   0.1969056   0.5723252
9-12 months    Guatemala BSC    GUATEMALA                      2                    NA                0.2941176   0.1403821   0.4478532
9-12 months    Guatemala BSC    GUATEMALA                      3                    NA                0.3636364   0.1988898   0.5283829
9-12 months    Guatemala BSC    GUATEMALA                      4                    NA                0.1500000   0.0389261   0.2610739
9-12 months    Keneba           GAMBIA                         1                    NA                0.1677507   0.1215302   0.2139712
9-12 months    Keneba           GAMBIA                         2                    NA                0.1148002   0.0757657   0.1538347
9-12 months    Keneba           GAMBIA                         3                    NA                0.0816947   0.0497607   0.1136287
9-12 months    Keneba           GAMBIA                         4                    NA                0.0833032   0.0476965   0.1189098
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1250858   0.0863486   0.1638230
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1034454   0.0671984   0.1396925
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1070880   0.0719142   0.1422619
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0640801   0.0409536   0.0872066
12-15 months   Keneba           GAMBIA                         1                    NA                0.1676670   0.1116765   0.2236574
12-15 months   Keneba           GAMBIA                         2                    NA                0.1268187   0.0834267   0.1702106
12-15 months   Keneba           GAMBIA                         3                    NA                0.1334098   0.0917611   0.1750585
12-15 months   Keneba           GAMBIA                         4                    NA                0.1038787   0.0604367   0.1473208
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1201310   0.0724820   0.1677801
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0913601   0.0504314   0.1322888
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0854747   0.0493988   0.1215506
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0476910   0.0264719   0.0689102
15-18 months   Keneba           GAMBIA                         1                    NA                0.2216757   0.1547965   0.2885548
15-18 months   Keneba           GAMBIA                         2                    NA                0.1499395   0.0997651   0.2001139
15-18 months   Keneba           GAMBIA                         3                    NA                0.1272287   0.0836489   0.1708085
15-18 months   Keneba           GAMBIA                         4                    NA                0.1319434   0.0835215   0.1803654
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1553893   0.0926975   0.2180811
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1592372   0.0907950   0.2276794
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1130585   0.0672085   0.1589085
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0693349   0.0418342   0.0968356
18-21 months   Keneba           GAMBIA                         1                    NA                0.1913557   0.1231779   0.2595336
18-21 months   Keneba           GAMBIA                         2                    NA                0.1679889   0.1135412   0.2224366
18-21 months   Keneba           GAMBIA                         3                    NA                0.1876606   0.1354265   0.2398947
18-21 months   Keneba           GAMBIA                         4                    NA                0.1694217   0.1174348   0.2214087
21-24 months   Keneba           GAMBIA                         1                    NA                0.1782534   0.1087263   0.2477804
21-24 months   Keneba           GAMBIA                         2                    NA                0.1637509   0.1030564   0.2244455
21-24 months   Keneba           GAMBIA                         3                    NA                0.1486802   0.0933104   0.2040500
21-24 months   Keneba           GAMBIA                         4                    NA                0.2012502   0.1395964   0.2629040


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
3-6 months     Keneba           GAMBIA                         2                    1                 0.7743586   0.5646392   1.0619724
3-6 months     Keneba           GAMBIA                         3                    1                 0.9282703   0.6972994   1.2357472
3-6 months     Keneba           GAMBIA                         4                    1                 1.1524090   0.8643910   1.5363955
3-6 months     PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     PROVIDE          BANGLADESH                     2                    1                 0.7816092   0.4491106   1.3602728
3-6 months     PROVIDE          BANGLADESH                     3                    1                 0.9423139   0.5444730   1.6308532
3-6 months     PROVIDE          BANGLADESH                     4                    1                 1.4827586   0.7689177   2.8593087
3-6 months     ResPak           PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ResPak           PAKISTAN                       2                    1                 1.0110642   0.4956522   2.0624360
3-6 months     ResPak           PAKISTAN                       3                    1                 1.5918835   0.8999717   2.8157472
3-6 months     ResPak           PAKISTAN                       4                    1                 2.7732145   1.7729379   4.3378388
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9577724   0.6643193   1.3808540
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0236653   0.7234532   1.4484566
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.2740625   0.9349788   1.7361198
6-9 months     Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     Guatemala BSC    GUATEMALA                      2                    1                 1.6405594   0.9326671   2.8857406
6-9 months     Guatemala BSC    GUATEMALA                      3                    1                 1.3355155   0.7207460   2.4746606
6-9 months     Guatemala BSC    GUATEMALA                      4                    1                 0.5721154   0.2489505   1.3147835
6-9 months     Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     Keneba           GAMBIA                         2                    1                 0.9713336   0.6168115   1.5296229
6-9 months     Keneba           GAMBIA                         3                    1                 0.8918064   0.5657784   1.4057071
6-9 months     Keneba           GAMBIA                         4                    1                 1.0512160   0.6714344   1.6458124
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9560644   0.6730724   1.3580398
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7541659   0.5303384   1.0724592
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5857186   0.4041189   0.8489241
9-12 months    Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    Guatemala BSC    GUATEMALA                      2                    1                 0.7647059   0.3740412   1.5633977
9-12 months    Guatemala BSC    GUATEMALA                      3                    1                 0.9454545   0.4857766   1.8401139
9-12 months    Guatemala BSC    GUATEMALA                      4                    1                 0.3900000   0.1606597   0.9467217
9-12 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    Keneba           GAMBIA                         2                    1                 0.6843500   0.4426697   1.0579782
9-12 months    Keneba           GAMBIA                         3                    1                 0.4870007   0.3021390   0.7849690
9-12 months    Keneba           GAMBIA                         4                    1                 0.4965892   0.2989316   0.8249408
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8269960   0.5184443   1.3191820
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8561167   0.5451896   1.3443685
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5122890   0.3185448   0.8238716
12-15 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   Keneba           GAMBIA                         2                    1                 0.7563723   0.4688802   1.2201394
12-15 months   Keneba           GAMBIA                         3                    1                 0.7956831   0.5037845   1.2567112
12-15 months   Keneba           GAMBIA                         4                    1                 0.6195540   0.3628099   1.0579840
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7605039   0.4182486   1.3828286
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7115122   0.3993525   1.2676759
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.3969917   0.2187830   0.7203597
15-18 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
15-18 months   Keneba           GAMBIA                         2                    1                 0.6763913   0.4312336   1.0609219
15-18 months   Keneba           GAMBIA                         3                    1                 0.5739408   0.3634380   0.9063664
15-18 months   Keneba           GAMBIA                         4                    1                 0.5952094   0.3700282   0.9574250
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0247627   0.5686649   1.8466739
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7275824   0.4105841   1.2893246
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4462012   0.2534713   0.7854758
18-21 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
18-21 months   Keneba           GAMBIA                         2                    1                 0.8778879   0.5420113   1.4219025
18-21 months   Keneba           GAMBIA                         3                    1                 0.9806896   0.6238556   1.5416261
18-21 months   Keneba           GAMBIA                         4                    1                 0.8853757   0.5528703   1.4178553
21-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
21-24 months   Keneba           GAMBIA                         2                    1                 0.9186414   0.5361919   1.5738807
21-24 months   Keneba           GAMBIA                         3                    1                 0.8340949   0.4862553   1.4307592
21-24 months   Keneba           GAMBIA                         4                    1                 1.1290120   0.6874410   1.8542220


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     Keneba           GAMBIA                         1                    NA                -0.0091138   -0.0470748    0.0288472
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0064425   -0.0498575    0.0369725
3-6 months     ResPak           PAKISTAN                       1                    NA                 0.1447609    0.0544218    0.2351001
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0100436   -0.0157977    0.0358849
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                 0.0386304   -0.0665572    0.1438179
6-9 months     Keneba           GAMBIA                         1                    NA                -0.0035223   -0.0408761    0.0338316
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0289203   -0.0570949   -0.0007456
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.0989011   -0.2644247    0.0666225
9-12 months    Keneba           GAMBIA                         1                    NA                -0.0567487   -0.0949845   -0.0185130
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0288125   -0.0619976    0.0043726
12-15 months   Keneba           GAMBIA                         1                    NA                -0.0381706   -0.0869843    0.0106431
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0460569   -0.0875152   -0.0045987
15-18 months   Keneba           GAMBIA                         1                    NA                -0.0684392   -0.1265462   -0.0103322
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0512797   -0.1067172    0.0041577
18-21 months   Keneba           GAMBIA                         1                    NA                -0.0151320   -0.0764288    0.0461648
21-24 months   Keneba           GAMBIA                         1                    NA                -0.0050785   -0.0671099    0.0569529


### Parameter: PAF


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     Keneba           GAMBIA                         1                    NA                -0.0466062   -0.2598577    0.1305490
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0397287   -0.3449809    0.1962446
3-6 months     ResPak           PAKISTAN                       1                    NA                 0.3609623    0.0936209    0.5494499
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0798123   -0.1500899    0.2637572
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                 0.1316052   -0.3115264    0.4250138
6-9 months     Keneba           GAMBIA                         1                    NA                -0.0289833   -0.3871483    0.2367026
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2464827   -0.5098327   -0.0290672
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.3461538   -1.0710229    0.1250072
9-12 months    Keneba           GAMBIA                         1                    NA                -0.5112408   -0.8896523   -0.2086080
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2992781   -0.6902334    0.0012482
12-15 months   Keneba           GAMBIA                         1                    NA                -0.2947617   -0.7298494    0.0308938
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6217687   -1.2759322   -0.1556293
15-18 months   Keneba           GAMBIA                         1                    NA                -0.4466248   -0.8754998   -0.1158216
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4925552   -1.1248678   -0.0484045
18-21 months   Keneba           GAMBIA                         1                    NA                -0.0858679   -0.4956365    0.2116338
21-24 months   Keneba           GAMBIA                         1                    NA                -0.0293258   -0.4577131    0.2731686

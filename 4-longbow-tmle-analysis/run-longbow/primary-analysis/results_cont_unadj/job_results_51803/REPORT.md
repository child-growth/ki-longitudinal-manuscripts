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

agecat         studyid                    country                        lag_WHZ_quart    n_cell      n
-------------  -------------------------  -----------------------------  --------------  -------  -----
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    48    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                   103    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    70    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    10    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    35    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    97    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    57    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    19    208
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    87    229
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    82    229
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    52    229
3-6 months     ki0047075b-MAL-ED          INDIA                          4                     8    229
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    51    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    88    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    78    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    16    233
3-6 months     ki0047075b-MAL-ED          PERU                           1                    17    267
3-6 months     ki0047075b-MAL-ED          PERU                           2                    67    267
3-6 months     ki0047075b-MAL-ED          PERU                           3                    90    267
3-6 months     ki0047075b-MAL-ED          PERU                           4                    93    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    27    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    47    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    87    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    80    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    10    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    52    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    78    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    99    239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                     8     21
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                     8     21
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                     3     21
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                     2     21
3-6 months     ki1000108-IRC              INDIA                          1                     0      2
3-6 months     ki1000108-IRC              INDIA                          2                     2      2
3-6 months     ki1000108-IRC              INDIA                          3                     0      2
3-6 months     ki1000108-IRC              INDIA                          4                     0      2
3-6 months     ki1000109-EE               PAKISTAN                       1                     1     13
3-6 months     ki1000109-EE               PAKISTAN                       2                     1     13
3-6 months     ki1000109-EE               PAKISTAN                       3                     6     13
3-6 months     ki1000109-EE               PAKISTAN                       4                     5     13
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                   231    525
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                   153    525
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                   111    525
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    30    525
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   433   1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   345   1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   356   1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   521   1655
3-6 months     ki1101329-Keneba           GAMBIA                         1                   126    519
3-6 months     ki1101329-Keneba           GAMBIA                         2                    89    519
3-6 months     ki1101329-Keneba           GAMBIA                         3                   136    519
3-6 months     ki1101329-Keneba           GAMBIA                         4                   168    519
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    71    181
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    47    181
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    38    181
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    25    181
3-6 months     ki1114097-CMIN             PERU                           1                    75    395
3-6 months     ki1114097-CMIN             PERU                           2                    87    395
3-6 months     ki1114097-CMIN             PERU                           3                   101    395
3-6 months     ki1114097-CMIN             PERU                           4                   132    395
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    33    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    92    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    77    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    22    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    35    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    73    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    70    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    20    198
6-9 months     ki0047075b-MAL-ED          INDIA                          1                   110    228
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    78    228
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    35    228
6-9 months     ki0047075b-MAL-ED          INDIA                          4                     5    228
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    63    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    87    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    66    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    14    230
6-9 months     ki0047075b-MAL-ED          PERU                           1                    31    244
6-9 months     ki0047075b-MAL-ED          PERU                           2                    56    244
6-9 months     ki0047075b-MAL-ED          PERU                           3                    86    244
6-9 months     ki0047075b-MAL-ED          PERU                           4                    71    244
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    33    230
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    46    230
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    68    230
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    83    230
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    30    223
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    48    223
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    70    223
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    75    223
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                     9     35
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    11     35
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    14     35
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                     1     35
6-9 months     ki1000108-IRC              INDIA                          1                     0      3
6-9 months     ki1000108-IRC              INDIA                          2                     2      3
6-9 months     ki1000108-IRC              INDIA                          3                     1      3
6-9 months     ki1000108-IRC              INDIA                          4                     0      3
6-9 months     ki1000109-EE               PAKISTAN                       1                    10     22
6-9 months     ki1000109-EE               PAKISTAN                       2                     5     22
6-9 months     ki1000109-EE               PAKISTAN                       3                     5     22
6-9 months     ki1000109-EE               PAKISTAN                       4                     2     22
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                     5     20
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                     6     20
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                     6     20
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4                     3     20
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   368   1483
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   310   1483
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   378   1483
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   427   1483
6-9 months     ki1101329-Keneba           GAMBIA                         1                   113    368
6-9 months     ki1101329-Keneba           GAMBIA                         2                    99    368
6-9 months     ki1101329-Keneba           GAMBIA                         3                    77    368
6-9 months     ki1101329-Keneba           GAMBIA                         4                    79    368
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    49    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    53    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    39    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    37    178
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    84    177
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    47    177
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    29    177
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    17    177
6-9 months     ki1114097-CMIN             PERU                           1                    57    395
6-9 months     ki1114097-CMIN             PERU                           2                    59    395
6-9 months     ki1114097-CMIN             PERU                           3                    89    395
6-9 months     ki1114097-CMIN             PERU                           4                   190    395
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    28    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    80    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    90    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    27    225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    23    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    70    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    78    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    23    194
9-12 months    ki0047075b-MAL-ED          INDIA                          1                   106    226
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    94    226
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    23    226
9-12 months    ki0047075b-MAL-ED          INDIA                          4                     3    226
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    63    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    96    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    59    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    11    229
9-12 months    ki0047075b-MAL-ED          PERU                           1                    40    235
9-12 months    ki0047075b-MAL-ED          PERU                           2                    69    235
9-12 months    ki0047075b-MAL-ED          PERU                           3                    71    235
9-12 months    ki0047075b-MAL-ED          PERU                           4                    55    235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    39    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    48    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    80    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    66    233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    24    222
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    56    222
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    74    222
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    68    222
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     8     48
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    21     48
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    13     48
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     6     48
9-12 months    ki1000108-IRC              INDIA                          1                     0      5
9-12 months    ki1000108-IRC              INDIA                          2                     4      5
9-12 months    ki1000108-IRC              INDIA                          3                     1      5
9-12 months    ki1000108-IRC              INDIA                          4                     0      5
9-12 months    ki1000109-EE               PAKISTAN                       1                     0      1
9-12 months    ki1000109-EE               PAKISTAN                       2                     0      1
9-12 months    ki1000109-EE               PAKISTAN                       3                     1      1
9-12 months    ki1000109-EE               PAKISTAN                       4                     0      1
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    33     97
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    27     97
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    21     97
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    16     97
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   258   1073
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   235   1073
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   256   1073
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   324   1073
9-12 months    ki1101329-Keneba           GAMBIA                         1                   131    326
9-12 months    ki1101329-Keneba           GAMBIA                         2                    73    326
9-12 months    ki1101329-Keneba           GAMBIA                         3                    71    326
9-12 months    ki1101329-Keneba           GAMBIA                         4                    51    326
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    32    155
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    48    155
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    39    155
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    36    155
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                     2      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                     0      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                     0      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4                     0      2
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    74    160
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    42    160
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    28    160
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    16    160
9-12 months    ki1114097-CMIN             PERU                           1                    33    363
9-12 months    ki1114097-CMIN             PERU                           2                    50    363
9-12 months    ki1114097-CMIN             PERU                           3                    77    363
9-12 months    ki1114097-CMIN             PERU                           4                   203    363
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    23    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    84    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    82    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    23    212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    19    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    64    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    72    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    29    184
12-15 months   ki0047075b-MAL-ED          INDIA                          1                   133    226
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    67    226
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    20    226
12-15 months   ki0047075b-MAL-ED          INDIA                          4                     6    226
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    70    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    90    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    59    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    11    230
12-15 months   ki0047075b-MAL-ED          PERU                           1                    29    224
12-15 months   ki0047075b-MAL-ED          PERU                           2                    59    224
12-15 months   ki0047075b-MAL-ED          PERU                           3                    86    224
12-15 months   ki0047075b-MAL-ED          PERU                           4                    50    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    40    227
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    46    227
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    80    227
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    61    227
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    30    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    60    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    76    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    60    226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    15     53
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    16     53
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    19     53
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     3     53
12-15 months   ki1000108-IRC              INDIA                          1                     1      5
12-15 months   ki1000108-IRC              INDIA                          2                     4      5
12-15 months   ki1000108-IRC              INDIA                          3                     0      5
12-15 months   ki1000108-IRC              INDIA                          4                     0      5
12-15 months   ki1000109-EE               PAKISTAN                       1                     0      1
12-15 months   ki1000109-EE               PAKISTAN                       2                     0      1
12-15 months   ki1000109-EE               PAKISTAN                       3                     1      1
12-15 months   ki1000109-EE               PAKISTAN                       4                     0      1
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                   140    483
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                   129    483
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                   128    483
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    86    483
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   153    777
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   163    777
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   198    777
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   263    777
12-15 months   ki1101329-Keneba           GAMBIA                         1                   169    445
12-15 months   ki1101329-Keneba           GAMBIA                         2                   118    445
12-15 months   ki1101329-Keneba           GAMBIA                         3                    97    445
12-15 months   ki1101329-Keneba           GAMBIA                         4                    61    445
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    21     82
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    22     82
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    18     82
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    21     82
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                     4      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                     0      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                     0      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4                     0      4
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    75    158
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    47    158
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    21    158
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    15    158
12-15 months   ki1114097-CMIN             PERU                           1                    27    341
12-15 months   ki1114097-CMIN             PERU                           2                    41    341
12-15 months   ki1114097-CMIN             PERU                           3                    80    341
12-15 months   ki1114097-CMIN             PERU                           4                   193    341
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    49    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    94    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    65    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                     4    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    21    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    65    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    58    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    31    175
15-18 months   ki0047075b-MAL-ED          INDIA                          1                   122    226
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    82    226
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    20    226
15-18 months   ki0047075b-MAL-ED          INDIA                          4                     2    226
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    64    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    86    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    55    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    22    227
15-18 months   ki0047075b-MAL-ED          PERU                           1                    21    213
15-18 months   ki0047075b-MAL-ED          PERU                           2                    61    213
15-18 months   ki0047075b-MAL-ED          PERU                           3                    85    213
15-18 months   ki0047075b-MAL-ED          PERU                           4                    46    213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    24    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    55    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    68    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    78    225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    31    216
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    64    216
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    66    216
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    55    216
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    22     57
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    20     57
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    12     57
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     3     57
15-18 months   ki1000108-IRC              INDIA                          1                     4      8
15-18 months   ki1000108-IRC              INDIA                          2                     3      8
15-18 months   ki1000108-IRC              INDIA                          3                     1      8
15-18 months   ki1000108-IRC              INDIA                          4                     0      8
15-18 months   ki1000109-EE               PAKISTAN                       1                    14     41
15-18 months   ki1000109-EE               PAKISTAN                       2                    11     41
15-18 months   ki1000109-EE               PAKISTAN                       3                    10     41
15-18 months   ki1000109-EE               PAKISTAN                       4                     6     41
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                   132    423
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                   116    423
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    98    423
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    77    423
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   156    652
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   126    652
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   158    652
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   212    652
15-18 months   ki1101329-Keneba           GAMBIA                         1                   173    448
15-18 months   ki1101329-Keneba           GAMBIA                         2                   128    448
15-18 months   ki1101329-Keneba           GAMBIA                         3                    95    448
15-18 months   ki1101329-Keneba           GAMBIA                         4                    52    448
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                     4      9
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                     3      9
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                     1      9
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4                     1      9
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    67    161
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    52    161
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    28    161
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    14    161
15-18 months   ki1114097-CMIN             PERU                           1                    15    292
15-18 months   ki1114097-CMIN             PERU                           2                    25    292
15-18 months   ki1114097-CMIN             PERU                           3                    74    292
15-18 months   ki1114097-CMIN             PERU                           4                   178    292
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    38    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    90    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    74    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                     7    209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    14    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    50    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    70    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    33    167
18-21 months   ki0047075b-MAL-ED          INDIA                          1                   100    226
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    87    226
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    36    226
18-21 months   ki0047075b-MAL-ED          INDIA                          4                     3    226
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    61    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    87    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    60    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    19    227
18-21 months   ki0047075b-MAL-ED          PERU                           1                    39    202
18-21 months   ki0047075b-MAL-ED          PERU                           2                    59    202
18-21 months   ki0047075b-MAL-ED          PERU                           3                    74    202
18-21 months   ki0047075b-MAL-ED          PERU                           4                    30    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    21    232
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    47    232
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    76    232
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    88    232
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    23    202
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    56    202
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    64    202
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    59    202
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    14     59
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    24     59
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    16     59
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     5     59
18-21 months   ki1000108-IRC              INDIA                          1                     5      7
18-21 months   ki1000108-IRC              INDIA                          2                     1      7
18-21 months   ki1000108-IRC              INDIA                          3                     1      7
18-21 months   ki1000108-IRC              INDIA                          4                     0      7
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                   129    394
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                   109    394
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    82    394
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    74    394
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     3      8
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1      8
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1      8
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     3      8
18-21 months   ki1101329-Keneba           GAMBIA                         1                   191    472
18-21 months   ki1101329-Keneba           GAMBIA                         2                   122    472
18-21 months   ki1101329-Keneba           GAMBIA                         3                    92    472
18-21 months   ki1101329-Keneba           GAMBIA                         4                    67    472
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                     6      9
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                     1      9
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                     1      9
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4                     1      9
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    79    164
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    47    164
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    26    164
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    12    164
18-21 months   ki1114097-CMIN             PERU                           1                     7    285
18-21 months   ki1114097-CMIN             PERU                           2                    27    285
18-21 months   ki1114097-CMIN             PERU                           3                    72    285
18-21 months   ki1114097-CMIN             PERU                           4                   179    285
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    36    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    81    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    80    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    10    207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    16    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    45    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    62    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    42    165
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    93    226
21-24 months   ki0047075b-MAL-ED          INDIA                          2                   100    226
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    29    226
21-24 months   ki0047075b-MAL-ED          INDIA                          4                     4    226
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    62    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    83    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    63    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    19    227
21-24 months   ki0047075b-MAL-ED          PERU                           1                    31    189
21-24 months   ki0047075b-MAL-ED          PERU                           2                    55    189
21-24 months   ki0047075b-MAL-ED          PERU                           3                    68    189
21-24 months   ki0047075b-MAL-ED          PERU                           4                    35    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    21    234
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    36    234
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    67    234
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   110    234
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    27    202
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    40    202
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    86    202
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    49    202
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    10     65
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    29     65
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    24     65
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     2     65
21-24 months   ki1000108-IRC              INDIA                          1                     3     12
21-24 months   ki1000108-IRC              INDIA                          2                     6     12
21-24 months   ki1000108-IRC              INDIA                          3                     3     12
21-24 months   ki1000108-IRC              INDIA                          4                     0     12
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   125    323
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    88    323
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    59    323
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    51    323
21-24 months   ki1101329-Keneba           GAMBIA                         1                   155    448
21-24 months   ki1101329-Keneba           GAMBIA                         2                   124    448
21-24 months   ki1101329-Keneba           GAMBIA                         3                   121    448
21-24 months   ki1101329-Keneba           GAMBIA                         4                    48    448
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     5     10
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     3     10
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1     10
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1     10
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    69    133
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    35    133
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    20    133
21-24 months   ki1114097-CMIN             BANGLADESH                     4                     9    133
21-24 months   ki1114097-CMIN             PERU                           1                     4    245
21-24 months   ki1114097-CMIN             PERU                           2                    26    245
21-24 months   ki1114097-CMIN             PERU                           3                    53    245
21-24 months   ki1114097-CMIN             PERU                           4                   162    245


The following strata were considered:

* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/efb4ba0d-7ddb-4a01-a6ab-0c5cc3b73c27/5355e0df-e03c-41dc-9505-b4d98317e793/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/efb4ba0d-7ddb-4a01-a6ab-0c5cc3b73c27/5355e0df-e03c-41dc-9505-b4d98317e793/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/efb4ba0d-7ddb-4a01-a6ab-0c5cc3b73c27/5355e0df-e03c-41dc-9505-b4d98317e793/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0931569   -0.1378010   -0.0485129
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0019187   -0.0346023    0.0384396
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0178140   -0.0573724    0.0217444
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                 0.0318526   -0.0589561    0.1226613
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0607228   -0.0218832    0.1433287
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0623240    0.0089412    0.1157068
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0614688   -0.0031418    0.1260794
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0477661   -0.1097346    0.2052668
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0664792   -0.1208964   -0.0120621
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0455418   -0.0858592   -0.0052244
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0032673   -0.0468830    0.0534176
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    NA                 0.0199466   -0.1293903    0.1692835
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0221007   -0.0794474    0.0352460
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0378772   -0.0819899    0.0062355
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0322356   -0.0745140    0.0100427
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                 0.1234930    0.0253365    0.2216495
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0024690   -0.1057466    0.1008085
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                 0.0160809   -0.0528268    0.0849885
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                 0.0242360   -0.0288810    0.0773530
3-6 months     ki0047075b-MAL-ED          PERU                           4                    NA                 0.0440199   -0.0054213    0.0934610
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0755281   -0.1901865    0.0391302
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0768124   -0.1469044   -0.0067205
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0029399   -0.0615931    0.0674728
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0672620   -0.0009325    0.1354565
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0274056   -0.1626557    0.1078446
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0853371   -0.1473187   -0.0233555
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0785616   -0.1318226   -0.0253006
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0608164   -0.1156822   -0.0059506
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0637609   -0.0892653   -0.0382565
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0167525   -0.0486022    0.0150971
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                 0.0210197   -0.0172228    0.0592622
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0514677   -0.0027225    0.1056580
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1029773   -0.1355221   -0.0704324
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1223478   -0.1554375   -0.0892581
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0652124   -0.1045347   -0.0258900
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0573449   -0.0866073   -0.0280826
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0002398   -0.0574743    0.0569947
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.0593791   -0.1389903    0.0202320
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                -0.0152724   -0.0696950    0.0391502
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                 0.0331282   -0.0146225    0.0808789
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0363867   -0.0826786    0.0099052
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0198317   -0.0734094    0.0337460
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    NA                 0.0114448   -0.0608573    0.0837469
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0846490   -0.0206026    0.1899006
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0354050   -0.0808261    0.0100161
3-6 months     ki1114097-CMIN             PERU                           2                    NA                -0.1004360   -0.1501117   -0.0507603
3-6 months     ki1114097-CMIN             PERU                           3                    NA                -0.0519805   -0.0950374   -0.0089236
3-6 months     ki1114097-CMIN             PERU                           4                    NA                -0.0478937   -0.0895281   -0.0062592
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0481607   -0.0984204    0.0020989
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0964888   -0.1244252   -0.0685524
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0609663   -0.0876042   -0.0343284
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0366663   -0.0861701    0.0128375
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0320418   -0.0956567    0.0315732
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0205943   -0.0285408    0.0697293
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0072336   -0.0606987    0.0462315
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0708411   -0.1297932    0.2714754
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0622393   -0.0955391   -0.0289395
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0823213   -0.1180182   -0.0466244
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0369742   -0.0881666    0.0142183
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0419568   -0.1333249    0.0494114
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0452200   -0.0834448   -0.0069951
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0380204   -0.0693186   -0.0067221
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0300009   -0.0618454    0.0018437
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                 0.0012451   -0.0979250    0.1004152
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0537308   -0.1049364   -0.0025253
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.0729453   -0.1210731   -0.0248175
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.0256532   -0.0672302    0.0159238
6-9 months     ki0047075b-MAL-ED          PERU                           4                    NA                -0.0004832   -0.0457366    0.0447701
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0579979   -0.1193739    0.0033782
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0208203   -0.0837813    0.0421406
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0053437   -0.0447156    0.0554029
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0157949   -0.0679827    0.0363928
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1029058   -0.1594401   -0.0463715
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1009711   -0.1636578   -0.0382844
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1089759   -0.1693514   -0.0486004
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1075031   -0.1528615   -0.0621448
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0857748   -0.1144999   -0.0570497
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0603949   -0.0984276   -0.0223623
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0729062   -0.1046954   -0.0411170
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.0017913   -0.0282312    0.0318137
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0588014   -0.1317204    0.0141176
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                 0.0162872   -0.0421701    0.0747445
6-9 months     ki1101329-Keneba           GAMBIA                         3                    NA                 0.0670621   -0.0275089    0.1616332
6-9 months     ki1101329-Keneba           GAMBIA                         4                    NA                 0.0137175   -0.0412258    0.0686608
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0943601   -0.1346034   -0.0541168
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.1293991   -0.1692602   -0.0895381
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0755927   -0.1146481   -0.0365374
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0740985   -0.1186583   -0.0295386
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0691648   -0.1067616   -0.0315681
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0450237   -0.0944369    0.0043895
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0722936   -0.1278526   -0.0167347
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0498319   -0.0702335    0.1698974
6-9 months     ki1114097-CMIN             PERU                           1                    NA                -0.1132951   -0.1561873   -0.0704029
6-9 months     ki1114097-CMIN             PERU                           2                    NA                -0.1523767   -0.1902862   -0.1144672
6-9 months     ki1114097-CMIN             PERU                           3                    NA                -0.0670158   -0.1146833   -0.0193482
6-9 months     ki1114097-CMIN             PERU                           4                    NA                -0.1169608   -0.1470865   -0.0868351
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0866943   -0.1324169   -0.0409718
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0677019   -0.0926093   -0.0427945
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.1012227   -0.1278752   -0.0745703
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0911580   -0.1384590   -0.0438571
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0054019   -0.0723384    0.0831422
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0407962   -0.0893813    0.0077889
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0271242   -0.0173118    0.0715602
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.1074894   -0.0077719    0.2227508
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0572300   -0.0867945   -0.0276654
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0793782   -0.1051037   -0.0536527
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0371756   -0.0720773   -0.0022738
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0770142   -0.1442620   -0.0097664
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0341144   -0.0791101    0.0108812
9-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                -0.0577704   -0.0956333   -0.0199075
9-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                -0.0348360   -0.0720061    0.0023341
9-12 months    ki0047075b-MAL-ED          PERU                           4                    NA                -0.0402605   -0.0917058    0.0111849
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1421429   -0.2256226   -0.0586632
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0977694   -0.1520527   -0.0434861
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0725723   -0.1122556   -0.0328890
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0680995   -0.1207467   -0.0154523
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2343269   -0.3207594   -0.1478944
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1107197   -0.1583946   -0.0630448
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1529102   -0.2009596   -0.1048608
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1255896   -0.1865450   -0.0646342
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2352221   -0.3023636   -0.1680806
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.2406333   -0.3450519   -0.1362148
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0851131   -0.2039737    0.0337475
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.1384685   -0.2746125   -0.0023246
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0440026   -0.0916620    0.0036568
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0604528   -0.1093578   -0.0115478
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0761583   -0.1352529   -0.0170638
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0423492   -0.0836815   -0.0010170
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0850436   -0.1138006   -0.0562867
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0662855   -0.0943004   -0.0382707
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0597976   -0.0894787   -0.0301165
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0540864   -0.0818381   -0.0263346
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1076401   -0.1659853   -0.0492948
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.1500944   -0.2213121   -0.0788767
9-12 months    ki1101329-Keneba           GAMBIA                         3                    NA                -0.0735623   -0.1353954   -0.0117293
9-12 months    ki1101329-Keneba           GAMBIA                         4                    NA                -0.0715760   -0.1296740   -0.0134779
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0886514   -0.1184618   -0.0588409
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.0573136   -0.0913590   -0.0232682
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0339255   -0.0739965    0.0061454
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0558829   -0.0835072   -0.0282586
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1378356   -0.1685923   -0.1070790
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0757971   -0.1229474   -0.0286468
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0156086   -0.0768713    0.0456542
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0366845   -0.1227132    0.0493443
9-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0765936   -0.1272725   -0.0259148
9-12 months    ki1114097-CMIN             PERU                           2                    NA                -0.0766937   -0.1143898   -0.0389975
9-12 months    ki1114097-CMIN             PERU                           3                    NA                -0.0904770   -0.1251172   -0.0558369
9-12 months    ki1114097-CMIN             PERU                           4                    NA                -0.0643363   -0.0876018   -0.0410708
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0621865   -0.0896524   -0.0347207
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0718625   -0.0984220   -0.0453030
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0453229   -0.0696133   -0.0210324
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0271482   -0.0770813    0.0227850
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0549685   -0.1153738    0.0054368
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0126894   -0.0319273    0.0573061
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0177874   -0.0498401    0.0142652
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0328643   -0.0158119    0.0815406
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0635497   -0.0829903   -0.0441091
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0497960   -0.0774616   -0.0221304
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0347796   -0.0760989    0.0065396
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0532418   -0.2198880    0.1134045
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0695772   -0.0951265   -0.0440279
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0505817   -0.0769222   -0.0242413
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0573740   -0.0873005   -0.0274475
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0511913   -0.1214741    0.0190915
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0840354   -0.1529128   -0.0151581
12-15 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0775607   -0.1079214   -0.0471999
12-15 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0539352   -0.0797612   -0.0281093
12-15 months   ki0047075b-MAL-ED          PERU                           4                    NA                -0.0608429   -0.0962076   -0.0254781
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1086513   -0.1617915   -0.0555110
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0676233   -0.1175432   -0.0177034
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0510752   -0.0892474   -0.0129029
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0271715   -0.0716566    0.0173137
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1180703   -0.1829569   -0.0531838
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0801926   -0.1313096   -0.0290756
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0498308   -0.0905657   -0.0090958
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0588954   -0.1084748   -0.0093161
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0467276   -0.0655554   -0.0278999
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0312047   -0.0527410   -0.0096684
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0451660   -0.0659551   -0.0243770
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0273590   -0.0514455   -0.0032726
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0712664   -0.1042840   -0.0382489
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0896431   -0.1188924   -0.0603937
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0582138   -0.0869667   -0.0294609
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0500520   -0.0760094   -0.0240946
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0553169   -0.0902556   -0.0203782
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0110275   -0.0536567    0.0316016
12-15 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0885520   -0.1302356   -0.0468685
12-15 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.1093239   -0.1532973   -0.0653505
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0140736   -0.0646954    0.0365483
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                 0.0059441   -0.0384167    0.0503050
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0413700   -0.0820107   -0.0007292
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0069118   -0.0570849    0.0432614
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0895988   -0.1194006   -0.0597971
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0417917   -0.0764496   -0.0071339
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0352201   -0.0954399    0.0249997
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0472528   -0.1308028    0.0362971
12-15 months   ki1114097-CMIN             PERU                           1                    NA                -0.0926185   -0.1781696   -0.0070674
12-15 months   ki1114097-CMIN             PERU                           2                    NA                -0.0853919   -0.1330922   -0.0376916
12-15 months   ki1114097-CMIN             PERU                           3                    NA                -0.0842124   -0.1183992   -0.0500256
12-15 months   ki1114097-CMIN             PERU                           4                    NA                -0.0678064   -0.0891338   -0.0464790
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0232606   -0.0786351    0.0321138
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0322313   -0.0682295    0.0037669
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0059571   -0.0320126    0.0439268
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0426418   -0.0845299   -0.0007537
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0660771   -0.0940166   -0.0381375
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0672677   -0.0902452   -0.0442901
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0241389   -0.0579876    0.0097097
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0432937   -0.0814535   -0.0051340
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0625556   -0.1191776   -0.0059335
15-18 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0081272   -0.0381894    0.0219350
15-18 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0464896   -0.0691971   -0.0237821
15-18 months   ki0047075b-MAL-ED          PERU                           4                    NA                -0.0384773   -0.0685228   -0.0084317
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0313112   -0.0873687    0.0247463
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0391349   -0.0798547    0.0015850
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0215531   -0.0570029    0.0138968
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0258447   -0.0560716    0.0043822
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0761816   -0.1343905   -0.0179726
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0765594   -0.1136745   -0.0394443
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1113603   -0.1516088   -0.0711117
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0591235   -0.1048109   -0.0134362
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0525249   -0.0886449   -0.0164049
15-18 months   ki1000109-EE               PAKISTAN                       2                    NA                -0.0048618   -0.0711729    0.0614493
15-18 months   ki1000109-EE               PAKISTAN                       3                    NA                 0.0193865   -0.0248562    0.0636291
15-18 months   ki1000109-EE               PAKISTAN                       4                    NA                 0.0451237   -0.0301224    0.1203698
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0459875   -0.0618308   -0.0301441
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0298953   -0.0493550   -0.0104355
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0459238   -0.0663383   -0.0255093
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0458995   -0.0707238   -0.0210752
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0395264   -0.0684905   -0.0105622
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0559221   -0.0914564   -0.0203878
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0058680   -0.0396149    0.0278789
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.0023406   -0.0240581    0.0287393
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0368058   -0.0692113   -0.0044002
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0592712   -0.0887002   -0.0298421
15-18 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0506462   -0.0867715   -0.0145209
15-18 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.0256978   -0.0791198    0.0277242
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0835395   -0.1096168   -0.0574622
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0431631   -0.0776551   -0.0086711
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0670774   -0.1071053   -0.0270494
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0192863   -0.1175596    0.0789869
15-18 months   ki1114097-CMIN             PERU                           1                    NA                -0.0532024   -0.1103483    0.0039434
15-18 months   ki1114097-CMIN             PERU                           2                    NA                -0.0419960   -0.0854711    0.0014791
15-18 months   ki1114097-CMIN             PERU                           3                    NA                -0.0418153   -0.0692919   -0.0143386
15-18 months   ki1114097-CMIN             PERU                           4                    NA                -0.0331786   -0.0532013   -0.0131560
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0315458   -0.0593056   -0.0037860
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0141416   -0.0330020    0.0047188
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0140797   -0.0320819    0.0039226
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                 0.0390983    0.0076573    0.0705393
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0342093   -0.1178942    0.1863129
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0277062   -0.0814861    0.0260737
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0216225   -0.0493418    0.0060968
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0296967   -0.0614769    0.0020835
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0281105   -0.0523563   -0.0038647
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0158416   -0.0380482    0.0063650
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0455304   -0.0678997   -0.0231610
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0299633   -0.0801237    0.0201970
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0468471   -0.0735327   -0.0201615
18-21 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0097458   -0.0392790    0.0197874
18-21 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0022905   -0.0264956    0.0219147
18-21 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.0354083   -0.0068435    0.0776601
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0752853   -0.1313460   -0.0192246
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0833531   -0.1175398   -0.0491665
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0280745   -0.0612877    0.0051388
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0028886   -0.0359893    0.0302122
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0683213   -0.1332806   -0.0033621
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0516612   -0.0955536   -0.0077688
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0231798   -0.0583832    0.0120236
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0022610   -0.0430861    0.0385642
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0572235   -0.1864775    0.0720305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0655172   -0.1298005   -0.0012338
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0133004   -0.1426296    0.1160287
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.1513039   -0.1931737   -0.1094341
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0092527   -0.0261483    0.0076430
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0206044   -0.0400615   -0.0011474
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0246157   -0.0440693   -0.0051620
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0127731   -0.0096917    0.0352379
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0018403   -0.0287621    0.0250816
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0077680   -0.0444523    0.0289164
18-21 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0453421   -0.0871679   -0.0035163
18-21 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.0206481   -0.0589561    0.0176600
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0145277   -0.0369112    0.0078558
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0130746   -0.0400799    0.0139307
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    NA                 0.0377305   -0.0124180    0.0878790
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0487758   -0.1188731    0.0213214
18-21 months   ki1114097-CMIN             PERU                           1                    NA                 0.0386834   -0.0346566    0.1120235
18-21 months   ki1114097-CMIN             PERU                           2                    NA                -0.0474827   -0.0834929   -0.0114725
18-21 months   ki1114097-CMIN             PERU                           3                    NA                -0.0274780   -0.0516195   -0.0033364
18-21 months   ki1114097-CMIN             PERU                           4                    NA                -0.0173485   -0.0342803   -0.0004166
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0378162    0.0129202    0.0627123
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0527385    0.0324406    0.0730363
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                 0.0448298    0.0243756    0.0652841
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0120204   -0.0642754    0.0402346
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0090306   -0.0371828    0.0552439
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0381198    0.0092709    0.0669687
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0306150    0.0031043    0.0581257
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0337536    0.0041894    0.0633177
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0232327    0.0012846    0.0451808
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0190189   -0.0031502    0.0411880
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0295450    0.0039754    0.0551146
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                 0.0076393   -0.0302016    0.0454802
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0223108   -0.0019410    0.0465627
21-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0499583    0.0197153    0.0802013
21-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.0655963    0.0383036    0.0928891
21-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.0976895    0.0689334    0.1264456
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0438350   -0.0066220    0.0942919
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.0278037   -0.0137603    0.0693677
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0518261    0.0206315    0.0830206
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0716322    0.0463305    0.0969339
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0201375   -0.0311312    0.0714061
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0605034    0.0215403    0.0994665
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0126082   -0.0149290    0.0401453
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.0361279   -0.0082551    0.0805109
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0503212    0.0340809    0.0665616
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0482595    0.0297650    0.0667541
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                 0.0614889    0.0387917    0.0841861
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0805226    0.0527205    0.1083247
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0072771   -0.0248186    0.0393729
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0110308   -0.0513403    0.0292788
21-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                 0.0234682   -0.0161557    0.0630922
21-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                 0.0057714   -0.0469916    0.0585344
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0013575   -0.0265095    0.0237946
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    NA                 0.0118211   -0.0212365    0.0448786
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    NA                 0.0527120   -0.0020242    0.1074482
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0780708    0.0045671    0.1515746


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0255518   -0.0428078   -0.0082957
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0845266   -0.1012032   -0.0678499
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0035192   -0.0323154    0.0252770
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0053283   -0.0369418    0.0262853
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                -0.0581400   -0.0808140   -0.0354659
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0712828   -0.0886744   -0.0538911
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0065272   -0.0286668    0.0417212
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0647863   -0.0866552   -0.0429173
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0353011   -0.0545813   -0.0160209
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0327503   -0.0565050   -0.0089956
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0166055   -0.0451785    0.0119674
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1059410   -0.1347850   -0.0770969
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0519766   -0.0680269   -0.0359262
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0033026   -0.0327719    0.0393771
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0964694   -0.1173015   -0.0756374
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0518380   -0.0789102   -0.0247658
6-9 months     ki1114097-CMIN             PERU                           NA                   NA                -0.1104684   -0.1305339   -0.0904028
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0862885   -0.1024243   -0.0701527
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0095694   -0.0211153    0.0402541
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0622983   -0.0789970   -0.0455996
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0427167   -0.0640466   -0.0213867
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0881410   -0.1153440   -0.0609380
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1427009   -0.1720181   -0.1133837
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1848408   -0.2474993   -0.1221824
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0552704   -0.0810632   -0.0294776
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0655643   -0.0799283   -0.0512004
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1040829   -0.1369157   -0.0712502
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0575663   -0.0748970   -0.0402356
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0900457   -0.1145732   -0.0655181
9-12 months    ki1114097-CMIN             PERU                           NA                   NA                -0.0726977   -0.0892090   -0.0561864
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0556963   -0.0712392   -0.0401535
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0566526   -0.0719021   -0.0414031
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0581345   -0.0735623   -0.0427067
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0655968   -0.0831035   -0.0480901
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0581506   -0.0810968   -0.0352045
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0387193   -0.0493094   -0.0281291
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0646146   -0.0791715   -0.0500578
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0582205   -0.0790220   -0.0374190
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0128607   -0.0366896    0.0109682
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0641300   -0.0852944   -0.0429656
12-15 months   ki1114097-CMIN             PERU                           NA                   NA                -0.0757343   -0.0927574   -0.0587112
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0541588   -0.0691409   -0.0391768
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0353568   -0.0507063   -0.0200073
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0283795   -0.0473583   -0.0094006
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0826991   -0.1047133   -0.0606848
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0079079   -0.0366972    0.0208815
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0415437   -0.0513507   -0.0317367
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0209252   -0.0363844   -0.0054660
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0448700   -0.0629139   -0.0268262
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0620485   -0.0814047   -0.0426923
15-18 months   ki1114097-CMIN             PERU                           NA                   NA                -0.0371509   -0.0519947   -0.0223072
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155009   -0.0271590   -0.0038429
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0281678   -0.0411993   -0.0151363
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0074717   -0.0226412    0.0076978
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0339933   -0.0531454   -0.0148412
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0301055   -0.0520057   -0.0082054
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0566588   -0.1110028   -0.0023147
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0114537   -0.0212231   -0.0016842
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0145213   -0.0320372    0.0029945
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0083324   -0.0249759    0.0083111
18-21 months   ki1114097-CMIN             PERU                           NA                   NA                -0.0213861   -0.0343331   -0.0084391
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0439584    0.0315403    0.0563764
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0313676    0.0156533    0.0470820
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0221387    0.0093850    0.0348923
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0598890    0.0447554    0.0750227
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0567237    0.0397874    0.0736601
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0288040    0.0096671    0.0479410
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0565681    0.0464248    0.0667114
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0064215   -0.0134704    0.0263133
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                 0.0156162   -0.0032678    0.0345001


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0950756    0.0373966    0.1527547
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0753429    0.0156943    0.1349916
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.1250095    0.0238200    0.2261990
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0016012   -0.0967526    0.0999550
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0007461   -0.1041266    0.1056187
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0129566   -0.1908055    0.1648922
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0209374   -0.0467879    0.0886627
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0697465   -0.0042553    0.1437484
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.0864258   -0.0725167    0.2453683
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0157764   -0.0881268    0.0565739
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0101349   -0.0813817    0.0611118
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1455937    0.0319129    0.2592746
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.0185499   -0.1056053    0.1427051
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.0267050   -0.0894314    0.1428415
3-6 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0464889   -0.0680130    0.1609908
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0012843   -0.1356697    0.1331010
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0784680   -0.0531034    0.2100394
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1427901    0.0093846    0.2761956
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0579316   -0.2067076    0.0908445
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0511560   -0.1965154    0.0942033
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0334108   -0.1793658    0.1125441
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0470084    0.0062055    0.0878112
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0847806    0.0388136    0.1307475
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1152286    0.0553366    0.1751207
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0193706   -0.0657828    0.0270417
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0377649   -0.0132784    0.0888081
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0456323    0.0018665    0.0893982
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.0591394   -0.1571890    0.0389103
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                 -0.0150326   -0.0940112    0.0639459
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.0333680   -0.0411700    0.1079061
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0165550   -0.0542511    0.0873611
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0478315   -0.0380203    0.1336833
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.1210357    0.0060538    0.2360176
3-6 months     ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           2                    1                 -0.0650310   -0.1323419    0.0022799
3-6 months     ki1114097-CMIN             PERU                           3                    1                 -0.0165755   -0.0791612    0.0460102
3-6 months     ki1114097-CMIN             PERU                           4                    1                 -0.0124887   -0.0741045    0.0491271
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0483281   -0.1058301    0.0091739
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0128056   -0.0696880    0.0440768
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0114944   -0.0590510    0.0820398
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0526360   -0.0277450    0.1330171
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0248081   -0.0582905    0.1079068
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1028829   -0.1075951    0.3133609
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0200820   -0.0688995    0.0287355
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0252651   -0.0358048    0.0863351
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.0202826   -0.0769646    0.1175297
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0071996   -0.0422041    0.0566032
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0152191   -0.0345324    0.0649706
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0464650   -0.0598169    0.1527469
6-9 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0192144   -0.0894874    0.0510585
6-9 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.0280777   -0.0378818    0.0940372
6-9 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0532476   -0.0150888    0.1215840
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0371775   -0.0507491    0.1251042
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0633415   -0.0158604    0.1425435
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0422029   -0.0383612    0.1227671
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0019347   -0.0824795    0.0863488
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0060701   -0.0887825    0.0766422
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0045973   -0.0770784    0.0678837
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0253799   -0.0222816    0.0730413
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0128686   -0.0299762    0.0557135
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0875661    0.0460152    0.1291170
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0750887   -0.0183695    0.1685469
6-9 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.1258636    0.0064447    0.2452824
6-9 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.0725189   -0.0187825    0.1638203
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.0350390   -0.0916820    0.0216039
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0187674   -0.0373115    0.0748462
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0202617   -0.0397809    0.0803042
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0241412   -0.0379489    0.0862312
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    1                 -0.0031288   -0.0702132    0.0639556
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.1189968   -0.0068175    0.2448111
6-9 months     ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             PERU                           2                    1                 -0.0390816   -0.0963256    0.0181624
6-9 months     ki1114097-CMIN             PERU                           3                    1                  0.0462793   -0.0178451    0.1104037
6-9 months     ki1114097-CMIN             PERU                           4                    1                 -0.0036657   -0.0560804    0.0487490
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0189925   -0.0330741    0.0710590
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0145284   -0.0674520    0.0383951
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0044637   -0.0702507    0.0613233
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0461981   -0.1378717    0.0454756
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0217224   -0.0678215    0.1112663
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1020876   -0.0369402    0.2411153
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0221482   -0.0613383    0.0170419
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0200544   -0.0256861    0.0657949
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0197843   -0.0932440    0.0536754
9-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           2                    1                 -0.0236560   -0.0824625    0.0351506
9-12 months    ki0047075b-MAL-ED          PERU                           3                    1                 -0.0007216   -0.0590845    0.0576413
9-12 months    ki0047075b-MAL-ED          PERU                           4                    1                 -0.0061460   -0.0744925    0.0622004
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0443735   -0.0552033    0.1439503
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0695706   -0.0228611    0.1620024
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0740434   -0.0246510    0.1727378
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1236073    0.0248982    0.2223163
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0814167   -0.0174737    0.1803072
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1087373    0.0029727    0.2145019
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0054112   -0.1295532    0.1187307
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.1501090    0.0135959    0.2866221
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.0967535   -0.0550462    0.2485533
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0164502   -0.0847372    0.0518368
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0321557   -0.1080740    0.0437625
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0016534   -0.0614320    0.0647388
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0187581   -0.0213891    0.0589053
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0252460   -0.0160811    0.0665731
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0309573   -0.0090068    0.0709213
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0424543   -0.1345203    0.0496116
9-12 months    ki1101329-Keneba           GAMBIA                         3                    1                  0.0340777   -0.0509369    0.1190924
9-12 months    ki1101329-Keneba           GAMBIA                         4                    1                  0.0360641   -0.0462739    0.1184021
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0313377   -0.0139144    0.0765898
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0547258    0.0047824    0.1046692
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0327684   -0.0078735    0.0734104
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    1                  0.0620385    0.0057436    0.1183335
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    1                  0.1222271    0.0536771    0.1907770
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    1                  0.1011512    0.0097897    0.1925126
9-12 months    ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             PERU                           2                    1                 -0.0001000   -0.0632613    0.0630613
9-12 months    ki1114097-CMIN             PERU                           3                    1                 -0.0138834   -0.0752698    0.0475030
9-12 months    ki1114097-CMIN             PERU                           4                    1                  0.0122573   -0.0435067    0.0680214
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0096760   -0.0478831    0.0285311
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0168636   -0.0198024    0.0535297
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0350383   -0.0219502    0.0920269
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0676579   -0.0074384    0.1427542
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0371811   -0.0312015    0.1055636
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0878329    0.0102560    0.1654098
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0137537   -0.0200594    0.0475668
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0287701   -0.0168941    0.0744343
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0103080   -0.1574684    0.1780843
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0189955   -0.0177004    0.0556914
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0122032   -0.0271460    0.0515525
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0183859   -0.0563967    0.0931686
12-15 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0064747   -0.0687972    0.0817467
12-15 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0301002   -0.0434598    0.1036601
12-15 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0231926   -0.0542333    0.1006184
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0410280   -0.0318822    0.1139381
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0575761   -0.0078533    0.1230055
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0814798    0.0121775    0.1507821
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0378777   -0.0447250    0.1204805
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0682396   -0.0083737    0.1448529
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0591749   -0.0224852    0.1408350
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0155229   -0.0130830    0.0441288
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0015616   -0.0264860    0.0296092
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0193686   -0.0112033    0.0499405
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0183766   -0.0624865    0.0257333
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0130526   -0.0307297    0.0568349
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0212145   -0.0207849    0.0632138
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0442894   -0.0108283    0.0994070
12-15 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0332351   -0.0876247    0.0211545
12-15 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0540070   -0.1101708    0.0021568
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0200177   -0.0472910    0.0873264
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 -0.0272964   -0.0922136    0.0376208
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0071618   -0.0641117    0.0784353
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0478071    0.0020982    0.0935161
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0543787   -0.0128118    0.1215693
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0423460   -0.0463599    0.1310519
12-15 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             PERU                           2                    1                  0.0072266   -0.0907240    0.1051771
12-15 months   ki1114097-CMIN             PERU                           3                    1                  0.0084061   -0.0837228    0.1005350
12-15 months   ki1114097-CMIN             PERU                           4                    1                  0.0248121   -0.0633573    0.1129816
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0089707   -0.0750176    0.0570763
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0292178   -0.0379241    0.0963596
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0193811   -0.0888141    0.0500518
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0011906   -0.0373650    0.0349838
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0419381   -0.0019521    0.0858283
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0227833   -0.0245114    0.0700780
15-18 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0544284   -0.0096793    0.1185360
15-18 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0160659   -0.0449397    0.0770715
15-18 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0240783   -0.0400215    0.0881781
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0078236   -0.0771096    0.0614623
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0097582   -0.0565678    0.0760841
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0054665   -0.0582211    0.0691541
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0003778   -0.0694127    0.0686570
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0351787   -0.1059475    0.0355901
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0170580   -0.0569394    0.0910555
15-18 months   ki1000109-EE               PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       2                    1                  0.0476631   -0.0278472    0.1231734
15-18 months   ki1000109-EE               PAKISTAN                       3                    1                  0.0719114    0.0147969    0.1290259
15-18 months   ki1000109-EE               PAKISTAN                       4                    1                  0.0976486    0.0141822    0.1811149
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0160922   -0.0090015    0.0411859
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0000636   -0.0257775    0.0259048
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0000880   -0.0293613    0.0295372
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0163957   -0.0622390    0.0294476
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0336584   -0.0108138    0.0781305
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0418670    0.0026775    0.0810564
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0224654   -0.0662397    0.0213089
15-18 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0138405   -0.0623704    0.0346895
15-18 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0111080   -0.0513743    0.0735902
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0403765   -0.0028638    0.0836167
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0164621   -0.0313109    0.0642352
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0642532   -0.0374211    0.1659274
15-18 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             PERU                           2                    1                  0.0112064   -0.0605971    0.0830099
15-18 months   ki1114097-CMIN             PERU                           3                    1                  0.0113871   -0.0520212    0.0747955
15-18 months   ki1114097-CMIN             PERU                           4                    1                  0.0200238   -0.0405283    0.0805759
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0174042   -0.0161565    0.0509649
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0174662   -0.0156199    0.0505522
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0706441    0.0287020    0.1125863
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0619155   -0.2232467    0.0994157
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0558318   -0.2104405    0.0987768
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0639060   -0.2192942    0.0914821
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0122689   -0.0206096    0.0451473
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0174199   -0.0504084    0.0155687
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0018528   -0.0575657    0.0538600
18-21 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0371013   -0.0027023    0.0769050
18-21 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0445566    0.0085287    0.0805846
18-21 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0822554    0.0322821    0.1322288
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0080678   -0.0737301    0.0575944
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0472108   -0.0179499    0.1123716
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0723967    0.0072932    0.1375002
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0166602   -0.0617379    0.0950582
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0451416   -0.0287434    0.1190265
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0660604   -0.0106625    0.1427833
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0082936   -0.1526506    0.1360634
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0439231   -0.1389228    0.2267690
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 -0.0940804   -0.2299468    0.0417860
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0113518   -0.0371208    0.0144172
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0153630   -0.0411294    0.0104034
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0220257   -0.0060835    0.0501350
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0059277   -0.0514308    0.0395753
18-21 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0435018   -0.0932430    0.0062394
18-21 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0188078   -0.0656298    0.0280141
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0014531   -0.0336226    0.0365288
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0522582   -0.0026590    0.1071753
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    1                 -0.0342481   -0.1078324    0.0393362
18-21 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             PERU                           2                    1                 -0.0861662   -0.1678699   -0.0044624
18-21 months   ki1114097-CMIN             PERU                           3                    1                 -0.0661614   -0.1433727    0.0110499
18-21 months   ki1114097-CMIN             PERU                           4                    1                 -0.0560319   -0.1313011    0.0192373
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0149222   -0.0171997    0.0470441
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0070136   -0.0252074    0.0392346
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0498366   -0.1077192    0.0080459
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0290892   -0.0253895    0.0835679
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0215844   -0.0321977    0.0753665
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0247230   -0.0301378    0.0795839
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0042138   -0.0354098    0.0269821
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0063123   -0.0273852    0.0400098
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0155934   -0.0593388    0.0281519
21-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0276475   -0.0111184    0.0664134
21-24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0432855    0.0067746    0.0797964
21-24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0753787    0.0377613    0.1129960
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0160313   -0.0814030    0.0493405
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0079911   -0.0513301    0.0673123
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0277972   -0.0286482    0.0842426
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0403659   -0.0240281    0.1047600
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0075293   -0.0657252    0.0506667
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0159904   -0.0518206    0.0838014
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0020617   -0.0266746    0.0225512
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0111677   -0.0167413    0.0390766
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0302013   -0.0019966    0.0623992
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0183079   -0.0698346    0.0332188
21-24 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.0161911   -0.0348010    0.0671832
21-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0015057   -0.0632639    0.0602525
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0131785   -0.0283597    0.0547168
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0540694   -0.0061691    0.1143080
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0794283    0.0017403    0.1571163


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0706359    0.0294146   0.1118572
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0002324   -0.0767899   0.0763251
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0263541   -0.0126059   0.0653142
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0006466   -0.0499111   0.0512043
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0298493   -0.0714922   0.1311908
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0754754   -0.0325088   0.1834595
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0431393   -0.1765460   0.0902675
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0382091    0.0188228   0.0575954
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0184507   -0.0095324   0.0464338
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0032794   -0.0534238   0.0468649
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0310584   -0.0071666   0.0692835
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0227350   -0.0650876   0.0196176
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0231221   -0.0687754   0.0225313
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0385690   -0.0235178   0.1006558
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0025469   -0.0252881   0.0201942
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0099188   -0.0222124   0.0420500
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0209805   -0.0292195   0.0711806
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0413923   -0.0177893   0.1005739
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0030352   -0.0593216   0.0532512
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0337983    0.0078514   0.0597451
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0621040    0.0041980   0.1200100
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0021093   -0.0361952   0.0319766
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0173268   -0.0110418   0.0456954
6-9 months     ki1114097-CMIN             PERU                           1                    NA                 0.0028268   -0.0385424   0.0441959
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0004059   -0.0423796   0.0431914
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0041675   -0.0703449   0.0786799
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0050683   -0.0309910   0.0208543
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0086022   -0.0509148   0.0337103
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0540019   -0.0193189   0.1273227
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0916260    0.0096821   0.1735700
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0503813   -0.0328738   0.1336363
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0112677   -0.0485663   0.0260309
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0194793   -0.0057319   0.0446905
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0035571   -0.0382316   0.0453458
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0310850    0.0024130   0.0597571
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0477900    0.0218564   0.0737235
9-12 months    ki1114097-CMIN             PERU                           1                    NA                 0.0038959   -0.0448278   0.0526196
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0064902   -0.0223589   0.0353393
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0519255   -0.0064256   0.1102766
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0068971   -0.0059736   0.0197678
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0114427   -0.0107710   0.0336564
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0184386   -0.0433853   0.0802625
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0505006    0.0019701   0.0990311
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0487140   -0.0122807   0.1097087
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0080084   -0.0081514   0.0241681
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0066518   -0.0228902   0.0361938
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0029036   -0.0298521   0.0240449
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0012128   -0.0414234   0.0438491
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0254688    0.0032675   0.0476702
12-15 months   ki1114097-CMIN             PERU                           1                    NA                 0.0168842   -0.0634262   0.0971946
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0029184   -0.0497594   0.0555962
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0119182   -0.0118496   0.0356860
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0271988   -0.0258058   0.0802033
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0029317   -0.0502872   0.0561507
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0065175   -0.0603724   0.0473374
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                 0.0446171    0.0093680   0.0798661
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0044437   -0.0093595   0.0182470
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0186012   -0.0074077   0.0446100
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0080643   -0.0318271   0.0156985
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0214911   -0.0006156   0.0435977
15-18 months   ki1114097-CMIN             PERU                           1                    NA                 0.0160515   -0.0400776   0.0721806
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0160449   -0.0089810   0.0410708
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0545683   -0.1954915   0.0863549
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0000573   -0.0210748   0.0209603
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0393754    0.0135441   0.0652067
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0412920   -0.0129358   0.0955198
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0382158   -0.0229267   0.0993583
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0005647   -0.1077465   0.1088759
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0022010   -0.0161286   0.0117266
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0126811   -0.0337762   0.0084141
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0061953   -0.0109900   0.0233806
18-21 months   ki1114097-CMIN             PERU                           1                    NA                -0.0600695   -0.1327156   0.0125765
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0061421   -0.0174891   0.0297733
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0223371   -0.0220299   0.0667040
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0010941   -0.0206192   0.0184311
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0375782    0.0125934   0.0625630
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0128888   -0.0358533   0.0616308
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0086666   -0.0392086   0.0565418
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0062468   -0.0065005   0.0189942
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0008557   -0.0275578   0.0258465
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0169736   -0.0012697   0.0352170

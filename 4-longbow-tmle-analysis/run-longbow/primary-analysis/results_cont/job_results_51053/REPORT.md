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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* single
* W_nrooms
* month
* brthmon
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor

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




# Results Detail

## Results Plots
![](/tmp/de1ff2ac-ef27-4e0d-a0c5-4dafc4a3f0e9/c2d49831-7b84-4f39-ac69-efd7b3820224/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/de1ff2ac-ef27-4e0d-a0c5-4dafc4a3f0e9/c2d49831-7b84-4f39-ac69-efd7b3820224/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/de1ff2ac-ef27-4e0d-a0c5-4dafc4a3f0e9/c2d49831-7b84-4f39-ac69-efd7b3820224/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0909130   -0.1372086   -0.0446175
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0016656   -0.0350953    0.0384265
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0159116   -0.0557348    0.0239115
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                 0.0428840   -0.0619223    0.1476903
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0635310   -0.0207615    0.1478236
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0569195    0.0030007    0.1108383
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0562585   -0.0090305    0.1215474
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0315860   -0.1463122    0.2094842
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0664792   -0.1208964   -0.0120621
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0455418   -0.0858592   -0.0052244
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0032673   -0.0468830    0.0534176
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    NA                 0.0199466   -0.1293903    0.1692835
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0176522   -0.0757692    0.0404649
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0401690   -0.0857201    0.0053820
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0350023   -0.0779612    0.0079566
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                 0.1160109    0.0151331    0.2168887
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0107589   -0.0964378    0.1179556
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                 0.0228831   -0.0483108    0.0940769
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                 0.0251816   -0.0286890    0.0790523
3-6 months     ki0047075b-MAL-ED          PERU                           4                    NA                 0.0454017   -0.0046837    0.0954871
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0774842   -0.1953635    0.0403952
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0650616   -0.1383263    0.0082030
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0028550   -0.0624911    0.0682010
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0664818   -0.0034215    0.1363851
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0109851   -0.1473027    0.1692729
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0818095   -0.1454105   -0.0182085
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0732675   -0.1268517   -0.0196833
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0576109   -0.1127453   -0.0024765
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0640826   -0.0898285   -0.0383366
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0179859   -0.0508284    0.0148567
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                 0.0240486   -0.0148725    0.0629697
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0516743   -0.0095092    0.1128578
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1033979   -0.1362154   -0.0705803
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1238949   -0.1572547   -0.0905351
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0650209   -0.1043463   -0.0256956
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0546965   -0.0842303   -0.0251627
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0026797   -0.0548561    0.0602154
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.0550648   -0.1359685    0.0258389
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                -0.0156259   -0.0703089    0.0390570
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                 0.0312182   -0.0166920    0.0791283
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0386017   -0.0845030    0.0072996
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0182097   -0.0725556    0.0361362
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    NA                 0.0215759   -0.0549232    0.0980750
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    NA                 0.1028380   -0.0093375    0.2150135
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0326224   -0.0781625    0.0129178
3-6 months     ki1114097-CMIN             PERU                           2                    NA                -0.0927006   -0.1432046   -0.0421966
3-6 months     ki1114097-CMIN             PERU                           3                    NA                -0.0464618   -0.0902214   -0.0027023
3-6 months     ki1114097-CMIN             PERU                           4                    NA                -0.0457886   -0.0878721   -0.0037050
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0457949   -0.0975942    0.0060045
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0960605   -0.1242951   -0.0678258
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0614227   -0.0884305   -0.0344149
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0370106   -0.0896470    0.0156257
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0117808   -0.0777771    0.0542155
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0188838   -0.0329193    0.0706868
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0115251   -0.0454627    0.0685128
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0872248   -0.1306695    0.3051191
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0622393   -0.0955391   -0.0289395
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0823213   -0.1180182   -0.0466244
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0369742   -0.0881666    0.0142183
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0419568   -0.1333249    0.0494114
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0423554   -0.0810963   -0.0036145
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0339525   -0.0659916   -0.0019134
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0282200   -0.0604754    0.0040355
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                 0.0176130   -0.0833619    0.1185880
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0624271   -0.1162563   -0.0085978
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.0735986   -0.1229268   -0.0242704
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.0255558   -0.0679328    0.0168213
6-9 months     ki0047075b-MAL-ED          PERU                           4                    NA                -0.0008451   -0.0475345    0.0458442
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0523184   -0.1189393    0.0143025
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0227055   -0.0875677    0.0421566
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0041146   -0.0471348    0.0553639
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0194892   -0.0722817    0.0333034
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1110141   -0.1730364   -0.0489918
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0989648   -0.1683536   -0.0295759
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1081882   -0.1725949   -0.0437815
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1024336   -0.1508432   -0.0540241
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0844714   -0.1134169   -0.0555258
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0627860   -0.1012305   -0.0243414
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0707954   -0.1030499   -0.0385408
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.0067464   -0.0236040    0.0370967
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0680032   -0.1412477    0.0052413
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                 0.0126285   -0.0471768    0.0724339
6-9 months     ki1101329-Keneba           GAMBIA                         3                    NA                 0.0921561   -0.0087116    0.1930239
6-9 months     ki1101329-Keneba           GAMBIA                         4                    NA                 0.0223506   -0.0333041    0.0780053
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0940099   -0.1350045   -0.0530153
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.1288883   -0.1694553   -0.0883213
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0808773   -0.1213374   -0.0404173
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0784607   -0.1248736   -0.0320478
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0662605   -0.1044728   -0.0280482
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0462141   -0.0965659    0.0041378
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0739618   -0.1335276   -0.0143960
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0410815   -0.0869216    0.1690846
6-9 months     ki1114097-CMIN             PERU                           1                    NA                -0.1147423   -0.1583908   -0.0710938
6-9 months     ki1114097-CMIN             PERU                           2                    NA                -0.1530816   -0.1916530   -0.1145102
6-9 months     ki1114097-CMIN             PERU                           3                    NA                -0.0667527   -0.1168489   -0.0166565
6-9 months     ki1114097-CMIN             PERU                           4                    NA                -0.1166375   -0.1470932   -0.0861819
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0751904   -0.1240915   -0.0262894
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0674037   -0.0924869   -0.0423204
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.1004365   -0.1271885   -0.0736845
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0859396   -0.1337273   -0.0381519
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0073163   -0.0814010    0.0960336
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0367797   -0.0871776    0.0136182
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0281058   -0.0160220    0.0722336
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0973604   -0.0309754    0.2256961
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0551190   -0.0858777   -0.0243602
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0801559   -0.1056007   -0.0547110
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0356054   -0.0711519   -0.0000590
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0559329   -0.1392361    0.0273702
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0479370   -0.0965006    0.0006266
9-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                -0.0577912   -0.0961114   -0.0194710
9-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                -0.0309725   -0.0695061    0.0075611
9-12 months    ki0047075b-MAL-ED          PERU                           4                    NA                -0.0340229   -0.0851312    0.0170854
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1410458   -0.2297679   -0.0523236
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.1026099   -0.1608289   -0.0443909
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0686853   -0.1084045   -0.0289660
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0679067   -0.1214564   -0.0143571
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2317023   -0.3173330   -0.1460716
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1115427   -0.1598279   -0.0632575
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1500032   -0.1990535   -0.1009529
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1285425   -0.1900286   -0.0670565
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2352221   -0.3023636   -0.1680806
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.2406333   -0.3450519   -0.1362148
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0851131   -0.2039737    0.0337475
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.1384685   -0.2746125   -0.0023246
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0448414   -0.0928561    0.0031732
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0594623   -0.1083375   -0.0105872
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0736852   -0.1353434   -0.0120269
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0334316   -0.0766889    0.0098257
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0851316   -0.1139539   -0.0563094
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0664635   -0.0949483   -0.0379787
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0583389   -0.0884425   -0.0282354
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0556017   -0.0836169   -0.0275864
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1077944   -0.1675922   -0.0479966
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.1413426   -0.2170933   -0.0655920
9-12 months    ki1101329-Keneba           GAMBIA                         3                    NA                -0.0763728   -0.1404104   -0.0123352
9-12 months    ki1101329-Keneba           GAMBIA                         4                    NA                -0.0594592   -0.1175995   -0.0013189
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0806258   -0.1122929   -0.0489586
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.0518190   -0.0881053   -0.0155328
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0367987   -0.0755590    0.0019617
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0576615   -0.0860165   -0.0293064
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1355117   -0.1667203   -0.1043031
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0675832   -0.1175849   -0.0175814
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0092041   -0.0724871    0.0540790
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0248744   -0.1196185    0.0698696
9-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0686746   -0.1223350   -0.0150142
9-12 months    ki1114097-CMIN             PERU                           2                    NA                -0.0758700   -0.1154849   -0.0362552
9-12 months    ki1114097-CMIN             PERU                           3                    NA                -0.0928357   -0.1284994   -0.0571721
9-12 months    ki1114097-CMIN             PERU                           4                    NA                -0.0642202   -0.0877703   -0.0406701
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0542890   -0.0832413   -0.0253366
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0710182   -0.0975719   -0.0444644
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0431702   -0.0678560   -0.0184844
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0155384   -0.0686621    0.0375852
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0471525   -0.1138967    0.0195917
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0169875   -0.0287446    0.0627196
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0165558   -0.0483301    0.0152186
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0353531   -0.0167492    0.0874554
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0635497   -0.0829903   -0.0441091
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0497960   -0.0774616   -0.0221304
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0347796   -0.0760989    0.0065396
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0532418   -0.2198880    0.1134045
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0685577   -0.0946928   -0.0424226
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0511559   -0.0779682   -0.0243435
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0563544   -0.0868118   -0.0258970
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0363873   -0.1180586    0.0452841
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0816099   -0.1534061   -0.0098137
12-15 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0775301   -0.1089066   -0.0461536
12-15 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0547503   -0.0811646   -0.0283359
12-15 months   ki0047075b-MAL-ED          PERU                           4                    NA                -0.0621172   -0.0978613   -0.0263731
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1168507   -0.1696990   -0.0640024
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0722006   -0.1223233   -0.0220780
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0539355   -0.0927989   -0.0150721
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0314666   -0.0773925    0.0144594
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1266902   -0.1940288   -0.0593516
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0787080   -0.1311426   -0.0262733
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0504466   -0.0933962   -0.0074971
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0533351   -0.1032384   -0.0034318
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0444362   -0.0634571   -0.0254153
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0287572   -0.0501901   -0.0073243
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0448166   -0.0654730   -0.0241602
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0256211   -0.0499181   -0.0013241
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0683564   -0.1017501   -0.0349627
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0910443   -0.1218332   -0.0602555
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0599482   -0.0887816   -0.0311149
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0503290   -0.0760400   -0.0246181
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0561303   -0.0910867   -0.0211739
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0127826   -0.0543215    0.0287562
12-15 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0874757   -0.1317797   -0.0431717
12-15 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.1125760   -0.1587365   -0.0664155
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0071469   -0.0640924    0.0497987
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                 0.0011480   -0.0453435    0.0476394
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0567479   -0.0882866   -0.0252092
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0067364   -0.0628096    0.0493368
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0892063   -0.1192860   -0.0591267
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0431455   -0.0787849   -0.0075061
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0468587   -0.1105987    0.0168814
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0574461   -0.1493051    0.0344128
12-15 months   ki1114097-CMIN             PERU                           1                    NA                -0.0907591   -0.1804639   -0.0010542
12-15 months   ki1114097-CMIN             PERU                           2                    NA                -0.0896236   -0.1391423   -0.0401050
12-15 months   ki1114097-CMIN             PERU                           3                    NA                -0.0853743   -0.1202058   -0.0505429
12-15 months   ki1114097-CMIN             PERU                           4                    NA                -0.0687657   -0.0902656   -0.0472659
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0046066   -0.0638658    0.0546527
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0323413   -0.0688212    0.0041387
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0024685   -0.0351933    0.0401304
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0364355   -0.0796761    0.0068052
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0619677   -0.0906245   -0.0333108
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0677100   -0.0909240   -0.0444961
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0240835   -0.0581970    0.0100301
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0474369   -0.0850176   -0.0098563
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0633126   -0.1173810   -0.0092442
15-18 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0084351   -0.0392838    0.0224136
15-18 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0458400   -0.0688174   -0.0228626
15-18 months   ki0047075b-MAL-ED          PERU                           4                    NA                -0.0381337   -0.0697285   -0.0065388
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0390310   -0.0989599    0.0208979
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0400567   -0.0816694    0.0015561
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0231004   -0.0593006    0.0130997
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0286661   -0.0593436    0.0020115
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0631818   -0.1243742   -0.0019894
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0712828   -0.1096277   -0.0329380
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1044534   -0.1455911   -0.0633157
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0579004   -0.1036672   -0.0121336
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0525249   -0.0886449   -0.0164049
15-18 months   ki1000109-EE               PAKISTAN                       2                    NA                -0.0048618   -0.0711729    0.0614493
15-18 months   ki1000109-EE               PAKISTAN                       3                    NA                 0.0193865   -0.0248562    0.0636291
15-18 months   ki1000109-EE               PAKISTAN                       4                    NA                 0.0451237   -0.0301224    0.1203698
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0458275   -0.0622256   -0.0294294
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0317451   -0.0511775   -0.0123127
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0485953   -0.0697443   -0.0274464
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0480269   -0.0731336   -0.0229202
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0403226   -0.0698408   -0.0108043
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0530857   -0.0889131   -0.0172584
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0088891   -0.0425843    0.0248060
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.0013834   -0.0255561    0.0283229
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0371935   -0.0701586   -0.0042284
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0543176   -0.0834628   -0.0251723
15-18 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0534856   -0.0903241   -0.0166470
15-18 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.0301135   -0.0844777    0.0242506
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0822042   -0.1089483   -0.0554600
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0443441   -0.0811399   -0.0075483
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0710371   -0.1145301   -0.0275441
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0074026   -0.1144076    0.0996025
15-18 months   ki1114097-CMIN             PERU                           1                    NA                -0.0458397   -0.1060954    0.0144160
15-18 months   ki1114097-CMIN             PERU                           2                    NA                -0.0454876   -0.0898217   -0.0011534
15-18 months   ki1114097-CMIN             PERU                           3                    NA                -0.0404719   -0.0693441   -0.0115997
15-18 months   ki1114097-CMIN             PERU                           4                    NA                -0.0337693   -0.0539890   -0.0135495
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0315458   -0.0593056   -0.0037860
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0141416   -0.0330020    0.0047188
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0140797   -0.0320819    0.0039226
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                 0.0390983    0.0076573    0.0705393
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0920457   -0.0821137    0.2662052
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0285246   -0.0895878    0.0325387
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0173205   -0.0466811    0.0120401
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0301341   -0.0616468    0.0013785
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0293986   -0.0531975   -0.0055997
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0162782   -0.0389493    0.0063930
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0425138   -0.0660262   -0.0190014
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0353045   -0.0884647    0.0178557
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0476814   -0.0752914   -0.0200715
18-21 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0108869   -0.0404977    0.0187240
18-21 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0014722   -0.0268968    0.0239524
18-21 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.0386643   -0.0096546    0.0869831
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0751972   -0.1278008   -0.0225936
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0764176   -0.1144533   -0.0383820
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0309198   -0.0660838    0.0042443
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0029712   -0.0385572    0.0326149
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0666217   -0.1359108    0.0026674
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0518965   -0.0983681   -0.0054248
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0235010   -0.0595165    0.0125145
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0017880   -0.0447980    0.0412221
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0572235   -0.1864775    0.0720305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0655172   -0.1298005   -0.0012338
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0133004   -0.1426296    0.1160287
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.1513039   -0.1931737   -0.1094341
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0083899   -0.0255784    0.0087987
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0196255   -0.0391926   -0.0000583
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0228415   -0.0431238   -0.0025592
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0171516   -0.0060366    0.0403398
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0001724   -0.0273041    0.0269594
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0014806   -0.0387163    0.0357551
18-21 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0477688   -0.0902180   -0.0053196
18-21 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.0233953   -0.0602407    0.0134501
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0153822   -0.0381763    0.0074119
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0092886   -0.0373218    0.0187446
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    NA                 0.0353779   -0.0135471    0.0843030
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0586322   -0.1452199    0.0279555
18-21 months   ki1114097-CMIN             PERU                           1                    NA                 0.0386834   -0.0346566    0.1120235
18-21 months   ki1114097-CMIN             PERU                           2                    NA                -0.0474827   -0.0834929   -0.0114725
18-21 months   ki1114097-CMIN             PERU                           3                    NA                -0.0274780   -0.0516195   -0.0033364
18-21 months   ki1114097-CMIN             PERU                           4                    NA                -0.0173485   -0.0342803   -0.0004166
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0388302    0.0128424    0.0648179
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0514088    0.0302842    0.0725334
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                 0.0453496    0.0245993    0.0660999
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0054168   -0.0693993    0.0585657
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0016175   -0.0473081    0.0505432
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0355967    0.0054495    0.0657440
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0299621    0.0019175    0.0580067
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0321251    0.0015891    0.0626611
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0222840   -0.0002216    0.0447896
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0166554   -0.0059609    0.0392716
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0281728    0.0017190    0.0546266
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0059654   -0.0485299    0.0365991
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0241328   -0.0004059    0.0486715
21-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0505263    0.0203021    0.0807505
21-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.0670258    0.0392089    0.0948427
21-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.1005547    0.0702786    0.1308309
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0562015    0.0047102    0.1076928
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.0364064   -0.0075509    0.0803638
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0537327    0.0220666    0.0853988
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0734054    0.0479240    0.0988868
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0250602   -0.0378124    0.0879329
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0637682    0.0239409    0.1035955
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0111635   -0.0167499    0.0390768
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.0332035   -0.0105285    0.0769356
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0497270    0.0332916    0.0661625
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0480206    0.0292967    0.0667446
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                 0.0649941    0.0417194    0.0882689
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0819731    0.0531885    0.1107576
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0087522   -0.0244250    0.0419293
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0186159   -0.0601774    0.0229455
21-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                 0.0182581   -0.0225833    0.0590995
21-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                 0.0044347   -0.0496735    0.0585429
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
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0925787    0.0334014    0.1517559
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0750014    0.0142199    0.1357828
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.1337970    0.0192635    0.2483305
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0066116   -0.1065322    0.0933091
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0072726   -0.1135718    0.0990266
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0319450   -0.2289294    0.1650393
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0209374   -0.0467879    0.0886627
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0697465   -0.0042553    0.1437484
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.0864258   -0.0725167    0.2453683
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0225169   -0.0963677    0.0513339
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0173501   -0.0896699    0.0549696
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1336630    0.0174354    0.2498906
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.0121242   -0.1164387    0.1406872
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.0144228   -0.1054733    0.1343189
3-6 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0346429   -0.0839030    0.1531887
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0124225   -0.1265069    0.1513520
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0803391   -0.0545043    0.2151825
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1439660    0.0067933    0.2811386
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0927946   -0.2636619    0.0780727
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0842526   -0.2512212    0.0827160
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0685960   -0.2358326    0.0986407
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0460967    0.0044318    0.0877616
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0881312    0.0413179    0.1349444
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1157569    0.0492619    0.1822519
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0204971   -0.0672164    0.0262223
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0383770   -0.0128132    0.0895671
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0487014    0.0045348    0.0928680
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.0577445   -0.1569155    0.0414266
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                 -0.0183056   -0.0975250    0.0609138
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.0285385   -0.0463470    0.1034240
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0203920   -0.0511350    0.0919190
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0601776   -0.0289238    0.1492790
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.1414397    0.0198488    0.2630306
3-6 months     ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           2                    1                 -0.0600782   -0.1278472    0.0076908
3-6 months     ki1114097-CMIN             PERU                           3                    1                 -0.0138394   -0.0772272    0.0495483
3-6 months     ki1114097-CMIN             PERU                           4                    1                 -0.0131662   -0.0751238    0.0487914
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0502656   -0.1092647    0.0087334
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0156278   -0.0740804    0.0428247
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0087842   -0.0650980    0.0826665
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0306646   -0.0530440    0.1143731
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0233059   -0.0645589    0.1111706
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0990056   -0.1290252    0.3270364
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0200820   -0.0688995    0.0287355
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0252651   -0.0358048    0.0863351
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.0202826   -0.0769646    0.1175297
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0084029   -0.0419085    0.0587143
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0141354   -0.0363725    0.0646433
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0599684   -0.0481600    0.1680969
6-9 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0111715   -0.0845006    0.0621576
6-9 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.0368713   -0.0320571    0.1057997
6-9 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0615819   -0.0100305    0.1331944
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0296129   -0.0637841    0.1230098
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0564330   -0.0279163    0.1407822
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0328292   -0.0524581    0.1181165
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0120493   -0.0814937    0.1055924
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0028259   -0.0864164    0.0920681
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0085805   -0.0709859    0.0881469
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0216854   -0.0264695    0.0698404
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0136760   -0.0297658    0.0571178
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0912177    0.0492206    0.1332149
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0806317   -0.0139443    0.1752078
6-9 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.1601594    0.0352895    0.2850292
6-9 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.0903538   -0.0023225    0.1830301
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.0348783   -0.0929174    0.0231607
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0131326   -0.0445844    0.0708496
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0155492   -0.0466885    0.0777869
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0200465   -0.0433064    0.0833994
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    1                 -0.0077013   -0.0784939    0.0630913
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.1073420   -0.0262266    0.2409107
6-9 months     ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             PERU                           2                    1                 -0.0383393   -0.0965539    0.0198754
6-9 months     ki1114097-CMIN             PERU                           3                    1                  0.0479897   -0.0183886    0.1143679
6-9 months     ki1114097-CMIN             PERU                           4                    1                 -0.0018952   -0.0550587    0.0512683
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0077868   -0.0473157    0.0628893
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0252461   -0.0810292    0.0305370
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0107492   -0.0789431    0.0574448
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0440960   -0.1462033    0.0580113
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0207895   -0.0784978    0.1200768
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0900440   -0.0660176    0.2461057
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0250369   -0.0650288    0.0149550
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0195135   -0.0275110    0.0665381
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0008140   -0.0897821    0.0881541
9-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           2                    1                 -0.0098542   -0.0720718    0.0523634
9-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.0169645   -0.0455232    0.0794522
9-12 months    ki0047075b-MAL-ED          PERU                           4                    1                  0.0139141   -0.0566367    0.0844648
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0384359   -0.0679771    0.1448489
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0723605   -0.0249645    0.1696854
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0731390   -0.0308067    0.1770848
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1201595    0.0219176    0.2184015
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0816991   -0.0170268    0.1804249
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1031597   -0.0021809    0.2085003
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0054112   -0.1295532    0.1187307
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.1501090    0.0135959    0.2866221
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.0967535   -0.0550462    0.2485533
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0146209   -0.0828496    0.0536078
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0288437   -0.1068382    0.0491507
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0114098   -0.0529619    0.0757816
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0186681   -0.0218089    0.0591452
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0267927   -0.0150413    0.0686267
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0295300   -0.0108172    0.0698772
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0335482   -0.1303472    0.0632508
9-12 months    ki1101329-Keneba           GAMBIA                         3                    1                  0.0314216   -0.0560379    0.1188811
9-12 months    ki1101329-Keneba           GAMBIA                         4                    1                  0.0483352   -0.0360405    0.1327109
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0288067   -0.0192170    0.0768305
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0438271   -0.0065010    0.0941552
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0229643   -0.0196153    0.0655439
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    1                  0.0679286    0.0089451    0.1269120
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    1                  0.1263076    0.0554632    0.1971520
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    1                  0.1106373    0.0104121    0.2108624
9-12 months    ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             PERU                           2                    1                 -0.0071954   -0.0738674    0.0594766
9-12 months    ki1114097-CMIN             PERU                           3                    1                 -0.0241611   -0.0886909    0.0403686
9-12 months    ki1114097-CMIN             PERU                           4                    1                  0.0044544   -0.0541099    0.0630188
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0167292   -0.0560215    0.0225631
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0111188   -0.0269861    0.0492236
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0387505   -0.0216843    0.0991853
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0641400   -0.0168055    0.1450855
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0305967   -0.0431831    0.1043765
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0825056   -0.0020241    0.1670353
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0137537   -0.0200594    0.0475668
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0287701   -0.0168941    0.0744343
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0103080   -0.1574684    0.1780843
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0174018   -0.0202396    0.0550432
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0122033   -0.0280820    0.0524886
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0321704   -0.0535916    0.1179324
12-15 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0040797   -0.0743458    0.0825053
12-15 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0268596   -0.0496710    0.1033902
12-15 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0194927   -0.0607062    0.0996915
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0446501   -0.0280931    0.1173933
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0629152   -0.0027944    0.1286249
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0853841    0.0153963    0.1553719
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0479822   -0.0375680    0.1335324
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0762436   -0.0041683    0.1566554
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0733550   -0.0102243    0.1569344
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0156790   -0.0129461    0.0443041
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0003804   -0.0284721    0.0277112
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0188150   -0.0119717    0.0496018
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0226879   -0.0682210    0.0228452
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0084082   -0.0356868    0.0525032
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0180274   -0.0241131    0.0601679
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0433477   -0.0113179    0.0980133
12-15 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0313454   -0.0877237    0.0250330
12-15 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0564457   -0.1145678    0.0016764
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0082948   -0.0655172    0.0821068
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 -0.0496010   -0.1150948    0.0158928
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0004105   -0.0799000    0.0807210
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0460608   -0.0005630    0.0926847
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0423476   -0.0280519    0.1127472
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0317602   -0.0648035    0.1283239
12-15 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             PERU                           2                    1                  0.0011354   -0.1013834    0.1036543
12-15 months   ki1114097-CMIN             PERU                           3                    1                  0.0053847   -0.0908751    0.1016446
12-15 months   ki1114097-CMIN             PERU                           4                    1                  0.0219934   -0.0702655    0.1142522
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0277347   -0.0971390    0.0416697
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0070751   -0.0631735    0.0773237
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0318289   -0.1051886    0.0415308
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0057424   -0.0425337    0.0310489
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0378842   -0.0066970    0.0824654
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0145307   -0.0327236    0.0617850
15-18 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0548775   -0.0073295    0.1170845
15-18 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0174726   -0.0412453    0.0761906
15-18 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0251789   -0.0374471    0.0878050
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0010257   -0.0740282    0.0719769
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0159306   -0.0541315    0.0859927
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0103650   -0.0570226    0.0777525
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0081010   -0.0803288    0.0641268
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0412716   -0.1151456    0.0326024
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0052815   -0.0712665    0.0818294
15-18 months   ki1000109-EE               PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       2                    1                  0.0476631   -0.0278472    0.1231734
15-18 months   ki1000109-EE               PAKISTAN                       3                    1                  0.0719114    0.0147969    0.1290259
15-18 months   ki1000109-EE               PAKISTAN                       4                    1                  0.0976486    0.0141822    0.1811149
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0140824   -0.0113497    0.0395146
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0027678   -0.0297402    0.0242045
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 -0.0021994   -0.0322959    0.0278972
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0127632   -0.0592992    0.0337728
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0314334   -0.0134510    0.0763178
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0417060    0.0017145    0.0816974
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0171240   -0.0611361    0.0268881
15-18 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0162921   -0.0657524    0.0331683
15-18 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0070800   -0.0563950    0.0705549
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0378600   -0.0076402    0.0833602
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0111671   -0.0397518    0.0620860
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0748016   -0.0352092    0.1848123
15-18 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             PERU                           2                    1                  0.0003521   -0.0743748    0.0750791
15-18 months   ki1114097-CMIN             PERU                           3                    1                  0.0053678   -0.0615472    0.0722828
15-18 months   ki1114097-CMIN             PERU                           4                    1                  0.0120704   -0.0515158    0.0756567
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0174042   -0.0161565    0.0509649
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0174662   -0.0156199    0.0505522
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0706441    0.0287020    0.1125863
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.1205703   -0.3072478    0.0661071
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.1093662   -0.2859753    0.0672428
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.1221799   -0.2991261    0.0547663
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0131205   -0.0196591    0.0459001
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0131151   -0.0466323    0.0204020
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0059058   -0.0641429    0.0523312
18-21 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0367946   -0.0038477    0.0774369
18-21 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0462092    0.0082876    0.0841309
18-21 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0863457    0.0305687    0.1421227
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0012204   -0.0662673    0.0638265
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0442774   -0.0193262    0.1078810
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0722260    0.0083035    0.1361486
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0147252   -0.0688083    0.0982587
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0431207   -0.0350261    0.1212674
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0648337   -0.0167947    0.1464621
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0082936   -0.1526506    0.1360634
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0439231   -0.1389228    0.2267690
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 -0.0940804   -0.2299468    0.0417860
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0112356   -0.0373667    0.0148956
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0144516   -0.0411660    0.0122627
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0255415   -0.0034509    0.0545338
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0013083   -0.0474298    0.0448133
18-21 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0475964   -0.0980493    0.0028564
18-21 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0232229   -0.0690581    0.0226122
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0060936   -0.0301147    0.0423019
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0507601   -0.0035428    0.1050630
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    1                 -0.0432500   -0.1328573    0.0463573
18-21 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             PERU                           2                    1                 -0.0861662   -0.1678699   -0.0044624
18-21 months   ki1114097-CMIN             PERU                           3                    1                 -0.0661614   -0.1433727    0.0110499
18-21 months   ki1114097-CMIN             PERU                           4                    1                 -0.0560319   -0.1313011    0.0192373
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0125786   -0.0209553    0.0461126
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0065194   -0.0267788    0.0398176
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0442470   -0.1133324    0.0248383
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0339792   -0.0234956    0.0914541
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0283446   -0.0280983    0.0847874
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0305076   -0.0272459    0.0882611
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0056286   -0.0375895    0.0263322
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0058888   -0.0290288    0.0408064
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0282494   -0.0764424    0.0199435
21-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0263935   -0.0125447    0.0653317
21-24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0428930    0.0057196    0.0800664
21-24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0764220    0.0373153    0.1155286
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0197951   -0.0876467    0.0480565
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0024688   -0.0629295    0.0579918
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0172039   -0.0401683    0.0745761
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0387080   -0.0356911    0.1131070
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0138968   -0.0828084    0.0550148
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0081433   -0.0684555    0.0847421
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0017064   -0.0268164    0.0234036
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0152671   -0.0133080    0.0438422
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0322460   -0.0010080    0.0655000
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0273681   -0.0805320    0.0257957
21-24 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.0095060   -0.0432068    0.0622187
21-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0043174   -0.0679378    0.0593030
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0131785   -0.0283597    0.0547168
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0540694   -0.0061691    0.1143080
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0794283    0.0017403    0.1571163


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0683920    0.0257420   0.1110420
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0030406   -0.0811093   0.0750281
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0263541   -0.0126059   0.0653142
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0038020   -0.0551063   0.0475023
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0166214   -0.0884948   0.1217376
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0774314   -0.0336146   0.1884774
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0815299   -0.2373873   0.0743275
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0385308    0.0188571   0.0582045
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0188713   -0.0093539   0.0470966
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0061989   -0.0565761   0.0441783
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0332734   -0.0051322   0.0716791
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0255176   -0.0679561   0.0169209
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0254879   -0.0726077   0.0216319
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0183080   -0.0462953   0.0829114
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0025469   -0.0252881   0.0201942
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0070543   -0.0255543   0.0396628
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0296768   -0.0230932   0.0824467
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0357129   -0.0282598   0.0996855
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0050731   -0.0565484   0.0666947
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0324948    0.0063304   0.0586592
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0713058    0.0126693   0.1299423
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0024595   -0.0373312   0.0324122
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0144225   -0.0144358   0.0432807
6-9 months     ki1114097-CMIN             PERU                           1                    NA                 0.0042740   -0.0377912   0.0463391
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0110980   -0.0569649   0.0347689
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0022530   -0.0825368   0.0870428
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0071793   -0.0341730   0.0198143
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.0052203   -0.0404118   0.0508524
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0529047   -0.0256696   0.1314791
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0890014    0.0078076   0.1701952
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0503813   -0.0328738   0.1336363
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0104289   -0.0478618   0.0270040
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0195673   -0.0057836   0.0449182
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0037115   -0.0397987   0.0472217
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0230595   -0.0072369   0.0533558
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0454660    0.0190129   0.0719191
9-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0040231   -0.0556599   0.0476137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0014074   -0.0315754   0.0287606
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0441095   -0.0201293   0.1083483
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0068971   -0.0059736   0.0197678
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0104232   -0.0123935   0.0332399
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0160131   -0.0486772   0.0807033
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0587001    0.0103265   0.1070737
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0573339   -0.0060932   0.1207609
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0057169   -0.0105586   0.0219924
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0037418   -0.0261962   0.0336797
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0020901   -0.0292754   0.0250951
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0057139   -0.0543452   0.0429175
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0250763    0.0027434   0.0474093
12-15 months   ki1114097-CMIN             PERU                           1                    NA                 0.0150248   -0.0694766   0.0995261
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0157357   -0.0720238   0.0405525
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0078088   -0.0166020   0.0322197
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0279558   -0.0226357   0.0785473
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0106515   -0.0462892   0.0675923
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0195173   -0.0763248   0.0372903
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                 0.0446171    0.0093680   0.0798661
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0042838   -0.0099986   0.0185662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0193974   -0.0071919   0.0459866
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0076765   -0.0319411   0.0165880
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0201557   -0.0024917   0.0428031
15-18 months   ki1114097-CMIN             PERU                           1                    NA                 0.0086888   -0.0504950   0.0678726
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0160449   -0.0089810   0.0410708
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1124047   -0.2755005   0.0506911
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0012308   -0.0193912   0.0218528
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0402097    0.0134403   0.0669792
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0412039   -0.0102445   0.0926524
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0365161   -0.0287708   0.1018031
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0005647   -0.1077465   0.1088759
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0030638   -0.0173294   0.0112018
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0143490   -0.0357008   0.0070028
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0070498   -0.0107291   0.0248287
18-21 months   ki1114097-CMIN             PERU                           1                    NA                -0.0600695   -0.1327156   0.0125765
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0051282   -0.0194990   0.0297554
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0297501   -0.0172716   0.0767718
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0001453   -0.0202150   0.0199244
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0357563    0.0105439   0.0609686
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0005222   -0.0492156   0.0502600
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0037438   -0.0552025   0.0626901
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0068411   -0.0061448   0.0198269
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0023307   -0.0299863   0.0253249
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0169736   -0.0012697   0.0352170

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
![](/tmp/ce97c9b5-aea5-45eb-acbd-49ec6d4f714b/0cf8f734-4140-4d72-9222-443a1712623f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ce97c9b5-aea5-45eb-acbd-49ec6d4f714b/0cf8f734-4140-4d72-9222-443a1712623f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ce97c9b5-aea5-45eb-acbd-49ec6d4f714b/0cf8f734-4140-4d72-9222-443a1712623f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0970872   -0.1436073   -0.0505672
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0006971   -0.0358912    0.0372855
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0169704   -0.0569513    0.0230106
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                 0.0213083   -0.0889506    0.1315672
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0634150   -0.0193489    0.1461790
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0607087    0.0068490    0.1145684
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0526605   -0.0136537    0.1189747
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0360701   -0.1442172    0.2163574
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0664792   -0.1208964   -0.0120621
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0455418   -0.0858592   -0.0052244
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0032673   -0.0468830    0.0534176
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    NA                 0.0199466   -0.1293903    0.1692835
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0216144   -0.0799924    0.0367637
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0371596   -0.0821240    0.0078047
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0334864   -0.0758981    0.0089253
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                 0.1235786    0.0276557    0.2195015
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0049834   -0.1101813    0.1002145
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                 0.0244635   -0.0473159    0.0962430
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                 0.0248155   -0.0293789    0.0790100
3-6 months     ki0047075b-MAL-ED          PERU                           4                    NA                 0.0451394   -0.0052248    0.0955037
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0797247   -0.1972236    0.0377743
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0802978   -0.1530480   -0.0075476
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0036395   -0.0692302    0.0619513
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0662558   -0.0029408    0.1354523
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0643059   -0.2313847    0.1027728
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0883034   -0.1526915   -0.0239153
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0802536   -0.1350513   -0.0254558
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0613753   -0.1162613   -0.0064892
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0658806   -0.0916408   -0.0401204
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0165524   -0.0485821    0.0154774
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                 0.0211892   -0.0171148    0.0594931
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0372962   -0.0202405    0.0948330
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1030707   -0.1357764   -0.0703649
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1229962   -0.1562333   -0.0897591
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0686475   -0.1079107   -0.0293844
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0548449   -0.0843162   -0.0253735
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0012518   -0.0564874    0.0589910
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.0621941   -0.1432958    0.0189076
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                -0.0173624   -0.0719412    0.0372164
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                 0.0284560   -0.0199704    0.0768823
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0386417   -0.0848814    0.0075980
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0141751   -0.0705114    0.0421612
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    NA                 0.0105028   -0.0641085    0.0851141
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0840832   -0.0223429    0.1905093
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0378902   -0.0842207    0.0084403
3-6 months     ki1114097-CMIN             PERU                           2                    NA                -0.0986288   -0.1495516   -0.0477061
3-6 months     ki1114097-CMIN             PERU                           3                    NA                -0.0532095   -0.0968156   -0.0096033
3-6 months     ki1114097-CMIN             PERU                           4                    NA                -0.0480168   -0.0901737   -0.0058598
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0500277   -0.1017111    0.0016556
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0964399   -0.1244326   -0.0684472
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0610603   -0.0881735   -0.0339470
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0416413   -0.0928328    0.0095501
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0192647   -0.0831511    0.0446217
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0234793   -0.0280331    0.0749917
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0096857   -0.0466784    0.0660498
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0913904   -0.1287769    0.3115578
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0622393   -0.0955391   -0.0289395
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0823213   -0.1180182   -0.0466244
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0369742   -0.0881666    0.0142183
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0419568   -0.1333249    0.0494114
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0505097   -0.0897568   -0.0112626
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0406017   -0.0728030   -0.0084005
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0297206   -0.0624382    0.0029969
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0065015   -0.1119775    0.0989745
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0471614   -0.0987928    0.0044701
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.0672144   -0.1171106   -0.0173183
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.0226188   -0.0640321    0.0187946
6-9 months     ki0047075b-MAL-ED          PERU                           4                    NA                 0.0024378   -0.0427720    0.0476477
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0360464   -0.1029833    0.0308905
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0164390   -0.0814124    0.0485344
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0012645   -0.0487952    0.0513241
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0148860   -0.0678679    0.0380958
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1118531   -0.1768563   -0.0468500
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1034160   -0.1718719   -0.0349600
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1087293   -0.1731281   -0.0443304
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1021961   -0.1505965   -0.0537956
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0855605   -0.1146526   -0.0564684
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0631049   -0.1013469   -0.0248628
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0714305   -0.1036188   -0.0392421
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.0046636   -0.0256558    0.0349831
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0699382   -0.1435720    0.0036955
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                 0.0078631   -0.0517551    0.0674813
6-9 months     ki1101329-Keneba           GAMBIA                         3                    NA                 0.1017706    0.0003781    0.2031631
6-9 months     ki1101329-Keneba           GAMBIA                         4                    NA                 0.0173009   -0.0382263    0.0728282
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0917881   -0.1321652   -0.0514110
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.1261069   -0.1666674   -0.0855464
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0628640   -0.1035373   -0.0221907
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0691538   -0.1136357   -0.0246719
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0687008   -0.1063144   -0.0310872
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0500378   -0.1014953    0.0014196
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0730343   -0.1304572   -0.0156114
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0246263   -0.1042405    0.1534932
6-9 months     ki1114097-CMIN             PERU                           1                    NA                -0.1108622   -0.1543902   -0.0673343
6-9 months     ki1114097-CMIN             PERU                           2                    NA                -0.1539388   -0.1924325   -0.1154452
6-9 months     ki1114097-CMIN             PERU                           3                    NA                -0.0678729   -0.1189734   -0.0167725
6-9 months     ki1114097-CMIN             PERU                           4                    NA                -0.1163804   -0.1469247   -0.0858362
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0753540   -0.1224406   -0.0282674
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0656117   -0.0907060   -0.0405175
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.1014390   -0.1280769   -0.0748010
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0838770   -0.1329954   -0.0347587
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0047398   -0.0926219    0.0831423
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0394950   -0.0897597    0.0107697
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0286877   -0.0168642    0.0742396
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.1076258   -0.0161598    0.2314113
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0550187   -0.0855586   -0.0244787
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0787276   -0.1046618   -0.0527935
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0358426   -0.0711958   -0.0004893
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0613426   -0.1326022    0.0099169
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0331973   -0.0797334    0.0133388
9-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                -0.0541450   -0.0929192   -0.0153707
9-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                -0.0358418   -0.0734122    0.0017285
9-12 months    ki0047075b-MAL-ED          PERU                           4                    NA                -0.0383583   -0.0896689    0.0129522
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1280350   -0.2248237   -0.0312463
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.1072082   -0.1637050   -0.0507114
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0679157   -0.1086964   -0.0271350
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0696673   -0.1242575   -0.0150771
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2397728   -0.3241860   -0.1553597
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1113007   -0.1586588   -0.0639425
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1504441   -0.2000250   -0.1008633
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1250836   -0.1877931   -0.0623741
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2352221   -0.3023636   -0.1680806
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.2406333   -0.3450519   -0.1362148
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0851131   -0.2039737    0.0337475
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.1384685   -0.2746125   -0.0023246
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0423951   -0.0910722    0.0062820
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0569813   -0.1071568   -0.0068058
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0733395   -0.1339129   -0.0127661
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0304699   -0.0750434    0.0141036
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0828550   -0.1118942   -0.0538159
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0685552   -0.0968092   -0.0403012
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0588535   -0.0889959   -0.0287112
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0579478   -0.0859737   -0.0299219
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1080486   -0.1670169   -0.0490803
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.1452572   -0.2201813   -0.0703331
9-12 months    ki1101329-Keneba           GAMBIA                         3                    NA                -0.0756688   -0.1415583   -0.0097793
9-12 months    ki1101329-Keneba           GAMBIA                         4                    NA                -0.0547693   -0.1139760    0.0044373
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0814087   -0.1116797   -0.0511377
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.0561589   -0.0915131   -0.0208047
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0384280   -0.0776275    0.0007715
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0569833   -0.0858150   -0.0281516
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1386814   -0.1698993   -0.1074636
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0778116   -0.1257905   -0.0298327
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0183080   -0.0838681    0.0472520
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0296163   -0.1247935    0.0655608
9-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0796950   -0.1333216   -0.0260684
9-12 months    ki1114097-CMIN             PERU                           2                    NA                -0.0752080   -0.1136983   -0.0367178
9-12 months    ki1114097-CMIN             PERU                           3                    NA                -0.0924023   -0.1278273   -0.0569773
9-12 months    ki1114097-CMIN             PERU                           4                    NA                -0.0641388   -0.0876707   -0.0406069
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0758836   -0.1062662   -0.0455009
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0721598   -0.0986565   -0.0456632
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0479358   -0.0724048   -0.0234668
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0453453   -0.0987246    0.0080339
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0637632   -0.1306402    0.0031138
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0109877   -0.0345993    0.0565746
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0173838   -0.0490350    0.0142675
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0333007   -0.0175715    0.0841729
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0635497   -0.0829903   -0.0441091
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0497960   -0.0774616   -0.0221304
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0347796   -0.0760989    0.0065396
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0532418   -0.2198880    0.1134045
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0745606   -0.1014161   -0.0477051
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0495808   -0.0761213   -0.0230403
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0628175   -0.0951126   -0.0305224
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0602919   -0.1374039    0.0168201
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0823919   -0.1552205   -0.0095634
12-15 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0783854   -0.1097063   -0.0470645
12-15 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0554400   -0.0817308   -0.0291492
12-15 months   ki0047075b-MAL-ED          PERU                           4                    NA                -0.0663224   -0.1024299   -0.0302150
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1153329   -0.1711847   -0.0594810
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0731763   -0.1254745   -0.0208782
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0469769   -0.0861696   -0.0077842
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0309615   -0.0771871    0.0152640
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1194861   -0.1873181   -0.0516541
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0807479   -0.1332742   -0.0282216
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0521739   -0.0949846   -0.0093631
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0588713   -0.1096132   -0.0081293
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0465199   -0.0658090   -0.0272308
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0313733   -0.0528914   -0.0098552
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0436056   -0.0647089   -0.0225023
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0246968   -0.0487270   -0.0006667
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0667760   -0.1006434   -0.0329086
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0919555   -0.1225686   -0.0613424
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0607945   -0.0894785   -0.0321106
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0495707   -0.0752664   -0.0238749
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0546741   -0.0901100   -0.0192383
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0067688   -0.0486598    0.0351223
12-15 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0905438   -0.1348871   -0.0462005
12-15 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.1192967   -0.1652259   -0.0733676
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0094393   -0.0645499    0.0456714
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                 0.0054620   -0.0371077    0.0480318
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0739349   -0.1080662   -0.0398036
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0071743   -0.0584930    0.0441443
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0891026   -0.1191226   -0.0590826
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0417520   -0.0770705   -0.0064335
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0299756   -0.0948225    0.0348713
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0344975   -0.1366821    0.0676871
12-15 months   ki1114097-CMIN             PERU                           1                    NA                -0.0829163   -0.1626965   -0.0031360
12-15 months   ki1114097-CMIN             PERU                           2                    NA                -0.0893954   -0.1410155   -0.0377753
12-15 months   ki1114097-CMIN             PERU                           3                    NA                -0.0867154   -0.1217295   -0.0517012
12-15 months   ki1114097-CMIN             PERU                           4                    NA                -0.0673526   -0.0888281   -0.0458771
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0032564   -0.0550672    0.0615800
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0287441   -0.0641672    0.0066790
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0079060   -0.0307165    0.0465285
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0296098   -0.0719209    0.0127013
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0633165   -0.0918742   -0.0347587
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0679857   -0.0909151   -0.0450562
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0234700   -0.0576280    0.0106881
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0473498   -0.0824262   -0.0122733
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0631887   -0.1148913   -0.0114860
15-18 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0088012   -0.0398438    0.0222414
15-18 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0466779   -0.0701948   -0.0231611
15-18 months   ki0047075b-MAL-ED          PERU                           4                    NA                -0.0371944   -0.0686198   -0.0057690
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0374296   -0.0968483    0.0219890
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0427914   -0.0842712   -0.0013115
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0270000   -0.0638148    0.0098148
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0295816   -0.0604388    0.0012755
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0794551   -0.1404548   -0.0184554
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0809735   -0.1186391   -0.0433080
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1115836   -0.1528760   -0.0702912
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0608131   -0.1069319   -0.0146943
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0525249   -0.0886449   -0.0164049
15-18 months   ki1000109-EE               PAKISTAN                       2                    NA                -0.0048618   -0.0711729    0.0614493
15-18 months   ki1000109-EE               PAKISTAN                       3                    NA                 0.0193865   -0.0248562    0.0636291
15-18 months   ki1000109-EE               PAKISTAN                       4                    NA                 0.0451237   -0.0301224    0.1203698
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0466783   -0.0627679   -0.0305887
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0319307   -0.0519201   -0.0119413
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0472877   -0.0677412   -0.0268342
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0470865   -0.0723997   -0.0217734
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0389097   -0.0687862   -0.0090333
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0503484   -0.0861306   -0.0145662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0099506   -0.0438646    0.0239635
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.0036176   -0.0234327    0.0306678
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0364260   -0.0692285   -0.0036235
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0538210   -0.0832765   -0.0243655
15-18 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0534671   -0.0902092   -0.0167249
15-18 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.0282325   -0.0839506    0.0274856
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0819474   -0.1083783   -0.0555165
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0454791   -0.0818909   -0.0090673
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0703362   -0.1150417   -0.0256308
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0093039   -0.1044758    0.0858679
15-18 months   ki1114097-CMIN             PERU                           1                    NA                -0.0482688   -0.1067476    0.0102100
15-18 months   ki1114097-CMIN             PERU                           2                    NA                -0.0460201   -0.0890843   -0.0029560
15-18 months   ki1114097-CMIN             PERU                           3                    NA                -0.0397916   -0.0684332   -0.0111500
15-18 months   ki1114097-CMIN             PERU                           4                    NA                -0.0328280   -0.0529239   -0.0127321
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0315458   -0.0593056   -0.0037860
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0141416   -0.0330020    0.0047188
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0140797   -0.0320819    0.0039226
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                 0.0390983    0.0076573    0.0705393
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0223892   -0.1319877    0.1767662
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0291715   -0.0855074    0.0271644
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0214050   -0.0493805    0.0065706
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0295099   -0.0624583    0.0034386
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0292899   -0.0534818   -0.0050979
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0157478   -0.0386325    0.0071369
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0422584   -0.0653346   -0.0191822
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0357346   -0.0921148    0.0206456
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0452938   -0.0738765   -0.0167111
18-21 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0060010   -0.0367352    0.0247332
18-21 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0009475   -0.0267782    0.0248832
18-21 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.0395955   -0.0100741    0.0892651
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0761742   -0.1378840   -0.0144645
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0808916   -0.1174870   -0.0442962
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0301750   -0.0662054    0.0058554
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0007810   -0.0355322    0.0339701
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0608210   -0.1302029    0.0085610
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0503387   -0.0948558   -0.0058215
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0219293   -0.0577102    0.0138517
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0015713   -0.0431988    0.0400561
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0572235   -0.1864775    0.0720305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0655172   -0.1298005   -0.0012338
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0133004   -0.1426296    0.1160287
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.1513039   -0.1931737   -0.1094341
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0090612   -0.0265555    0.0084330
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0185546   -0.0379990    0.0008899
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0230137   -0.0432037   -0.0028237
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0158693   -0.0078451    0.0395836
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0053064   -0.0326690    0.0220562
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0076955   -0.0464478    0.0310567
18-21 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0387317   -0.0822973    0.0048339
18-21 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.0228040   -0.0613295    0.0157216
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0152516   -0.0381741    0.0076709
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0100578   -0.0381356    0.0180200
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    NA                 0.0350319   -0.0144027    0.0844664
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0582402   -0.1385161    0.0220357
18-21 months   ki1114097-CMIN             PERU                           1                    NA                 0.0386834   -0.0346566    0.1120235
18-21 months   ki1114097-CMIN             PERU                           2                    NA                -0.0474827   -0.0834929   -0.0114725
18-21 months   ki1114097-CMIN             PERU                           3                    NA                -0.0274780   -0.0516195   -0.0033364
18-21 months   ki1114097-CMIN             PERU                           4                    NA                -0.0173485   -0.0342803   -0.0004166
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0358739    0.0096067    0.0621410
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0509016    0.0302209    0.0715823
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                 0.0458690    0.0253754    0.0663626
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0178103   -0.0804284    0.0448078
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0087137   -0.0401770    0.0576045
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0386398    0.0089747    0.0683050
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0313734    0.0033195    0.0594272
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0361319    0.0048588    0.0674049
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0258468    0.0029949    0.0486987
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0190967   -0.0036862    0.0418795
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0277373    0.0013480    0.0541265
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0026864   -0.0445116    0.0391388
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0211883   -0.0039096    0.0462863
21-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0494953    0.0183740    0.0806167
21-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.0640702    0.0363051    0.0918353
21-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.0939409    0.0625622    0.1253197
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0475663   -0.0026727    0.0978053
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.0356564   -0.0093905    0.0807033
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0521852    0.0207736    0.0835969
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0726360    0.0469719    0.0983000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0174152   -0.0358867    0.0707171
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0623210    0.0221101    0.1025320
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0108129   -0.0174936    0.0391195
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.0376339   -0.0053579    0.0806257
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0501734    0.0337816    0.0665653
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0495955    0.0308903    0.0683006
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                 0.0622638    0.0383625    0.0861651
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0788898    0.0506335    0.1071461
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0112738   -0.0211047    0.0436522
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0196110   -0.0611519    0.0219299
21-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                 0.0208834   -0.0200817    0.0618486
21-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                 0.0076655   -0.0487937    0.0641247
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
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0977844    0.0385972    0.1569715
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0801169    0.0190475    0.1411863
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.1183955   -0.0010797    0.2378707
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0027063   -0.1010752    0.0956625
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0107545   -0.1162239    0.0947149
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0273449   -0.2259066    0.1712167
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0209374   -0.0467879    0.0886627
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0697465   -0.0042553    0.1437484
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.0864258   -0.0725167    0.2453683
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0155453   -0.0893823    0.0582917
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0118721   -0.0841416    0.0603974
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1451930    0.0327731    0.2576129
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.0294469   -0.0979102    0.1568040
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.0297989   -0.0886370    0.1482349
3-6 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0501228   -0.0664577    0.1667034
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0005731   -0.1389109    0.1377646
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0760852   -0.0584370    0.2106074
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1459804    0.0096111    0.2823498
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0239975   -0.2029529    0.1549580
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0159477   -0.1912946    0.1593993
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0029307   -0.1727284    0.1785897
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0493282    0.0081640    0.0904924
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0870698    0.0408027    0.1333368
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1031768    0.0401098    0.1662438
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0199255   -0.0665439    0.0266928
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0344231   -0.0166677    0.0855139
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0482258    0.0041871    0.0922645
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.0634459   -0.1629920    0.0361002
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                 -0.0186142   -0.0980018    0.0607734
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.0272042   -0.0481377    0.1025461
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0244666   -0.0486985    0.0976318
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0491445   -0.0388153    0.1371044
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.1227249    0.0064736    0.2389763
3-6 months     ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           2                    1                 -0.0607386   -0.1295241    0.0080468
3-6 months     ki1114097-CMIN             PERU                           3                    1                 -0.0153192   -0.0789168    0.0482783
3-6 months     ki1114097-CMIN             PERU                           4                    1                 -0.0101265   -0.0727745    0.0525214
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0464122   -0.1051933    0.0123689
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0110325   -0.0694170    0.0473519
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0083864   -0.0643802    0.0811530
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0427440   -0.0400822    0.1255703
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0289504   -0.0571410    0.1150419
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1106552   -0.1189556    0.3402660
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0200820   -0.0688995    0.0287355
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0252651   -0.0358048    0.0863351
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.0202826   -0.0769646    0.1175297
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0099080   -0.0410155    0.0608315
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0207891   -0.0304876    0.0720658
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0440082   -0.0684094    0.1564259
6-9 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0200531   -0.0918584    0.0517523
6-9 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.0245426   -0.0416767    0.0907619
6-9 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0495992   -0.0190920    0.1182903
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0196074   -0.0734431    0.1126579
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0373108   -0.0463076    0.1209292
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0211603   -0.0645633    0.1068840
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0084372   -0.0869290    0.1038034
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0031239   -0.0889632    0.0952109
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0096570   -0.0728641    0.0921782
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0224556   -0.0256079    0.0705192
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0141300   -0.0293473    0.0576073
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0902241    0.0481998    0.1322484
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0778013   -0.0169766    0.1725793
6-9 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.1717088    0.0456098    0.2978079
6-9 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.0872392   -0.0055702    0.1800486
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.0343188   -0.0915783    0.0229407
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0289241   -0.0287417    0.0865899
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0226343   -0.0377791    0.0830477
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0186630   -0.0455024    0.0828284
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    1                 -0.0043335   -0.0726731    0.0640062
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.0933271   -0.0406622    0.2273165
6-9 months     ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             PERU                           2                    1                 -0.0430766   -0.1011654    0.0150122
6-9 months     ki1114097-CMIN             PERU                           3                    1                  0.0429893   -0.0241229    0.1101015
6-9 months     ki1114097-CMIN             PERU                           4                    1                 -0.0055182   -0.0587103    0.0476738
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0097423   -0.0436529    0.0631375
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0260850   -0.0804029    0.0282330
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0085230   -0.0766655    0.0596194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0347552   -0.1362356    0.0667252
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0334275   -0.0654161    0.1322711
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1123656   -0.0395050    0.2642362
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0237090   -0.0637783    0.0163604
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0191761   -0.0276102    0.0659624
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0063240   -0.0837959    0.0711480
9-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           2                    1                 -0.0209476   -0.0814586    0.0395633
9-12 months    ki0047075b-MAL-ED          PERU                           3                    1                 -0.0026445   -0.0625363    0.0572472
9-12 months    ki0047075b-MAL-ED          PERU                           4                    1                 -0.0051610   -0.0742864    0.0639644
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0208268   -0.0910999    0.1327535
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0601193   -0.0452520    0.1654906
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0583677   -0.0534847    0.1702200
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1284722    0.0315471    0.2253973
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0893287   -0.0084117    0.1870691
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1146892    0.0097038    0.2196747
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0054112   -0.1295532    0.1187307
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.1501090    0.0135959    0.2866221
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.0967535   -0.0550462    0.2485533
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0145862   -0.0847506    0.0555782
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0309444   -0.1085744    0.0466857
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0119252   -0.0538760    0.0777263
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0142999   -0.0261758    0.0547755
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0240015   -0.0179981    0.0660011
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0249072   -0.0155498    0.0653642
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0372086   -0.1328717    0.0584545
9-12 months    ki1101329-Keneba           GAMBIA                         3                    1                  0.0323798   -0.0561384    0.1208979
9-12 months    ki1101329-Keneba           GAMBIA                         4                    1                  0.0532793   -0.0312310    0.1377895
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0252498   -0.0213053    0.0718050
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0429808   -0.0069306    0.0928921
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0244254   -0.0177016    0.0665525
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    1                  0.0608698    0.0036375    0.1181022
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    1                  0.1203734    0.0475971    0.1931497
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    1                  0.1090651    0.0086782    0.2094520
9-12 months    ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             PERU                           2                    1                  0.0044870   -0.0614329    0.0704068
9-12 months    ki1114097-CMIN             PERU                           3                    1                 -0.0127073   -0.0770563    0.0516418
9-12 months    ki1114097-CMIN             PERU                           4                    1                  0.0155562   -0.0430531    0.0741654
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0037237   -0.0366230    0.0440704
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0279478   -0.0110019    0.0668975
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0305383   -0.0313729    0.0924494
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0747509   -0.0063011    0.1558029
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0463794   -0.0274829    0.1202417
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0970639    0.0130656    0.1810623
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0137537   -0.0200594    0.0475668
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0287701   -0.0168941    0.0744343
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0103080   -0.1574684    0.1780843
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0249798   -0.0129073    0.0628668
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0117431   -0.0302911    0.0537773
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0142687   -0.0672642    0.0958016
12-15 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0040065   -0.0757354    0.0837485
12-15 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0269519   -0.0504169    0.1043208
12-15 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0160695   -0.0654068    0.0975458
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0421565   -0.0346961    0.1190092
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0683560    0.0000641    0.1366479
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0843713    0.0116715    0.1570712
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0387382   -0.0472259    0.1247022
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0673122   -0.0131070    0.1477314
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0606148   -0.0241180    0.1453477
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0151465   -0.0138526    0.0441457
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0029143   -0.0257005    0.0315291
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0218231   -0.0091081    0.0527542
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0251795   -0.0709636    0.0206046
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0059815   -0.0384226    0.0503855
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0172053   -0.0252952    0.0597058
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0479054   -0.0075899    0.1034006
12-15 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0358696   -0.0926880    0.0209487
12-15 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0646226   -0.1229628   -0.0062825
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0149013   -0.0548089    0.0846114
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 -0.0644956   -0.1300512    0.0010600
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0022649   -0.0731306    0.0776604
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0473506    0.0008431    0.0938581
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0591270   -0.0124130    0.1306671
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0546051   -0.0519667    0.1611769
12-15 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             PERU                           2                    1                 -0.0064791   -0.1015251    0.0885668
12-15 months   ki1114097-CMIN             PERU                           3                    1                 -0.0037991   -0.0908895    0.0832913
12-15 months   ki1114097-CMIN             PERU                           4                    1                  0.0155636   -0.0671236    0.0982509
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0320005   -0.1006458    0.0366448
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0046496   -0.0651412    0.0744403
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0328662   -0.1052863    0.0395538
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0046692   -0.0412031    0.0318646
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0398465   -0.0047504    0.0844434
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0159667   -0.0292893    0.0612228
15-18 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0543874   -0.0059430    0.1147179
15-18 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0165107   -0.0402870    0.0733084
15-18 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0259942   -0.0344941    0.0864826
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0053617   -0.0777822    0.0670587
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0104297   -0.0597835    0.0806429
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0078480   -0.0592785    0.0749746
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0015184   -0.0733123    0.0702755
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0321285   -0.1059604    0.0417034
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0186420   -0.0578000    0.0950839
15-18 months   ki1000109-EE               PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       2                    1                  0.0476631   -0.0278472    0.1231734
15-18 months   ki1000109-EE               PAKISTAN                       3                    1                  0.0719114    0.0147969    0.1290259
15-18 months   ki1000109-EE               PAKISTAN                       4                    1                  0.0976486    0.0141822    0.1811149
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0147476   -0.0109136    0.0404089
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0006094   -0.0266964    0.0254776
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 -0.0004082   -0.0304574    0.0296410
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0114386   -0.0581441    0.0352668
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0289592   -0.0163587    0.0742771
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0425273    0.0021861    0.0828685
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0173950   -0.0616486    0.0268586
15-18 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0170411   -0.0664616    0.0323795
15-18 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0081935   -0.0565243    0.0729114
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0364683   -0.0086171    0.0815537
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0116112   -0.0402803    0.0635026
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0726435   -0.0260003    0.1712872
15-18 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             PERU                           2                    1                  0.0022487   -0.0703343    0.0748316
15-18 months   ki1114097-CMIN             PERU                           3                    1                  0.0084772   -0.0566004    0.0735548
15-18 months   ki1114097-CMIN             PERU                           4                    1                  0.0154408   -0.0463485    0.0772300
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0174042   -0.0161565    0.0509649
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0174662   -0.0156199    0.0505522
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0706441    0.0287020    0.1125863
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0515608   -0.2158011    0.1126796
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0437942   -0.2006995    0.1131111
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0518991   -0.2096752    0.1058769
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0135421   -0.0196495    0.0467336
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0129686   -0.0464403    0.0205032
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0064448   -0.0677816    0.0548921
18-21 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0392928   -0.0032091    0.0817947
18-21 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0443464    0.0049565    0.0837362
18-21 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0848893    0.0273804    0.1423982
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0047174   -0.0765535    0.0671187
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0459992   -0.0256800    0.1176784
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0753932    0.0040810    0.1467053
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0104823   -0.0720433    0.0930079
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0388917   -0.0391113    0.1168947
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0592496   -0.0217174    0.1402167
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0082936   -0.1526506    0.1360634
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0439231   -0.1389228    0.2267690
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 -0.0940804   -0.2299468    0.0417860
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0094933   -0.0356792    0.0166925
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0139525   -0.0408408    0.0129358
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0249305   -0.0048017    0.0546626
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0023892   -0.0500794    0.0453011
18-21 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0334253   -0.0850061    0.0181555
18-21 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0174976   -0.0650512    0.0300560
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0051938   -0.0311560    0.0415436
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0502835   -0.0045635    0.1051305
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    1                 -0.0429886   -0.1265544    0.0405771
18-21 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             PERU                           2                    1                 -0.0861662   -0.1678699   -0.0044624
18-21 months   ki1114097-CMIN             PERU                           3                    1                 -0.0661614   -0.1433727    0.0110499
18-21 months   ki1114097-CMIN             PERU                           4                    1                 -0.0560319   -0.1313011    0.0192373
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0150277   -0.0183811    0.0484366
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0099951   -0.0233628    0.0433530
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0536842   -0.1215220    0.0141537
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0299261   -0.0271530    0.0870052
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0226596   -0.0335858    0.0789051
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0274181   -0.0306045    0.0854407
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0067502   -0.0393931    0.0258928
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0018905   -0.0332360    0.0370169
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0285332   -0.0761697    0.0191032
21-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0283070   -0.0117068    0.0683208
21-24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0428818    0.0055101    0.0802536
21-24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0727526    0.0326700    0.1128352
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0119099   -0.0796326    0.0558127
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0046189   -0.0546309    0.0638687
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0250696   -0.0312850    0.0814242
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0449058   -0.0218878    0.1116994
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0066023   -0.0670499    0.0538454
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0202187   -0.0482846    0.0887219
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0005780   -0.0254885    0.0243325
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0120904   -0.0169094    0.0410902
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0287164   -0.0039432    0.0613760
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0308848   -0.0835909    0.0218214
21-24 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.0096097   -0.0426363    0.0618557
21-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0036083   -0.0688199    0.0616034
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0131785   -0.0283597    0.0547168
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0540694   -0.0061691    0.1143080
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0794283    0.0017403    0.1571163


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0745662    0.0317088   0.1174236
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0029246   -0.0795242   0.0736749
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0263541   -0.0126059   0.0653142
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0001602   -0.0514061   0.0517265
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0323637   -0.0708495   0.1355768
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0796719   -0.0309770   0.1903208
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0062389   -0.1707293   0.1582515
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0403288    0.0206317   0.0600259
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0185441   -0.0096009   0.0466891
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0047710   -0.0553543   0.0458123
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0333135   -0.0054900   0.0721169
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0202498   -0.0633800   0.0228805
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0212550   -0.0682543   0.0257443
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0257919   -0.0373451   0.0889290
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0025469   -0.0252881   0.0201942
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0152086   -0.0178905   0.0483077
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0144110   -0.0362780   0.0651001
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0194408   -0.0446920   0.0835736
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0059122   -0.0587460   0.0705703
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0335839    0.0073174   0.0598504
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0732408    0.0141662   0.1323154
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0046813   -0.0391703   0.0298076
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0168628   -0.0115750   0.0453006
6-9 months     ki1114097-CMIN             PERU                           1                    NA                 0.0003939   -0.0415788   0.0423665
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0109345   -0.0551529   0.0332840
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0143092   -0.0697745   0.0983929
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0072796   -0.0340532   0.0194939
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0095194   -0.0531878   0.0341490
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0398939   -0.0464701   0.1262580
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0970720    0.0170660   0.1770779
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0503813   -0.0328738   0.1336363
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0128753   -0.0511380   0.0253874
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0172907   -0.0082148   0.0427962
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0039656   -0.0388415   0.0467728
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0238424   -0.0055580   0.0532429
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0486358    0.0223036   0.0749679
9-12 months    ki1114097-CMIN             PERU                           1                    NA                 0.0069973   -0.0445797   0.0585743
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0201872   -0.0113686   0.0517430
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0607202   -0.0037740   0.1252144
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0068971   -0.0059736   0.0197678
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0164261   -0.0069640   0.0398162
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0167951   -0.0490170   0.0826073
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0571822    0.0059551   0.1084094
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0501298   -0.0137478   0.1140074
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0078006   -0.0087361   0.0243373
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0021613   -0.0281775   0.0325002
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0035463   -0.0311652   0.0240725
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0034215   -0.0506913   0.0438483
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0249726    0.0025747   0.0473705
12-15 months   ki1114097-CMIN             PERU                           1                    NA                 0.0071820   -0.0675964   0.0819603
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0235987   -0.0795306   0.0323333
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0091576   -0.0151700   0.0334853
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0278319   -0.0206590   0.0763227
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0090502   -0.0474502   0.0655505
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0032440   -0.0597694   0.0532814
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                 0.0446171    0.0093680   0.0798661
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0051346   -0.0089167   0.0191859
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0179846   -0.0088766   0.0448457
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0084441   -0.0326812   0.0157931
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0198989   -0.0025063   0.0423042
15-18 months   ki1114097-CMIN             PERU                           1                    NA                 0.0111179   -0.0463284   0.0685641
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0160449   -0.0089810   0.0410708
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0427482   -0.1859556   0.1004592
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0011221   -0.0198062   0.0220504
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0378221    0.0099284   0.0657158
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0421809   -0.0176673   0.1020291
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0307154   -0.0346455   0.0960763
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0005647   -0.1077465   0.1088759
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0023925   -0.0169303   0.0121454
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0092150   -0.0308448   0.0124148
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0069192   -0.0109213   0.0247597
18-21 months   ki1114097-CMIN             PERU                           1                    NA                -0.0600695   -0.1327156   0.0125765
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0080845   -0.0168021   0.0329710
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0226539   -0.0242356   0.0695434
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0037081   -0.0241653   0.0167490
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0387007    0.0130165   0.0643849
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0091574   -0.0394172   0.0577320
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0113888   -0.0384406   0.0612183
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0063947   -0.0064647   0.0192540
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0048523   -0.0318643   0.0221597
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0169736   -0.0012697   0.0352170

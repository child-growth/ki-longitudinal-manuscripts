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
![](/tmp/f534f0a6-b4b4-444d-bd52-95b0f4a8c59a/4e942b9a-5ba1-4dd5-90e1-4fe760c70c8c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f534f0a6-b4b4-444d-bd52-95b0f4a8c59a/4e942b9a-5ba1-4dd5-90e1-4fe760c70c8c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f534f0a6-b4b4-444d-bd52-95b0f4a8c59a/4e942b9a-5ba1-4dd5-90e1-4fe760c70c8c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.7654138   1.6584180   1.8724096
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.9832598   1.9040546   2.0624650
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.9380387   1.8490961   2.0269812
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                2.0335194   1.8339608   2.2330780
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.1211885   1.9372477   2.3051292
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                2.1531019   2.0334390   2.2727647
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                2.1350861   1.9932002   2.2769719
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                2.1809609   1.8771937   2.4847280
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.8296221   1.7123869   1.9468574
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                1.8726994   1.7848234   1.9605755
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                1.9751145   1.8695101   2.0807189
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    NA                1.9911145   1.6417279   2.3405011
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.9614447   1.8328321   2.0900574
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.9417919   1.8493987   2.0341851
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                1.9324911   1.8428793   2.0221029
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                2.2922611   2.0929856   2.4915367
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.9245419   1.6887549   2.1603288
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                2.0067711   1.8548367   2.1587056
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                2.0157264   1.9017842   2.1296686
3-6 months     ki0047075b-MAL-ED          PERU                           4                    NA                2.0461196   1.9396655   2.1525736
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.8069516   1.5629034   2.0509998
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.8232973   1.6679664   1.9786281
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.9849811   1.8491944   2.1207679
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                2.1124589   1.9652860   2.2596317
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8598870   1.5374333   2.1823407
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7771775   1.6450831   1.9092719
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8014568   1.6864671   1.9164465
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                1.8452829   1.7299023   1.9606634
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.8838137   1.8299395   1.9376878
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.9916395   1.9227718   2.0605072
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                2.0643190   1.9830329   2.1456051
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    NA                2.1504410   2.0230493   2.2778328
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7615014   1.6912095   1.8317934
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7187191   1.6467964   1.7906417
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8327598   1.7470300   1.9184897
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.8548502   1.7910864   1.9186139
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.0457732   1.9197374   2.1718091
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                1.9267965   1.7455156   2.1080775
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                2.0062947   1.8889153   2.1236742
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                2.0882404   1.9847243   2.1917565
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.8868636   1.7919648   1.9817624
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    NA                1.9334370   1.8122979   2.0545761
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    NA                1.9993421   1.8316954   2.1669889
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    NA                2.1487155   1.9101902   2.3872408
3-6 months     ki1114097-CMIN             PERU                           1                    NA                1.9037853   1.8036426   2.0039280
3-6 months     ki1114097-CMIN             PERU                           2                    NA                1.8098780   1.7075909   1.9121651
3-6 months     ki1114097-CMIN             PERU                           3                    NA                1.9030405   1.8076446   1.9984365
3-6 months     ki1114097-CMIN             PERU                           4                    NA                1.9036733   1.8135957   1.9937509
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.3050687   1.1828070   1.4273303
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.1835662   1.1186919   1.2484404
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.2755140   1.2123546   1.3386735
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.3404431   1.2359881   1.4448981
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.4009268   1.2326056   1.5692479
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.4983849   1.3831463   1.6136234
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.4705939   1.3451094   1.5960784
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.7007376   1.2248583   2.1766168
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.2627173   1.1873171   1.3381174
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    NA                1.2232453   1.1427175   1.3037732
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    NA                1.3257107   1.2105467   1.4408747
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    NA                1.2955129   1.1140869   1.4769390
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.3328710   1.2423388   1.4234032
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.3533289   1.2812594   1.4253985
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                1.3687865   1.2948426   1.4427304
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                1.4523113   1.1991041   1.7055186
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.2710734   1.1494987   1.3926481
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                1.2233344   1.1121800   1.3344888
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                1.3444757   1.2498768   1.4390745
6-9 months     ki0047075b-MAL-ED          PERU                           4                    NA                1.3972006   1.2952350   1.4991662
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.3020779   1.1469046   1.4572513
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.3606146   1.2097837   1.5114455
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.4280121   1.3116147   1.5444096
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.3841228   1.2601674   1.5080782
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1969010   1.0563784   1.3374236
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.1854584   1.0372828   1.3336341
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.1697804   1.0275721   1.3119887
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                1.1724696   1.0622112   1.2827279
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2464824   1.1806251   1.3123397
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.2937287   1.2067095   1.3807480
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.2829580   1.2094278   1.3564883
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.4564110   1.3869569   1.5258652
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.2970635   1.1246004   1.4695266
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                1.4747137   1.3389480   1.6104794
6-9 months     ki1101329-Keneba           GAMBIA                         3                    NA                1.5824080   1.3669103   1.7979056
6-9 months     ki1101329-Keneba           GAMBIA                         4                    NA                1.4581588   1.3340260   1.5822916
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.1784351   1.0882260   1.2686442
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                1.0906244   0.9982216   1.1830271
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                1.2230094   1.1299644   1.3160545
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                1.2298103   1.1243798   1.3352408
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.2250728   1.1380033   1.3121422
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    NA                1.2903107   1.1804927   1.4001286
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    NA                1.2741606   1.1416240   1.4066972
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    NA                1.5190113   1.2504523   1.7875703
6-9 months     ki1114097-CMIN             PERU                           1                    NA                1.1607628   1.0612163   1.2603094
6-9 months     ki1114097-CMIN             PERU                           2                    NA                1.0736854   0.9818927   1.1654780
6-9 months     ki1114097-CMIN             PERU                           3                    NA                1.2931106   1.1756453   1.4105760
6-9 months     ki1114097-CMIN             PERU                           4                    NA                1.1734445   1.1045636   1.2423254
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.0232344   0.9063046   1.1401643
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.0346264   0.9740988   1.0951541
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.9542462   0.8911955   1.0172969
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.0233548   0.9034192   1.1432905
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.2519358   1.0415546   1.4623171
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.1771281   1.0593879   1.2948682
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.3461927   1.2382314   1.4541540
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.5505849   1.2595406   1.8416291
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.0861099   1.0114518   1.1607680
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                1.0488364   0.9853779   1.1122948
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                1.1509899   1.0644823   1.2374975
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                0.9398940   0.7159655   1.1638225
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.0895076   0.9772168   1.2017984
9-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                1.0613998   0.9709243   1.1518753
9-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                1.1256186   1.0365853   1.2146519
9-12 months    ki0047075b-MAL-ED          PERU                           4                    NA                1.1217776   0.9994777   1.2440776
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8554973   0.6616939   1.0493006
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.9652088   0.8235025   1.1069151
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.0316351   0.9335942   1.1296760
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.0507449   0.9219674   1.1795224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6322199   0.3896139   0.8748260
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.9011094   0.7821755   1.0200433
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8174031   0.7000184   0.9347878
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.8750900   0.7233414   1.0268385
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6569756   0.5017149   0.8122362
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.6111412   0.3596541   0.8626283
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.9533094   0.6557073   1.2509116
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.8464287   0.5097710   1.1830863
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.0952056   0.9657586   1.2246526
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.0588084   0.9357215   1.1818953
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                1.0353910   0.8865953   1.1841867
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                1.1200998   1.0029120   1.2372875
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0241111   0.9553329   1.0928893
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.0752128   1.0077914   1.1426342
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.1026489   1.0311581   1.1741398
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.1190553   1.0520181   1.1860925
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.9572153   0.8181239   1.0963066
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.8526017   0.6685761   1.0366273
9-12 months    ki1101329-Keneba           GAMBIA                         3                    NA                1.0472122   0.8868859   1.2075385
9-12 months    ki1101329-Keneba           GAMBIA                         4                    NA                1.0764880   0.9348878   1.2180883
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.9740040   0.8889955   1.0590125
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                1.0474561   0.9592409   1.1356712
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                1.0822954   0.9909272   1.1736637
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                1.0596757   0.9875295   1.1318220
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.8377928   0.7616715   0.9139140
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    NA                1.0085911   0.8914576   1.1257246
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    NA                1.1545402   1.0091928   1.2998875
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    NA                1.1479000   0.9255040   1.3702961
9-12 months    ki1114097-CMIN             PERU                           1                    NA                1.0136321   0.8849796   1.1422847
9-12 months    ki1114097-CMIN             PERU                           2                    NA                1.0312724   0.9374721   1.1250727
9-12 months    ki1114097-CMIN             PERU                           3                    NA                0.9955636   0.9055506   1.0855766
9-12 months    ki1114097-CMIN             PERU                           4                    NA                1.0858772   1.0303857   1.1413686
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8299472   0.7540027   0.9058918
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8717545   0.8030236   0.9404853
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.9408141   0.8772178   1.0044104
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.0062166   0.8695910   1.1428423
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.0122504   0.8280033   1.1964974
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.1761303   1.0574615   1.2947991
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.1069166   1.0242929   1.1895404
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.2667269   1.1338159   1.3996379
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8857383   0.8358680   0.9356086
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.9350297   0.8644402   1.0056191
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.9855586   0.8766782   1.0944389
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    NA                0.9273542   0.5035351   1.3511734
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.9251352   0.8593875   0.9908828
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.9741375   0.9064910   1.0417841
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.9737801   0.8929499   1.0546103
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                1.0276062   0.8424643   1.2127481
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8419835   0.6587177   1.0252494
12-15 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.8447248   0.7620928   0.9273567
12-15 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.9254196   0.8559358   0.9949035
12-15 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.9125261   0.8131614   1.0118907
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8030043   0.6627383   0.9432702
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.9050348   0.7808760   1.0291937
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.9572462   0.8568432   1.0576493
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.0242786   0.9164122   1.1321450
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7096538   0.5375783   0.8817293
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8326842   0.6964086   0.9689599
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.9068675   0.8017663   1.0119687
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.8974715   0.7663631   1.0285800
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9230169   0.8730117   0.9730221
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.9769711   0.9222939   1.0316483
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.9656042   0.9106460   1.0205624
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                1.0236552   0.9603112   1.0869991
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9072793   0.8205096   0.9940489
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8472458   0.7709860   0.9235055
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.9475730   0.8737517   1.0213944
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.9756767   0.9110968   1.0402566
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.9225401   0.8336469   1.0114333
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                1.0715957   0.9608285   1.1823628
12-15 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.8714652   0.7581493   0.9847811
12-15 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.7704578   0.6551308   0.8857847
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.0115950   0.8542258   1.1689641
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                1.0780525   0.9432415   1.2128635
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.9742307   0.8451400   1.1033215
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                1.0859699   0.9181175   1.2538222
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7907867   0.7114631   0.8701103
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.9302103   0.8402723   1.0201483
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.9467950   0.7943387   1.0992512
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.8975157   0.6483894   1.1466420
12-15 months   ki1114097-CMIN             PERU                           1                    NA                0.8328873   0.6377421   1.0280325
12-15 months   ki1114097-CMIN             PERU                           2                    NA                0.8597002   0.7289120   0.9904885
12-15 months   ki1114097-CMIN             PERU                           3                    NA                0.8549471   0.7673971   0.9424972
12-15 months   ki1114097-CMIN             PERU                           4                    NA                0.9180554   0.8637062   0.9724047
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.9681693   0.8233541   1.1129846
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                0.9673271   0.8605998   1.0740543
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.0651985   0.9615881   1.1688090
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                0.9797291   0.8499989   1.1094592
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8149100   0.7327113   0.8971088
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.7996186   0.7355518   0.8636854
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.9383977   0.8434464   1.0333490
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                0.8626399   0.7539100   0.9713698
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.7426236   0.5853412   0.8999059
15-18 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.9083997   0.8229066   0.9938928
15-18 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8273432   0.7626595   0.8920269
15-18 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.8566336   0.7719268   0.9413404
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8471074   0.6994942   0.9947206
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.8516318   0.7364957   0.9667680
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.9089255   0.8062651   1.0115859
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.9085088   0.8230313   0.9939863
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7260935   0.5644157   0.8877714
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7188772   0.6170090   0.8207454
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6375303   0.5270584   0.7480022
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.7753245   0.6487914   0.9018576
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                0.7090863   0.6114934   0.8066793
15-18 months   ki1000109-EE               PAKISTAN                       2                    NA                0.8629713   0.6717622   1.0541804
15-18 months   ki1000109-EE               PAKISTAN                       3                    NA                0.9358985   0.8459301   1.0258668
15-18 months   ki1000109-EE               PAKISTAN                       4                    NA                0.9916067   0.7751765   1.2080369
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8107932   0.7659434   0.8556429
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8771714   0.8227125   0.9316303
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.8491751   0.7935858   0.9047645
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.8763048   0.8079497   0.9446600
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8614569   0.7827119   0.9402018
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8362675   0.7386158   0.9339191
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.9724378   0.8807748   1.0641008
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.0177974   0.9437010   1.0918937
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8628010   0.7774391   0.9481628
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8243446   0.7434628   0.9052264
15-18 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.8433542   0.7428527   0.9438558
15-18 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.8953102   0.7518241   1.0387964
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6738996   0.6027848   0.7450145
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.8052287   0.7104011   0.9000564
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.7467895   0.6330355   0.8605434
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.9506291   0.6672627   1.2339954
15-18 months   ki1114097-CMIN             PERU                           1                    NA                0.7664507   0.6052684   0.9276329
15-18 months   ki1114097-CMIN             PERU                           2                    NA                0.8192793   0.6974826   0.9410760
15-18 months   ki1114097-CMIN             PERU                           3                    NA                0.8542722   0.7770489   0.9314955
15-18 months   ki1114097-CMIN             PERU                           4                    NA                0.8975380   0.8423934   0.9526826
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7509193   0.6693008   0.8325378
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8075889   0.7534345   0.8617433
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8328698   0.7780427   0.8876970
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.0270253   0.9649722   1.0890783
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.5297218   1.0617632   1.9976805
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                0.8389145   0.6526758   1.0251533
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                0.9438934   0.8546135   1.0331734
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                0.9150918   0.8147862   1.0153975
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8101851   0.7379867   0.8823834
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.8480752   0.7817053   0.9144451
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.7867746   0.7190753   0.8544738
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                0.8450413   0.7011702   0.9889124
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.7157909   0.6358904   0.7956914
18-21 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.8343883   0.7496185   0.9191581
18-21 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8640360   0.7918479   0.9362241
18-21 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.9880051   0.8502366   1.1257735
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6042600   0.4519432   0.7565769
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.6289976   0.5230402   0.7349550
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.7872018   0.6894030   0.8850007
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.8881677   0.7850887   0.9912468
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6180730   0.4293323   0.8068137
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6727069   0.5415422   0.8038717
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7713192   0.6640226   0.8786158
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.8471656   0.7262901   0.9680411
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6621100   0.2925276   1.0316923
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.6117298   0.4324066   0.7910530
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.7813583   0.4299400   1.1327767
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.3768639   0.2542450   0.4994828
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8268874   0.7768770   0.8768979
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8094457   0.7541842   0.8647072
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.8024609   0.7467247   0.8581971
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.9410170   0.8715428   1.0104912
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8614787   0.7824437   0.9405136
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8708466   0.7640336   0.9776595
18-21 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.7759691   0.6520918   0.8998463
18-21 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.8249294   0.7068974   0.9429614
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7597061   0.6928854   0.8265267
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.7879916   0.7111142   0.8648689
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.9341441   0.7898374   1.0784508
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.7693273   0.5453867   0.9932680
18-21 months   ki1114097-CMIN             PERU                           1                    NA                0.8881078   0.6926247   1.0835910
18-21 months   ki1114097-CMIN             PERU                           2                    NA                0.7217091   0.6122788   0.8311395
18-21 months   ki1114097-CMIN             PERU                           3                    NA                0.7771410   0.7060736   0.8482085
18-21 months   ki1114097-CMIN             PERU                           4                    NA                0.8510876   0.8022618   0.8999134
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7993064   0.7169339   0.8816789
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8555857   0.7859931   0.9251782
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8261408   0.7647030   0.8875786
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                0.7012577   0.5471874   0.8553280
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.8575640   0.6935033   1.0216248
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                0.8526864   0.7740833   0.9312896
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                0.8375079   0.7498169   0.9251988
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                0.8609095   0.7707587   0.9510602
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8366514   0.7640637   0.9092391
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.8230232   0.7550339   0.8910125
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8724073   0.7904443   0.9543704
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                0.8509049   0.7225411   0.9792687
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6156543   0.5331355   0.6981730
21-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.7324670   0.6350667   0.8298674
21-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.7886218   0.7061260   0.8711175
21-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.8989597   0.7995855   0.9983339
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7932193   0.6388135   0.9476252
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.7711047   0.6253898   0.9168195
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.8784247   0.7803048   0.9765446
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.9270902   0.8411988   1.0129817
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7324097   0.5764179   0.8884016
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8735759   0.7449740   1.0021778
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7306630   0.6488954   0.8124306
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.8358770   0.6955056   0.9762483
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7545048   0.7042949   0.8047146
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.7611962   0.7031414   0.8192509
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.8432415   0.7687076   0.9177755
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.8852213   0.8051544   0.9652882
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6965160   0.6036788   0.7893533
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.6120295   0.4858178   0.7382413
21-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.7589635   0.6329109   0.8850161
21-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.7039722   0.5204235   0.8875210
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6864800   0.6139911   0.7589688
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.7549500   0.6527421   0.8571579
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.8838832   0.7162445   1.0515219
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    NA                1.0013909   0.7597467   1.2430351


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9811941   1.9001209   2.0622672
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9688270   1.9322003   2.0054538
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7956997   1.7597707   1.8316288
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                2.0250420   1.9632063   2.0868777
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9557572   1.8876279   2.0238865
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                1.8953049   1.8471640   1.9434459
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2453156   1.2052458   1.2853854
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4777761   1.3965483   1.5590038
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2596030   1.2102580   1.3089479
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3554975   1.3113878   1.3996072
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3215604   1.2680656   1.3750551
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3797718   1.3147564   1.4447871
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1603951   1.0943804   1.2264098
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3242529   1.2877176   1.3607883
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.4471311   1.3649805   1.5292816
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1675964   1.1205531   1.2146397
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.2658739   1.2051613   1.3265866
6-9 months     ki1114097-CMIN             PERU                           NA                   NA                1.1833717   1.1372574   1.2294860
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9919993   0.9533873   1.0306114
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3016265   1.2277379   1.3755150
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0893581   1.0490377   1.1296785
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0962733   1.0456785   1.1468681
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0069747   0.9413944   1.0725551
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8425886   0.7721546   0.9130226
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7408618   0.5896892   0.8920343
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0645888   1.0003633   1.1288144
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0869313   1.0526530   1.1212096
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9814536   0.9032989   1.0596083
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0452221   1.0028685   1.0875757
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.9627471   0.9031556   1.0223387
9-12 months    ki1114097-CMIN             PERU                           NA                   NA                1.0515832   1.0119659   1.0912005
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9140823   0.8737353   0.9544292
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9102897   0.8710907   0.9494887
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9495537   0.9102511   0.9888563
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8909703   0.8456733   0.9362673
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9224857   0.8646959   0.9802754
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9662246   0.9387330   0.9937161
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9317701   0.8947043   0.9688359
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9318251   0.8793023   0.9843480
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0048167   0.9431253   1.0665081
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8663814   0.8121793   0.9205834
12-15 months   ki1114097-CMIN             PERU                           NA                   NA                0.8902343   0.8475405   0.9329281
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8430013   0.8017536   0.8842490
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8550693   0.8130812   0.8970574
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8881365   0.8355015   0.9407716
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6948642   0.6347066   0.7550218
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8470370   0.7674369   0.9266372
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8447057   0.8177112   0.8717003
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9334014   0.8909294   0.9758735
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8527709   0.8043798   0.9011619
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7507779   0.6985683   0.8029874
15-18 months   ki1114097-CMIN             PERU                           NA                   NA                0.8739291   0.8334068   0.9144514
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8135860   0.7790999   0.8480721
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8180755   0.7799494   0.8562017
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8431892   0.7987674   0.8876110
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7768974   0.7213823   0.8324125
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7390108   0.6741210   0.8039007
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6497815   0.4982153   0.8013476
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8384585   0.8098695   0.8670476
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8455012   0.7945843   0.8964181
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7976340   0.7496355   0.8456326
18-21 months   ki1114097-CMIN             PERU                           NA                   NA                0.8210587   0.7833427   0.8587748
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8293116   0.7901578   0.8684654
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.8444738   0.7975589   0.8913888
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8373992   0.7974567   0.8773417
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7658062   0.7182829   0.8133295
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8815730   0.8278556   0.9352905
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7843948   0.7264131   0.8423765
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7919945   0.7609687   0.8230202
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.6973022   0.6373133   0.7572910
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7554929   0.6980149   0.8129708


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.2178460    0.0842836    0.3514084
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.1726249    0.0323949    0.3128549
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.2681056    0.0411330    0.4950783
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0319134   -0.1874863    0.2513132
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0138976   -0.2167096    0.2445047
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0597724   -0.2925989    0.4121437
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0430773   -0.1034365    0.1895911
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.1454923   -0.0122936    0.3032782
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.1614923   -0.2070386    0.5300233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0196528   -0.1781665    0.1388609
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0289536   -0.1859218    0.1280146
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.3308164    0.0935975    0.5680353
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.0822292   -0.1986514    0.3631099
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.0911845   -0.1707215    0.3530905
3-6 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.1215777   -0.1373513    0.3805067
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0163457   -0.2717752    0.3044666
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1780295   -0.0998315    0.4558905
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.3055072    0.0207596    0.5902548
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0827095   -0.4306646    0.2652456
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0584302   -0.4016675    0.2848071
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0146041   -0.3578824    0.3286741
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.1078258    0.0203315    0.1953202
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.1805053    0.0829263    0.2780844
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.2666274    0.1282022    0.4050526
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0427824   -0.1434504    0.0578857
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0712584   -0.0395905    0.1821073
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0933487   -0.0016517    0.1883492
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.1189767   -0.3398141    0.1018607
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                 -0.0394785   -0.2119095    0.1329525
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.0424672   -0.1209583    0.2058927
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0465734   -0.1085210    0.2016678
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.1124785   -0.0805435    0.3055005
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.2618519    0.0039563    0.5197475
3-6 months     ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           2                    1                 -0.0939073   -0.2374479    0.0496333
3-6 months     ki1114097-CMIN             PERU                           3                    1                 -0.0007448   -0.1390705    0.1375810
3-6 months     ki1114097-CMIN             PERU                           4                    1                 -0.0001120   -0.1348628    0.1346388
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.1215025   -0.2600847    0.0170797
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0295547   -0.1672848    0.1081755
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0353744   -0.1254258    0.1961746
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0974581   -0.1090823    0.3039985
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0696671   -0.1437412    0.2830755
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.2998108   -0.2052314    0.8048530
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0394719   -0.1497893    0.0708454
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0629934   -0.0746580    0.2006449
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.0327957   -0.1636747    0.2292660
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0204579   -0.0952288    0.1361447
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0359155   -0.0811982    0.1530292
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1194403   -0.1497345    0.3886152
6-9 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0477390   -0.2126053    0.1171272
6-9 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.0734022   -0.0805677    0.2273721
6-9 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.1261271   -0.0321418    0.2843961
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0585367   -0.1585626    0.2756360
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1259342   -0.0694889    0.3213574
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0820448   -0.1175675    0.2816572
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0114426   -0.2166798    0.1937947
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0271206   -0.2286958    0.1744546
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0244314   -0.2048435    0.1559806
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0472464   -0.0619465    0.1564392
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0364756   -0.0625264    0.1354777
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.2099287    0.1141416    0.3057157
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.1776502   -0.0422532    0.3975536
6-9 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.2853445    0.0088238    0.5618651
6-9 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.1610953   -0.0514387    0.3736293
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.0878108   -0.2174372    0.0418156
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0445743   -0.0853110    0.1744595
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0513752   -0.0882337    0.1909841
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0652379   -0.0752698    0.2057456
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0490879   -0.1090439    0.2072196
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.2939386    0.0115419    0.5763352
6-9 months     ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             PERU                           2                    1                 -0.0870775   -0.2224742    0.0483192
6-9 months     ki1114097-CMIN             PERU                           3                    1                  0.1323478   -0.0215469    0.2862425
6-9 months     ki1114097-CMIN             PERU                           4                    1                  0.0126816   -0.1082899    0.1336532
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0113920   -0.1202512    0.1430352
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0689882   -0.2026067    0.0646302
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0001204   -0.1666811    0.1669219
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0748078   -0.3164344    0.1668188
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0942568   -0.1421339    0.3306475
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.2986490   -0.0605894    0.6578875
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0372735   -0.1352235    0.0606764
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0648800   -0.0496527    0.1794126
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.1462159   -0.3818483    0.0894165
9-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           2                    1                 -0.0281079   -0.1721702    0.1159545
9-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.0361110   -0.1078693    0.1800912
9-12 months    ki0047075b-MAL-ED          PERU                           4                    1                  0.0322700   -0.1334427    0.1979828
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.1097116   -0.1308482    0.3502714
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1761379   -0.0416853    0.3939611
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1952477   -0.0378057    0.4283010
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2688895   -0.0028296    0.5406086
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1851831   -0.0840505    0.4544167
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.2428701   -0.0430011    0.5287412
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0458344   -0.3413874    0.2497187
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.2963339   -0.0393340    0.6320018
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.1894531   -0.1812816    0.5601879
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0363972   -0.2153987    0.1426043
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0598146   -0.2580170    0.1383879
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0248942   -0.1503239    0.2001123
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0511017   -0.0451811    0.1473844
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0785378   -0.0208917    0.1779673
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0949442   -0.0013326    0.1912210
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.1046135   -0.3365156    0.1272885
9-12 months    ki1101329-Keneba           GAMBIA                         3                    1                  0.0899969   -0.1223472    0.3023411
9-12 months    ki1101329-Keneba           GAMBIA                         4                    1                  0.1192728   -0.0818684    0.3204140
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0734520   -0.0491163    0.1960203
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.1082914   -0.0171706    0.2337534
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0856717   -0.0267949    0.1981384
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    1                  0.1707983    0.0311178    0.3104788
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    1                  0.3167474    0.1530141    0.4804807
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    1                  0.3101073    0.0749964    0.5452181
9-12 months    ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             PERU                           2                    1                  0.0176403   -0.1416640    0.1769446
9-12 months    ki1114097-CMIN             PERU                           3                    1                 -0.0180685   -0.1751239    0.1389869
9-12 months    ki1114097-CMIN             PERU                           4                    1                  0.0722450   -0.0679195    0.2124095
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0418072   -0.0606465    0.1442609
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.1108669    0.0113878    0.2103461
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.1762694    0.0202144    0.3323244
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.1638799   -0.0552375    0.3829972
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0946662   -0.1069340    0.2962665
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.2544765    0.0277064    0.4812467
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0492914   -0.0371373    0.1357201
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0998202   -0.0199378    0.2195783
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0416159   -0.3851272    0.4683591
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0490024   -0.0453774    0.1433822
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0486449   -0.0556305    0.1529203
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1024711   -0.0940524    0.2989945
12-15 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0027412   -0.1983521    0.2038346
12-15 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0834361   -0.1127546    0.2796268
12-15 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0705425   -0.1381889    0.2792739
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.1020305   -0.0853688    0.2894299
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1542420   -0.0184772    0.3269612
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.2212743    0.0441299    0.3984188
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1230305   -0.0965853    0.3426463
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1972137   -0.0043164    0.3987438
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1878177   -0.0282601    0.4038956
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0539542   -0.0202129    0.1281213
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0425873   -0.0316923    0.1168669
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1006383    0.0198073    0.1814692
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0600335   -0.1759177    0.0558507
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0402938   -0.0736950    0.1542825
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0683974   -0.0397934    0.1765883
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.1490555    0.0047797    0.2933314
12-15 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0510749   -0.1950698    0.0929200
12-15 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.1520823   -0.2979809   -0.0061838
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0664575   -0.1439753    0.2768904
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 -0.0373642   -0.2401392    0.1654107
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0743749   -0.1652866    0.3140363
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.1394236    0.0190741    0.2597731
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.1560083   -0.0156537    0.3276702
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.1067290   -0.1550766    0.3685346
12-15 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             PERU                           2                    1                  0.0268129   -0.2080908    0.2617166
12-15 months   ki1114097-CMIN             PERU                           3                    1                  0.0220598   -0.1922018    0.2363215
12-15 months   ki1114097-CMIN             PERU                           4                    1                  0.0851681   -0.1174021    0.2877383
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0008423   -0.1809986    0.1793140
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0970292   -0.0811138    0.2751722
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0115597   -0.1824761    0.2055956
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0152914   -0.1193199    0.0887371
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.1234877   -0.0020247    0.2490000
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0477299   -0.0886905    0.1841504
15-18 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.1657762   -0.0128460    0.3443983
15-18 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0847197   -0.0852113    0.2546506
15-18 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.1140100   -0.0644825    0.2925025
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0045244   -0.1829408    0.1919896
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0618181   -0.1183520    0.2419882
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0614014   -0.1093466    0.2321494
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0072164   -0.1986635    0.1842308
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0885632   -0.2844541    0.1073276
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0492310   -0.1562415    0.2547034
15-18 months   ki1000109-EE               PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       2                    1                  0.1538850   -0.0607899    0.3685598
15-18 months   ki1000109-EE               PAKISTAN                       3                    1                  0.2268121    0.0940767    0.3595475
15-18 months   ki1000109-EE               PAKISTAN                       4                    1                  0.2825204    0.0451043    0.5199364
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0663782   -0.0041626    0.1369191
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0383820   -0.0329734    0.1097373
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0655117   -0.0165832    0.1476065
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0251894   -0.1507945    0.1004157
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1109809   -0.0101805    0.2321424
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1563405    0.0482200    0.2644611
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0384564   -0.1561099    0.0791972
15-18 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0194467   -0.1514972    0.1126037
15-18 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0325092   -0.1343775    0.1993960
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.1313291    0.0129257    0.2497325
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0728898   -0.0602200    0.2059997
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.2767294   -0.0143844    0.5678432
15-18 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             PERU                           2                    1                  0.0528286   -0.1492687    0.2549259
15-18 months   ki1114097-CMIN             PERU                           3                    1                  0.0878215   -0.0912792    0.2669222
15-18 months   ki1114097-CMIN             PERU                           4                    1                  0.1310873   -0.0391010    0.3012756
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0566696   -0.0412808    0.1546200
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0819505   -0.0163734    0.1802744
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.2761060    0.1735772    0.3786348
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.6908073   -1.1971859   -0.1844288
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.5858284   -1.0628632   -0.1087936
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.6146300   -1.0930964   -0.1361636
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0378901   -0.0599815    0.1357618
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0234105   -0.1228533    0.0760322
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0348562   -0.1261400    0.1958524
18-21 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.1185974    0.0017473    0.2354476
18-21 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.1482451    0.0401403    0.2563499
18-21 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.2722142    0.1123824    0.4320459
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0247376   -0.1608789    0.2103541
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1829418    0.0024151    0.3634685
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.2839077    0.0998552    0.4679602
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0546339   -0.1749998    0.2842676
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1532461   -0.0642487    0.3707410
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.2290926    0.0042537    0.4539315
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0503801   -0.4611695    0.3604092
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.1192483   -0.3907379    0.6292346
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 -0.2852461   -0.6746385    0.1041464
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0174418   -0.0918454    0.0569619
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0244265   -0.0992533    0.0504002
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1141296    0.0286007    0.1996585
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0093679   -0.1239002    0.1426360
18-21 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0855096   -0.2339257    0.0629065
18-21 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0365493   -0.1795118    0.1064131
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0282855   -0.0738573    0.1304283
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.1744381    0.0140229    0.3348532
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0096213   -0.2241269    0.2433694
18-21 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             PERU                           2                    1                 -0.1663987   -0.3904270    0.0576296
18-21 months   ki1114097-CMIN             PERU                           3                    1                 -0.1109668   -0.3189674    0.0970338
18-21 months   ki1114097-CMIN             PERU                           4                    1                 -0.0370202   -0.2385087    0.1644683
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0562793   -0.0515726    0.1641311
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0268344   -0.0760435    0.1297123
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0980487   -0.2727665    0.0766691
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0048776   -0.1873263    0.1775710
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0200562   -0.2064689    0.1663565
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0033454   -0.1837551    0.1904459
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0136282   -0.1132311    0.0859746
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0357560   -0.0739791    0.1454910
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0142535   -0.1332612    0.1617683
21-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.1168128   -0.0107353    0.2443608
21-24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.1729675    0.0562081    0.2897269
21-24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.2833054    0.1541296    0.4124812
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0221147   -0.2353580    0.1911286
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0852054   -0.0986569    0.2690676
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1338709   -0.0433014    0.3110432
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1411662   -0.0613483    0.3436808
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0017467   -0.1783003    0.1748069
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1034673   -0.1068559    0.3137905
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0066914   -0.0702885    0.0836713
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0887367   -0.0009664    0.1784398
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1307165    0.0361574    0.2252757
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0844865   -0.2412373    0.0722643
21-24 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.0624475   -0.0940849    0.2189798
21-24 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0074562   -0.1988210    0.2137334
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0684700   -0.0568339    0.1937740
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.1974033    0.0147633    0.3800433
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.3149110    0.0626282    0.5671937


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.1626324    0.0643645    0.2609003
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0266271   -0.1423088    0.1955630
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0541043   -0.0299022    0.1381108
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0066548   -0.1063927    0.1197023
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0937794   -0.1371251    0.3246839
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1742425   -0.0553787    0.4038636
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0297968   -0.3477966    0.2882030
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0850134    0.0437209    0.1263059
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0341983   -0.0263849    0.0947815
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0207313   -0.1314292    0.0899666
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0688936   -0.0142795    0.1520667
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0084804   -0.1018017    0.0848410
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0597531   -0.1709576    0.0514514
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0768493   -0.0861936    0.2398922
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0031143   -0.0544408    0.0482122
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0226265   -0.0532579    0.0985109
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0504869   -0.0676839    0.1686578
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0776938   -0.0719584    0.2273461
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0365059   -0.1763790    0.1033672
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0777706    0.0181178    0.1374234
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.1500676    0.0134753    0.2866599
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0108387   -0.0886975    0.0670201
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0408012   -0.0233066    0.1049090
6-9 months     ki1114097-CMIN             PERU                           1                    NA                 0.0226088   -0.0733216    0.1185392
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0312351   -0.1414412    0.0789710
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0496906   -0.1516658    0.2510471
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0032482   -0.0618849    0.0683812
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.0067657   -0.0982146    0.1117460
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1514775   -0.0189636    0.3219185
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2103687   -0.0207546    0.4414919
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0838862   -0.1134047    0.2811771
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0306168   -0.1306618    0.0694282
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0628202    0.0022018    0.1234386
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0242383   -0.0788426    0.1273192
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0712181   -0.0094757    0.1519119
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1249544    0.0609655    0.1889432
9-12 months    ki1114097-CMIN             PERU                           1                    NA                 0.0379511   -0.0855797    0.1614819
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0841350    0.0043637    0.1639064
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1299270   -0.0475507    0.3074047
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0245514   -0.0085601    0.0576630
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0244185   -0.0327492    0.0815863
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0489868   -0.1169849    0.2149584
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1194814   -0.0084912    0.2474539
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1467020   -0.0149264    0.3083305
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0432077    0.0004867    0.0859287
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0244908   -0.0530335    0.1020152
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0092850   -0.0603176    0.0788876
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0067783   -0.1442048    0.1306483
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0755947    0.0176514    0.1335379
12-15 months   ki1114097-CMIN             PERU                           1                    NA                 0.0573470   -0.1260580    0.2407520
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0339420   -0.1056404    0.1735245
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0280913   -0.0421521    0.0983347
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1124458   -0.0361343    0.2610258
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0410291   -0.0996494    0.1817077
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0312293   -0.1817262    0.1192675
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                 0.1379507    0.0412237    0.2346777
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0339126   -0.0048834    0.0727085
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0719445    0.0007308    0.1431583
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0100301   -0.0736990    0.0536387
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0768782    0.0170781    0.1366783
15-18 months   ki1114097-CMIN             PERU                           1                    NA                 0.1074784   -0.0512637    0.2662205
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0626667   -0.0110115    0.1363449
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.6136460   -1.0539399   -0.1733521
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0078904   -0.0546233    0.0704042
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1273983    0.0501441    0.2046525
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1726374    0.0243269    0.3209478
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1209378   -0.0576772    0.2995528
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0123285   -0.3201279    0.2954710
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0115711   -0.0294653    0.0526075
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0159775   -0.0785592    0.0466042
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0379280   -0.0140185    0.0898745
18-21 months   ki1114097-CMIN             PERU                           1                    NA                -0.0670491   -0.2612796    0.1271814
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0300052   -0.0476279    0.1076383
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0130902   -0.1697717    0.1435912
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0007478   -0.0627343    0.0642300
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1501519    0.0671113    0.2331926
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0883537   -0.0628766    0.2395839
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0519851   -0.0953050    0.1992751
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0374897   -0.0022502    0.0772296
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0007862   -0.0788481    0.0804204
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0690129    0.0132798    0.1247460

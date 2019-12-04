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
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    39    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    98    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    82    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    12    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    35    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    99    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    62    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    12    208
3-6 months     ki0047075b-MAL-ED          INDIA                          1                   120    230
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    86    230
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    24    230
3-6 months     ki0047075b-MAL-ED          INDIA                          4                     0    230
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    73    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    87    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    57    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    16    233
3-6 months     ki0047075b-MAL-ED          PERU                           1                    14    267
3-6 months     ki0047075b-MAL-ED          PERU                           2                    36    267
3-6 months     ki0047075b-MAL-ED          PERU                           3                    97    267
3-6 months     ki0047075b-MAL-ED          PERU                           4                   120    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    23    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    64    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    77    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    79    243
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    17    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    58    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    83    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    81    239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    11     21
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                     4     21
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                     5     21
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                     1     21
3-6 months     ki1000108-IRC              INDIA                          1                     0      2
3-6 months     ki1000108-IRC              INDIA                          2                     0      2
3-6 months     ki1000108-IRC              INDIA                          3                     2      2
3-6 months     ki1000108-IRC              INDIA                          4                     0      2
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    51    156
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    31    156
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    31    156
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    43    156
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                   208    549
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                   158    549
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                   138    549
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    45    549
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   362   1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   322   1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   377   1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   595   1656
3-6 months     ki1101329-Keneba           GAMBIA                         1                   155    530
3-6 months     ki1101329-Keneba           GAMBIA                         2                   119    530
3-6 months     ki1101329-Keneba           GAMBIA                         3                   133    530
3-6 months     ki1101329-Keneba           GAMBIA                         4                   123    530
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    62    181
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    48    181
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    41    181
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    30    181
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    32    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    95    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    83    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    14    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    30    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    91    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    55    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    22    198
6-9 months     ki0047075b-MAL-ED          INDIA                          1                   104    230
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    81    230
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    40    230
6-9 months     ki0047075b-MAL-ED          INDIA                          4                     5    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    57    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    73    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    73    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    27    230
6-9 months     ki0047075b-MAL-ED          PERU                           1                    18    244
6-9 months     ki0047075b-MAL-ED          PERU                           2                    37    244
6-9 months     ki0047075b-MAL-ED          PERU                           3                    73    244
6-9 months     ki0047075b-MAL-ED          PERU                           4                   116    244
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    30    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    45    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    68    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    88    231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    25    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    48    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    72    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    80    225
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    12     35
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    11     35
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    11     35
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                     1     35
6-9 months     ki1000108-IRC              INDIA                          1                     0      3
6-9 months     ki1000108-IRC              INDIA                          2                     3      3
6-9 months     ki1000108-IRC              INDIA                          3                     0      3
6-9 months     ki1000108-IRC              INDIA                          4                     0      3
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    46    142
6-9 months     ki1000109-ResPak           PAKISTAN                       2                    20    142
6-9 months     ki1000109-ResPak           PAKISTAN                       3                    26    142
6-9 months     ki1000109-ResPak           PAKISTAN                       4                    50    142
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                     5     20
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                     6     20
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                     6     20
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4                     3     20
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   347   1483
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   313   1483
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   377   1483
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   446   1483
6-9 months     ki1101329-Keneba           GAMBIA                         1                   110    378
6-9 months     ki1101329-Keneba           GAMBIA                         2                    98    378
6-9 months     ki1101329-Keneba           GAMBIA                         3                    79    378
6-9 months     ki1101329-Keneba           GAMBIA                         4                    91    378
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    48    180
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    52    180
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    42    180
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    38    180
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    80    177
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    50    177
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    29    177
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    18    177
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    29    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    83    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    86    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    27    225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    20    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    68    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    81    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    25    194
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    99    227
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    95    227
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    28    227
9-12 months    ki0047075b-MAL-ED          INDIA                          4                     5    227
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    49    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    76    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    72    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    32    229
9-12 months    ki0047075b-MAL-ED          PERU                           1                    27    234
9-12 months    ki0047075b-MAL-ED          PERU                           2                    48    234
9-12 months    ki0047075b-MAL-ED          PERU                           3                    66    234
9-12 months    ki0047075b-MAL-ED          PERU                           4                    93    234
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    37    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    46    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    75    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    75    233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    24    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    47    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    75    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    78    224
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     9     48
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    17     48
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    15     48
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     7     48
9-12 months    ki1000108-IRC              INDIA                          1                     1      5
9-12 months    ki1000108-IRC              INDIA                          2                     3      5
9-12 months    ki1000108-IRC              INDIA                          3                     1      5
9-12 months    ki1000108-IRC              INDIA                          4                     0      5
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    43    140
9-12 months    ki1000109-ResPak           PAKISTAN                       2                    27    140
9-12 months    ki1000109-ResPak           PAKISTAN                       3                    30    140
9-12 months    ki1000109-ResPak           PAKISTAN                       4                    40    140
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    31     99
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    23     99
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    26     99
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    19     99
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   235   1073
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   242   1073
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   241   1073
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   355   1073
9-12 months    ki1101329-Keneba           GAMBIA                         1                   125    343
9-12 months    ki1101329-Keneba           GAMBIA                         2                    75    343
9-12 months    ki1101329-Keneba           GAMBIA                         3                    70    343
9-12 months    ki1101329-Keneba           GAMBIA                         4                    73    343
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    32    157
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    42    157
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    39    157
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    44    157
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                     2      3
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                     1      3
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                     0      3
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4                     0      3
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    73    160
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    41    160
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    28    160
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    18    160
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    21    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    88    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    77    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    26    212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    13    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    49    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    79    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    43    184
12-15 months   ki0047075b-MAL-ED          INDIA                          1                   116    226
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    76    226
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    26    226
12-15 months   ki0047075b-MAL-ED          INDIA                          4                     8    226
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    54    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    80    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    61    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    35    230
12-15 months   ki0047075b-MAL-ED          PERU                           1                    21    224
12-15 months   ki0047075b-MAL-ED          PERU                           2                    47    224
12-15 months   ki0047075b-MAL-ED          PERU                           3                    74    224
12-15 months   ki0047075b-MAL-ED          PERU                           4                    82    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    33    227
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    46    227
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    76    227
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    72    227
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    30    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    50    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    74    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    72    226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    13     53
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    15     53
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    19     53
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     6     53
12-15 months   ki1000108-IRC              INDIA                          1                     1      5
12-15 months   ki1000108-IRC              INDIA                          2                     4      5
12-15 months   ki1000108-IRC              INDIA                          3                     0      5
12-15 months   ki1000108-IRC              INDIA                          4                     0      5
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    37     91
12-15 months   ki1000109-ResPak           PAKISTAN                       2                    23     91
12-15 months   ki1000109-ResPak           PAKISTAN                       3                    18     91
12-15 months   ki1000109-ResPak           PAKISTAN                       4                    13     91
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                   127    495
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                   131    495
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                   136    495
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                   101    495
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   140    777
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   153    777
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   181    777
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   303    777
12-15 months   ki1101329-Keneba           GAMBIA                         1                   167    468
12-15 months   ki1101329-Keneba           GAMBIA                         2                   113    468
12-15 months   ki1101329-Keneba           GAMBIA                         3                   104    468
12-15 months   ki1101329-Keneba           GAMBIA                         4                    84    468
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    13     83
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    28     83
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    15     83
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    27     83
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                     4      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                     0      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                     0      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4                     0      4
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    69    158
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    44    158
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    28    158
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    17    158
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    26    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    94    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    78    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                    14    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    10    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    57    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    66    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    42    175
15-18 months   ki0047075b-MAL-ED          INDIA                          1                   108    226
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    84    226
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    29    226
15-18 months   ki0047075b-MAL-ED          INDIA                          4                     5    226
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    51    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    74    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    64    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    38    227
15-18 months   ki0047075b-MAL-ED          PERU                           1                    18    213
15-18 months   ki0047075b-MAL-ED          PERU                           2                    51    213
15-18 months   ki0047075b-MAL-ED          PERU                           3                    63    213
15-18 months   ki0047075b-MAL-ED          PERU                           4                    81    213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    23    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    40    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    74    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    88    225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    27    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    50    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    67    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    73    217
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    13     57
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    26     57
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    15     57
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     3     57
15-18 months   ki1000108-IRC              INDIA                          1                     3      8
15-18 months   ki1000108-IRC              INDIA                          2                     4      8
15-18 months   ki1000108-IRC              INDIA                          3                     0      8
15-18 months   ki1000108-IRC              INDIA                          4                     1      8
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                   119    440
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                   117    440
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                   110    440
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    94    440
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   140    652
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   115    652
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   151    652
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   246    652
15-18 months   ki1101329-Keneba           GAMBIA                         1                   168    471
15-18 months   ki1101329-Keneba           GAMBIA                         2                   121    471
15-18 months   ki1101329-Keneba           GAMBIA                         3                   113    471
15-18 months   ki1101329-Keneba           GAMBIA                         4                    69    471
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                     4      9
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                     3      9
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                     1      9
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4                     1      9
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    59    161
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    55    161
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    29    161
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    18    161
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    34    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    91    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    73    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    11    209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    12    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    51    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    66    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    38    167
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    86    226
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    90    226
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    45    226
18-21 months   ki0047075b-MAL-ED          INDIA                          4                     5    226
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    49    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    76    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    63    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    39    227
18-21 months   ki0047075b-MAL-ED          PERU                           1                    26    202
18-21 months   ki0047075b-MAL-ED          PERU                           2                    40    202
18-21 months   ki0047075b-MAL-ED          PERU                           3                    67    202
18-21 months   ki0047075b-MAL-ED          PERU                           4                    69    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    19    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    31    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    73    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   110    233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    14    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    48    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    71    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    71    204
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    14     59
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    20     59
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    22     59
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     3     59
18-21 months   ki1000108-IRC              INDIA                          1                     5      7
18-21 months   ki1000108-IRC              INDIA                          2                     1      7
18-21 months   ki1000108-IRC              INDIA                          3                     1      7
18-21 months   ki1000108-IRC              INDIA                          4                     0      7
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                   123    416
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                   103    416
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    94    416
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    96    416
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     2      8
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     2      8
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1      8
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     3      8
18-21 months   ki1101329-Keneba           GAMBIA                         1                   178    498
18-21 months   ki1101329-Keneba           GAMBIA                         2                   132    498
18-21 months   ki1101329-Keneba           GAMBIA                         3                    98    498
18-21 months   ki1101329-Keneba           GAMBIA                         4                    90    498
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                     4      9
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                     3      9
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                     1      9
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4                     1      9
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    67    164
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    49    164
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    34    164
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    14    164
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    36    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    92    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    69    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    10    207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    13    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    37    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    69    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    46    165
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    84    226
21-24 months   ki0047075b-MAL-ED          INDIA                          2                   100    226
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    34    226
21-24 months   ki0047075b-MAL-ED          INDIA                          4                     8    226
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    47    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    72    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    67    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    41    227
21-24 months   ki0047075b-MAL-ED          PERU                           1                    23    189
21-24 months   ki0047075b-MAL-ED          PERU                           2                    41    189
21-24 months   ki0047075b-MAL-ED          PERU                           3                    60    189
21-24 months   ki0047075b-MAL-ED          PERU                           4                    65    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    18    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    33    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    53    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   131    235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    23    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    38    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    65    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    78    204
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    15     65
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    26     65
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    21     65
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     3     65
21-24 months   ki1000108-IRC              INDIA                          1                     4     12
21-24 months   ki1000108-IRC              INDIA                          2                     4     12
21-24 months   ki1000108-IRC              INDIA                          3                     3     12
21-24 months   ki1000108-IRC              INDIA                          4                     1     12
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   120    348
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    89    348
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    72    348
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    67    348
21-24 months   ki1101329-Keneba           GAMBIA                         1                   145    447
21-24 months   ki1101329-Keneba           GAMBIA                         2                   114    447
21-24 months   ki1101329-Keneba           GAMBIA                         3                   114    447
21-24 months   ki1101329-Keneba           GAMBIA                         4                    74    447
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     4     10
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     2     10
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     3     10
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1     10
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    63    133
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    34    133
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    26    133
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    10    133


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
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/843cbd91-fb23-4308-bb00-eefc6e0349bd/3271daca-6a6a-439b-a9fd-f1cc7c1b0f8c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/843cbd91-fb23-4308-bb00-eefc6e0349bd/3271daca-6a6a-439b-a9fd-f1cc7c1b0f8c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/843cbd91-fb23-4308-bb00-eefc6e0349bd/3271daca-6a6a-439b-a9fd-f1cc7c1b0f8c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1041611   -0.1572368   -0.0510854
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0058319   -0.0431457    0.0314819
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0091032   -0.0477033    0.0294969
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                 0.0163711   -0.0575969    0.0903392
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0144873   -0.0823643    0.1113389
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0619632    0.0095971    0.1143293
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0909593    0.0331689    0.1487497
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0118981   -0.1905554    0.2143516
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0770121   -0.1236755   -0.0303486
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0220441   -0.0677503    0.0236622
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0164073   -0.0286563    0.0614709
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                 0.0767010   -0.0245039    0.1779058
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0306740   -0.1259171    0.1872650
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                 0.0419789   -0.0511170    0.1350748
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                 0.0132355   -0.0373974    0.0638683
3-6 months     ki0047075b-MAL-ED          PERU                           4                    NA                 0.0304140   -0.0147833    0.0756113
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0728504   -0.2060905    0.0603898
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0367198   -0.1085998    0.0351602
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0005287   -0.0650934    0.0661508
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0352638   -0.0317555    0.1022831
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0103159   -0.1216856    0.1010539
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1123053   -0.1636628   -0.0609477
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0597787   -0.1166657   -0.0028918
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0643149   -0.1244450   -0.0041847
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0756386   -0.1970519    0.0457746
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    NA                -0.0130326   -0.1416644    0.1155993
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    NA                 0.1842192    0.0507900    0.3176484
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    NA                 0.0990883   -0.0258446    0.2240212
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0575670   -0.0843145   -0.0308196
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0420946   -0.0743727   -0.0098165
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                 0.0098609   -0.0218634    0.0415851
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0711288    0.0270139    0.1152436
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1095710   -0.1449299   -0.0742120
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1060878   -0.1422658   -0.0699098
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0764472   -0.1099195   -0.0429750
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0629458   -0.0920762   -0.0338153
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0581502   -0.1164096    0.0001091
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.0277905   -0.0902317    0.0346507
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                 0.0290087   -0.0231026    0.0811200
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                 0.0621555    0.0013184    0.1229925
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0420206   -0.0917699    0.0077288
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    NA                 0.0027929   -0.0479562    0.0535420
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0348647   -0.1018043    0.0320750
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0978751    0.0032734    0.1924767
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0451422   -0.0918541    0.0015697
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0981070   -0.1254596   -0.0707543
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0470938   -0.0722242   -0.0219634
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0722633   -0.1462573    0.0017306
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0001104   -0.0697331    0.0695123
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0051183   -0.0470846    0.0368480
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0052923   -0.0611013    0.0716859
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0871413   -0.0875347    0.2618172
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0670452   -0.1002800   -0.0338105
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0847230   -0.1269856   -0.0424604
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0533032   -0.1012269   -0.0053795
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0419568   -0.1325287    0.0486151
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0478829   -0.0906337   -0.0051321
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0537474   -0.0868564   -0.0206383
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0034605   -0.0330231    0.0261022
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0386370   -0.1006203    0.0233462
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0365274   -0.1051842    0.0321294
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.0525199   -0.1092504    0.0042105
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.0396721   -0.0875803    0.0082361
6-9 months     ki0047075b-MAL-ED          PERU                           4                    NA                -0.0266803   -0.0612085    0.0078478
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0441507   -0.1088917    0.0205902
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0342405   -0.0977597    0.0292787
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0079549   -0.0424856    0.0583953
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0202660   -0.0687309    0.0281989
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1048576   -0.1660129   -0.0437023
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0761159   -0.1626652    0.0104333
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0819098   -0.1496460   -0.0141737
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1105588   -0.1558414   -0.0652761
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0463949   -0.1346129    0.0418232
6-9 months     ki1000109-ResPak           PAKISTAN                       2                    NA                -0.0880107   -0.1863180    0.0102966
6-9 months     ki1000109-ResPak           PAKISTAN                       3                    NA                -0.0101144   -0.1118119    0.0915831
6-9 months     ki1000109-ResPak           PAKISTAN                       4                    NA                 0.1428461    0.0744748    0.2112174
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0870190   -0.1166393   -0.0573987
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0651777   -0.1023587   -0.0279966
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0679971   -0.0988818   -0.0371125
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0019061   -0.0322704    0.0284582
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0459922   -0.1255305    0.0335462
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                 0.0062363   -0.0541001    0.0665727
6-9 months     ki1101329-Keneba           GAMBIA                         3                    NA                 0.0689682   -0.0220806    0.1600170
6-9 months     ki1101329-Keneba           GAMBIA                         4                    NA                 0.0161432   -0.0362306    0.0685171
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0904820   -0.1308341   -0.0501299
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.1332580   -0.1741848   -0.0923312
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0785178   -0.1150591   -0.0419766
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0809533   -0.1263304   -0.0355763
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0748698   -0.1133941   -0.0363455
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0393960   -0.0873665    0.0085745
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0634254   -0.1184007   -0.0084501
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0346327   -0.0824202    0.1516855
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1049929   -0.1472358   -0.0627499
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0793397   -0.1023781   -0.0563012
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0867291   -0.1164329   -0.0570252
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0937972   -0.1388744   -0.0487201
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0583617   -0.0064216    0.1231451
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0399537   -0.0906265    0.0107191
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0173316   -0.0280839    0.0627472
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0692946   -0.0400657    0.1786550
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0774775   -0.1009443   -0.0540107
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.1023338   -0.1282191   -0.0764485
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.1004624   -0.1402811   -0.0606438
9-12 months    ki0047075b-MAL-ED          INDIA                          4                    NA                -0.1013062   -0.1535377   -0.0490746
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0585456   -0.0917735   -0.0253177
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0812565   -0.1111088   -0.0514043
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0408199   -0.0728879   -0.0087519
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0713322   -0.1107862   -0.0318783
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0818867   -0.1288380   -0.0349353
9-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                -0.0193743   -0.0656355    0.0268870
9-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                -0.0489976   -0.0881388   -0.0098563
9-12 months    ki0047075b-MAL-ED          PERU                           4                    NA                -0.0360602   -0.0731690    0.0010486
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1443496   -0.2313559   -0.0573433
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0793200   -0.1307923   -0.0278476
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0794498   -0.1218638   -0.0370357
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0643265   -0.1114823   -0.0171706
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2412445   -0.3265799   -0.1559091
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1314047   -0.2033323   -0.0594771
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1752170   -0.2362598   -0.1141741
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1231441   -0.1796317   -0.0666565
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2825364   -0.4100349   -0.1550379
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.2458920   -0.3532283   -0.1385556
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0820768   -0.1861535    0.0219999
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.1311737   -0.2486327   -0.0137146
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0885760   -0.2008987    0.0237468
9-12 months    ki1000109-ResPak           PAKISTAN                       2                    NA                -0.0676181   -0.2077905    0.0725542
9-12 months    ki1000109-ResPak           PAKISTAN                       3                    NA                 0.0567616   -0.0419605    0.1554837
9-12 months    ki1000109-ResPak           PAKISTAN                       4                    NA                 0.0593664   -0.0035463    0.1222792
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0399938   -0.0902893    0.0103017
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0624609   -0.1142959   -0.0106258
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0777989   -0.1312058   -0.0243919
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0455572   -0.0809024   -0.0102120
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0841101   -0.1149431   -0.0532772
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0700539   -0.0972848   -0.0428231
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0630234   -0.0934529   -0.0325938
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0519520   -0.0782639   -0.0256401
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1106484   -0.1716770   -0.0496198
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.1370607   -0.2052679   -0.0688535
9-12 months    ki1101329-Keneba           GAMBIA                         3                    NA                -0.1103969   -0.1633828   -0.0574111
9-12 months    ki1101329-Keneba           GAMBIA                         4                    NA                -0.0558908   -0.1119557    0.0001740
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0886514   -0.1184606   -0.0588421
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.0505485   -0.0879262   -0.0131709
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0516821   -0.0875114   -0.0158528
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0415244   -0.0723402   -0.0107086
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1377310   -0.1689083   -0.1065538
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0811200   -0.1283882   -0.0338517
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0257947   -0.0842040    0.0326147
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0169318   -0.1015047    0.0676411
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0558908   -0.0924498   -0.0193318
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0667752   -0.0927365   -0.0408140
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0549668   -0.0776116   -0.0323220
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0203323   -0.0724076    0.0317431
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0116248   -0.0761304    0.0528808
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0004262   -0.0523465    0.0531990
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0065983   -0.0416441    0.0284475
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0021299   -0.0322381    0.0364980
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0570623   -0.0774253   -0.0366992
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0645223   -0.0914228   -0.0376219
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0355298   -0.0722227    0.0011632
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0409201   -0.1722068    0.0903665
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0793374   -0.1077970   -0.0508778
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0474330   -0.0770678   -0.0177983
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0731232   -0.1002891   -0.0459573
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0192933   -0.0544255    0.0158388
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0569503   -0.1231680    0.0092674
12-15 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0916550   -0.1351741   -0.0481358
12-15 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0703380   -0.0987898   -0.0418862
12-15 months   ki0047075b-MAL-ED          PERU                           4                    NA                -0.0479312   -0.0758820   -0.0199805
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0887411   -0.1401594   -0.0373229
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0841000   -0.1364144   -0.0317857
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0634663   -0.1038217   -0.0231110
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0254434   -0.0660935    0.0152067
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1180703   -0.1829569   -0.0531838
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0805765   -0.1346194   -0.0265336
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0528163   -0.0973416   -0.0082909
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0582665   -0.1015458   -0.0149873
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1448857   -0.2327678   -0.0570036
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                 0.0307776   -0.1484145    0.2099698
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                 0.0360352   -0.1694044    0.2414748
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.0928880   -0.1890399    0.0032639
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0553784   -0.0673030    0.1780599
12-15 months   ki1000109-ResPak           PAKISTAN                       2                    NA                 0.0639284    0.0020574    0.1257995
12-15 months   ki1000109-ResPak           PAKISTAN                       3                    NA                 0.1685720    0.0048594    0.3322845
12-15 months   ki1000109-ResPak           PAKISTAN                       4                    NA                 0.1133227   -0.0369199    0.2635652
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0469213   -0.0657597   -0.0280828
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0299345   -0.0523822   -0.0074868
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0474006   -0.0676416   -0.0271597
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0265355   -0.0484939   -0.0045771
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0742477   -0.1073734   -0.0411219
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0774426   -0.1096433   -0.0452420
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0624779   -0.0927680   -0.0321878
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0549626   -0.0787238   -0.0312015
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0476707   -0.0834525   -0.0118889
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0385325   -0.0737729   -0.0032921
12-15 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0442201   -0.0887479    0.0003078
12-15 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.1141047   -0.1602426   -0.0679667
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0063792   -0.0577624    0.0705209
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.0057264   -0.0476372    0.0361845
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0544727   -0.0998016   -0.0091438
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0126178   -0.0543050    0.0290694
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0877463   -0.1185298   -0.0569629
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0439573   -0.0823002   -0.0056145
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0610421   -0.1020679   -0.0200163
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0255729   -0.1125839    0.0614382
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0575156   -0.0947393   -0.0202919
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0393623   -0.0590448   -0.0196798
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0453624   -0.0682226   -0.0225023
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0696183   -0.1232675   -0.0159692
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0305192   -0.1361055    0.0750671
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0222740   -0.0591684    0.0146203
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0000404   -0.0359134    0.0358327
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0472003   -0.0828680   -0.0115327
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0492337   -0.0671735   -0.0312938
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0324810   -0.0549672   -0.0099949
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0185915   -0.0492711    0.0120880
15-18 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0007967   -0.0739793    0.0723858
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0737031   -0.1010264   -0.0463798
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0646238   -0.0929392   -0.0363084
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0440289   -0.0709123   -0.0171455
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0292440   -0.0680083    0.0095203
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0632286   -0.1228494   -0.0036079
15-18 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0196318   -0.0512630    0.0119993
15-18 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0266728   -0.0548482    0.0015026
15-18 months   ki0047075b-MAL-ED          PERU                           4                    NA                -0.0476582   -0.0717726   -0.0235437
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0218916   -0.0772485    0.0334653
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0195618   -0.0631042    0.0239806
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0417824   -0.0786335   -0.0049313
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0232425   -0.0512676    0.0047827
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0957749   -0.1566920   -0.0348579
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0638766   -0.1053194   -0.0224339
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1181822   -0.1604220   -0.0759424
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0669131   -0.1057164   -0.0281099
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0463997   -0.0630712   -0.0297282
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0313035   -0.0507941   -0.0118130
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0480274   -0.0679056   -0.0281492
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0417946   -0.0637622   -0.0198271
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0433842   -0.0738179   -0.0129505
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0432931   -0.0806928   -0.0058934
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0140965   -0.0462466    0.0180536
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0018787   -0.0277520    0.0239946
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0416057   -0.0750078   -0.0082036
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0447291   -0.0765976   -0.0128606
15-18 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0549460   -0.0830357   -0.0268564
15-18 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.0228838   -0.0719073    0.0261396
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0926881   -0.1196577   -0.0657185
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0450899   -0.0781961   -0.0119837
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0649104   -0.1043391   -0.0254818
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0088253   -0.0890170    0.0713664
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0360468   -0.0620051   -0.0100885
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0093537   -0.0282049    0.0094975
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0188593   -0.0380144    0.0002958
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                 0.0190402   -0.0103464    0.0484267
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0442907   -0.1321774    0.2207588
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0305036   -0.0720762    0.0110689
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0156316   -0.0544788    0.0232155
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0353701   -0.0617784   -0.0089617
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0034315   -0.0213315    0.0144684
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    NA                 0.0108114   -0.0068988    0.0285215
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0096805   -0.0168616    0.0362226
18-21 months   ki0047075b-MAL-ED          INDIA                          4                    NA                 0.0382786   -0.0546857    0.1312430
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0288592   -0.0535972   -0.0041211
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0252565   -0.0512100    0.0006969
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0318484   -0.0543012   -0.0093957
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0266627   -0.0567290    0.0034036
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0336234   -0.0669660   -0.0002809
18-21 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0272497   -0.0570453    0.0025459
18-21 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0083617   -0.0352453    0.0185218
18-21 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.0128317   -0.0155158    0.0411791
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0719638   -0.1282251   -0.0157025
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0678590   -0.1123573   -0.0233606
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0298495   -0.0628430    0.0031440
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0167713   -0.0465439    0.0130014
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1265733   -0.2020576   -0.0510890
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0210241   -0.0698960    0.0278478
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0371091   -0.0762101    0.0019918
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0047539   -0.0415177    0.0320098
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0190863   -0.0356326   -0.0025401
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0092519   -0.0292219    0.0107181
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0309998   -0.0503289   -0.0116707
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0046690   -0.0144801    0.0238181
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0027966   -0.0271869    0.0327801
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0061762   -0.0416465    0.0292941
18-21 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0472482   -0.0806617   -0.0138347
18-21 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.0273092   -0.0689608    0.0143424
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0190954   -0.0426478    0.0044570
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0202134   -0.0477564    0.0073297
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    NA                 0.0336549   -0.0058586    0.0731683
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0172094   -0.0900962    0.0556774
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0180539   -0.0074840    0.0435918
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0305893    0.0119711    0.0492076
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                 0.0306348    0.0098379    0.0514318
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0274995   -0.0879731    0.0329740
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0375247   -0.0790785    0.0040291
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0375405    0.0031630    0.0719180
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0211685   -0.0002274    0.0425644
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0077946   -0.0276061    0.0431954
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0343956    0.0160857    0.0527055
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                 0.0263033    0.0096465    0.0429602
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0248562   -0.0035549    0.0532674
21-24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                 0.0459447    0.0281670    0.0637223
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0068122   -0.0176435    0.0312679
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0102562   -0.0322287    0.0117162
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0247990   -0.0051972    0.0547952
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0001225   -0.0312623    0.0310173
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0054935   -0.0223999    0.0333868
21-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0536880    0.0187431    0.0886329
21-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.0422481    0.0134772    0.0710189
21-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.0908572    0.0672493    0.1144650
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0326311   -0.0274254    0.0926875
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.0152569   -0.0290392    0.0595530
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0290797   -0.0041058    0.0622651
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0586099    0.0358952    0.0813245
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0131829   -0.0642570    0.0378913
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0416822    0.0027054    0.0806589
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0123192   -0.0209727    0.0456110
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0035661   -0.0463213    0.0391891
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0443596    0.0266605    0.0620586
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0469119    0.0279444    0.0658794
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                 0.0352065    0.0135446    0.0568684
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0639808    0.0383912    0.0895703
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0018431   -0.0350260    0.0313398
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0048524   -0.0430372    0.0333325
21-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0075394   -0.0523086    0.0372297
21-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                 0.0080007   -0.0388790    0.0548804
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0033766   -0.0226551    0.0294083
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0113921   -0.0419111    0.0191268
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    NA                 0.0515772    0.0035022    0.0996521
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0910549    0.0206025    0.1615073


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0049345   -0.0429370    0.0330680
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0366027   -0.0294732    0.1026785
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0256162   -0.0422448   -0.0089876
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0846004   -0.1012677   -0.0679332
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0015417   -0.0310995    0.0280162
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0053283   -0.0369418    0.0262853
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0352119   -0.0592101   -0.0112138
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0210208   -0.0255372    0.0675787
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0519766   -0.0680269   -0.0359262
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0065332   -0.0297740    0.0428404
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0980363   -0.1188039   -0.0772686
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0518380   -0.0789102   -0.0247658
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0415741   -0.0631149   -0.0200333
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1848408   -0.2474993   -0.1221824
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.0111211   -0.0642819    0.0420397
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0562098   -0.0816073   -0.0308122
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0655643   -0.0799283   -0.0512004
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1047184   -0.1361011   -0.0733357
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0560672   -0.0733243   -0.0388102
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0900457   -0.1145732   -0.0655181
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0592618   -0.0822310   -0.0362925
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0244247   -0.1195133    0.0706639
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0882071    0.0224390    0.1539752
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0383980   -0.0489023   -0.0278936
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0646146   -0.0791715   -0.0500578
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0566215   -0.0768197   -0.0364233
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0148817   -0.0387527    0.0089893
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0641300   -0.0852944   -0.0429656
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0418086   -0.0515196   -0.0320976
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0209252   -0.0363844   -0.0054660
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0428659   -0.0603800   -0.0253519
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0620485   -0.0814047   -0.0426923
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0138614   -0.0232666   -0.0044562
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0148707   -0.0323628    0.0026213
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0083324   -0.0249759    0.0083111
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0468962    0.0365959    0.0571966
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0024337   -0.0224717    0.0176043
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                 0.0156162   -0.0032678    0.0345001


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0983292    0.0334497    0.1632087
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0950579    0.0294302    0.1606856
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.1205322    0.0294921    0.2115723
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0474759   -0.0626261    0.1575778
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0764720   -0.0363108    0.1892548
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0025892   -0.2270166    0.2218382
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0549680   -0.0103507    0.1202867
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0934194    0.0285487    0.1582900
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1537130    0.0422684    0.2651576
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.0113049   -0.1708697    0.1934795
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.0174385   -0.1820120    0.1471350
3-6 months     ki0047075b-MAL-ED          PERU                           4                    1                 -0.0002599   -0.1632432    0.1627233
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0361305   -0.1152619    0.1875230
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0733791   -0.0751443    0.2219025
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1081141   -0.0410319    0.2572601
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.1019894   -0.2246304    0.0206516
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0494629   -0.1745202    0.0755945
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0539990   -0.1805646    0.0725666
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    1                  0.0626061   -0.1142762    0.2394883
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    1                  0.2598579    0.0794568    0.4402589
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    1                  0.1747270    0.0005161    0.3489378
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0154725   -0.0264477    0.0573927
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0674279    0.0259327    0.1089231
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1286958    0.0771057    0.1802860
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0034832   -0.0471044    0.0540708
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0331237   -0.0155655    0.0818130
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0466252    0.0008122    0.0924383
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0303597   -0.0550396    0.1157591
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.0871589    0.0089941    0.1653237
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.1203057    0.0360721    0.2045393
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0448135   -0.0262532    0.1158802
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0071559   -0.0762462    0.0905580
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.1398956    0.0330103    0.2467809
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0529647   -0.1070958    0.0011663
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0019516   -0.0549944    0.0510912
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0271211   -0.1146260    0.0603838
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0050080   -0.0863006    0.0762847
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0054027   -0.0908025    0.1016078
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0872516   -0.1007883    0.2752915
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0176777   -0.0714427    0.0360872
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0137420   -0.0445780    0.0720621
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.0250885   -0.0713885    0.1215655
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0058645   -0.0599370    0.0482081
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0444224   -0.0075543    0.0963992
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0092459   -0.0660506    0.0845423
6-9 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0159926   -0.1050549    0.0730698
6-9 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.0031447   -0.0868642    0.0805748
6-9 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0098470   -0.0670032    0.0866972
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0099102   -0.0807876    0.1006079
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0521056   -0.0299653    0.1341765
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0238847   -0.0569870    0.1047565
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0287417   -0.0772335    0.1347169
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0229478   -0.0683109    0.1142065
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0057011   -0.0817964    0.0703941
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       2                    1                 -0.0416158   -0.1737019    0.0904703
6-9 months     ki1000109-ResPak           PAKISTAN                       3                    1                  0.0362805   -0.0983479    0.1709089
6-9 months     ki1000109-ResPak           PAKISTAN                       4                    1                  0.1892409    0.0776297    0.3008522
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0218414   -0.0256959    0.0693786
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0190219   -0.0237709    0.0618147
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0851130    0.0426942    0.1275317
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0522285   -0.0476055    0.1520625
6-9 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.1149604   -0.0059372    0.2358580
6-9 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.0621354   -0.0330978    0.1573687
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.0427760   -0.1002503    0.0146983
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0119642   -0.0424744    0.0664027
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0095287   -0.0511950    0.0702524
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0354738   -0.0260510    0.0969985
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0114444   -0.0556853    0.0785742
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.1095025   -0.0137270    0.2327319
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0256532   -0.0224637    0.0737701
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0182638   -0.0333771    0.0699047
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0111956   -0.0505815    0.0729727
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0983154   -0.1805627   -0.0160682
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0410301   -0.1201468    0.0380866
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0109329   -0.1161756    0.1380414
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0248563   -0.0597954    0.0100828
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0229849   -0.0692042    0.0232343
9-12 months    ki0047075b-MAL-ED          INDIA                          4                    1                 -0.0238287   -0.0810897    0.0334324
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0227109   -0.0673791    0.0219573
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0177257   -0.0284527    0.0639041
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0127866   -0.0643687    0.0387954
9-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0625124   -0.0034007    0.1284255
9-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.0328891   -0.0282375    0.0940158
9-12 months    ki0047075b-MAL-ED          PERU                           4                    1                  0.0458265   -0.0140191    0.1056720
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0650296   -0.0360619    0.1661212
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0648998   -0.0318940    0.1616936
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0800231   -0.0189404    0.1789866
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1098398   -0.0017653    0.2214450
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0660276   -0.0388932    0.1709483
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1181004    0.0157628    0.2204380
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0366445   -0.1300198    0.2033087
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.2004596    0.0358758    0.3650434
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.1513628   -0.0219938    0.3247193
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       2                    1                  0.0209579   -0.1586659    0.2005816
9-12 months    ki1000109-ResPak           PAKISTAN                       3                    1                  0.1453376   -0.0042032    0.2948784
9-12 months    ki1000109-ResPak           PAKISTAN                       4                    1                  0.1479424    0.0192008    0.2766841
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0224671   -0.0946924    0.0497583
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0378051   -0.1111668    0.0355566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                 -0.0055634   -0.0670363    0.0559095
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0140562   -0.0270800    0.0551925
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0210868   -0.0222333    0.0644069
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0321581   -0.0083757    0.0726919
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0264123   -0.1179367    0.0651121
9-12 months    ki1101329-Keneba           GAMBIA                         3                    1                  0.0002515   -0.0805692    0.0810722
9-12 months    ki1101329-Keneba           GAMBIA                         4                    1                  0.0547576   -0.0281143    0.1376296
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0381028   -0.0097059    0.0859116
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0369692   -0.0096390    0.0835775
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0471269    0.0042526    0.0900013
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    1                  0.0566111   -0.0000132    0.1132354
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    1                  0.1119364    0.0457271    0.1781457
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    1                  0.1207992    0.0306627    0.2109358
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0108844   -0.0557236    0.0339547
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0009240   -0.0420800    0.0439281
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0355585   -0.0280685    0.0991856
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0120510   -0.0712912    0.0953933
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0050265   -0.0683845    0.0784375
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0137547   -0.0593352    0.0868446
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0074601   -0.0411986    0.0262784
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0215325   -0.0204321    0.0634970
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0161421   -0.1167143    0.1489985
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0319043   -0.0091830    0.0729916
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0062142   -0.0331297    0.0455580
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0600440    0.0148310    0.1052571
12-15 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           2                    1                 -0.0347047   -0.1139429    0.0445335
12-15 months   ki0047075b-MAL-ED          PERU                           3                    1                 -0.0133878   -0.0854592    0.0586836
12-15 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0090190   -0.0628560    0.0808941
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0046411   -0.0687117    0.0779939
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0252748   -0.0400887    0.0906384
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0632977   -0.0022482    0.1288437
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0374938   -0.0469508    0.1219385
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0652541   -0.0134400    0.1439482
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0598038   -0.0181921    0.1377997
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.1756633   -0.0239190    0.3752456
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.1809209   -0.0425264    0.4043682
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.0519977   -0.0782654    0.1822607
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       2                    1                  0.0085500   -0.1288500    0.1459500
12-15 months   ki1000109-ResPak           PAKISTAN                       3                    1                  0.1131935   -0.0913854    0.3177724
12-15 months   ki1000109-ResPak           PAKISTAN                       4                    1                  0.0579442   -0.1360237    0.2519121
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0169868   -0.0123182    0.0462919
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0004793   -0.0281305    0.0271718
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0203858   -0.0085462    0.0493178
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0031950   -0.0493923    0.0430024
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0117697   -0.0331168    0.0566563
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0192850   -0.0214815    0.0600515
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0091382   -0.0410835    0.0593599
12-15 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.0034507   -0.0536726    0.0605739
12-15 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0664339   -0.1248210   -0.0080469
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.0121056   -0.0887259    0.0645147
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 -0.0608520   -0.1393941    0.0176901
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 -0.0189970   -0.0954952    0.0575011
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0437890   -0.0053821    0.0929601
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0267042   -0.0245865    0.0779949
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0621735   -0.0301225    0.1544694
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0181533   -0.0239538    0.0602603
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0121531   -0.0315297    0.0558360
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0121028   -0.0774008    0.0531953
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0082452   -0.1036014    0.1200918
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0304789   -0.0810350    0.1419928
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0166811   -0.1281290    0.0947668
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0167526   -0.0120130    0.0455183
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0306421   -0.0048976    0.0661818
15-18 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0484369   -0.0269124    0.1237863
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0090793   -0.0302695    0.0484281
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0296742   -0.0086570    0.0680054
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0444591   -0.0029669    0.0918852
15-18 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0435968   -0.0238952    0.1110888
15-18 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0365558   -0.0293873    0.1024990
15-18 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0155705   -0.0487424    0.0798833
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0023298   -0.0680997    0.0727594
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0198908   -0.0863918    0.0466103
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 -0.0013509   -0.0633976    0.0606958
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0318983   -0.0417793    0.1055759
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0224073   -0.0965361    0.0517216
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0288618   -0.0433641    0.1010877
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0150962   -0.0105518    0.0407442
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0016276   -0.0275715    0.0243162
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0046051   -0.0229723    0.0321825
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0000911   -0.0481266    0.0483088
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0292877   -0.0149823    0.0735578
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0415055    0.0015601    0.0814509
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0031234   -0.0492894    0.0430426
15-18 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0133404   -0.0569836    0.0303028
15-18 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0187218   -0.0405993    0.0780430
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0475982    0.0048972    0.0902992
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0277777   -0.0199923    0.0755477
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0838628   -0.0007425    0.1684681
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0266931   -0.0053881    0.0587743
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0171875   -0.0150732    0.0494482
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0550870    0.0158772    0.0942967
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0747943   -0.2560932    0.1065045
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0599223   -0.2406157    0.1207710
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0796607   -0.2580939    0.0987724
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0142429   -0.0109376    0.0394234
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0131120   -0.0189019    0.0451260
18-21 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0417101   -0.0529618    0.1363821
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0036026   -0.0322519    0.0394572
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0029893   -0.0363973    0.0304187
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0021965   -0.0367388    0.0411317
18-21 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0063737   -0.0383421    0.0510895
18-21 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0252617   -0.0175688    0.0680922
18-21 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0464551    0.0026909    0.0902193
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0041048   -0.0676269    0.0758365
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0421143   -0.0231077    0.1073363
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0551925   -0.0084608    0.1188458
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1055492    0.0156251    0.1954733
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0894642    0.0044538    0.1744745
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1218194    0.0378584    0.2057804
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0098344   -0.0160997    0.0357686
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0119135   -0.0373573    0.0135304
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0237553   -0.0015521    0.0490628
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0089728   -0.0554179    0.0374724
18-21 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0500448   -0.0949388   -0.0051508
18-21 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0301058   -0.0814270    0.0212154
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    1                 -0.0011179   -0.0373579    0.0351221
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0527503    0.0067500    0.0987506
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0018860   -0.0747116    0.0784836
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0125354   -0.0190688    0.0441396
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0125809   -0.0203539    0.0455157
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0455535   -0.1111982    0.0200913
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0750652    0.0211344    0.1289960
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0586932    0.0119545    0.1054318
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0453193   -0.0092694    0.0999081
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0080923   -0.0328451    0.0166606
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0095393   -0.0433394    0.0242607
21-24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0115491   -0.0139714    0.0370696
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0170684   -0.0499450    0.0158082
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0179868   -0.0207153    0.0566890
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0069347   -0.0465297    0.0326604
21-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0481945    0.0034822    0.0929068
21-24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0367546   -0.0033178    0.0768271
21-24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0853637    0.0488209    0.1219065
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0173742   -0.0919993    0.0572510
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0035514   -0.0721666    0.0650638
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0259788   -0.0382297    0.0901873
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0548651   -0.0093826    0.1191127
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0255021   -0.0354645    0.0864686
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0096168   -0.0569909    0.0762244
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0025523   -0.0233904    0.0284950
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0091531   -0.0371262    0.0188200
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0196212   -0.0114928    0.0507352
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0030093   -0.0535977    0.0475792
21-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0056963   -0.0614223    0.0500297
21-24 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0098438   -0.0475915    0.0672791
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    1                 -0.0147687   -0.0548817    0.0253444
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0482006   -0.0064697    0.1028710
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0876784    0.0125705    0.1627862


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0817203    0.0325027   0.1309379
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0452419   -0.0416930   0.1321768
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0539336    0.0149386   0.0929286
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0049279   -0.1563437   0.1464879
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0679159   -0.0579273   0.1937590
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0602290   -0.1682765   0.0478186
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1122413    0.0149339   0.2095487
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0319509    0.0107417   0.0531600
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0249705   -0.0063574   0.0562985
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0566086    0.0088324   0.1043847
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0366923   -0.0054839   0.0788685
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0248809   -0.0679671   0.0182052
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0088937   -0.0588844   0.0766719
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0032903   -0.0283912   0.0218105
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0133234   -0.0226392   0.0492859
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0013154   -0.0664651   0.0690959
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0263679   -0.0360304   0.0887663
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0114478   -0.0520256   0.0749212
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0674157   -0.0026410   0.1374723
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0350425    0.0081279   0.0619571
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0525254   -0.0104235   0.1154742
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0075543   -0.0420675   0.0269590
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0230318   -0.0065562   0.0526197
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0177875   -0.0220332   0.0576081
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0501833   -0.1156158   0.0152491
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0137624   -0.0316726   0.0041478
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0037509   -0.0340337   0.0265320
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.0403126   -0.0061602   0.0867854
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0594875   -0.0172499   0.1362248
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0862785    0.0034421   0.1691148
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0976956   -0.0209888   0.2163801
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0774549   -0.0102514   0.1651612
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0162160   -0.0560965   0.0236645
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0185458   -0.0086678   0.0457594
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0059300   -0.0387323   0.0505923
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0325841    0.0038758   0.0612924
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0476854    0.0214813   0.0738894
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0001785   -0.0360593   0.0364162
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0085818   -0.0553136   0.0724772
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0005399   -0.0143216   0.0154014
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0218824   -0.0039690   0.0477338
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0084029   -0.0707107   0.0539049
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0294794   -0.0195383   0.0784970
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0487140   -0.0122807   0.1097087
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.1204610    0.0065473   0.2343747
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0328287   -0.0516528   0.1173101
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0085233   -0.0083030   0.0253497
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0096330   -0.0205959   0.0398619
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0089508   -0.0367817   0.0188801
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0212609   -0.0795293   0.0370075
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0236163   -0.0002140   0.0474467
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0117213   -0.0233124   0.0467550
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0101770   -0.0914050   0.1117590
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0112302   -0.0021490   0.0246094
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0187686   -0.0064874   0.0440245
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0271721   -0.0293420   0.0836862
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0066560   -0.0595556   0.0462436
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0101407   -0.0471885   0.0674700
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0045911   -0.0103053   0.0194875
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0224590   -0.0052436   0.0501617
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0012603   -0.0262909   0.0237703
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0306397    0.0067875   0.0544918
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0205249   -0.0037600   0.0448099
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0646497   -0.2297814   0.1004821
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0092055   -0.0051889   0.0236000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0007539   -0.0219930   0.0235008
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0255093   -0.0070159   0.0580345
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0397973   -0.0151249   0.0947194
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0983701    0.0246087   0.1721314
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0052250   -0.0089291   0.0193791
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0176673   -0.0413805   0.0060459
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0107630   -0.0086915   0.0302176
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0075643   -0.0163777   0.0315062
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0540117    0.0126516   0.0953717
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0046069   -0.0189522   0.0097383
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0013574   -0.0245513   0.0218365
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0514809    0.0227908   0.0801710
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0112411   -0.0465109   0.0689931
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0220226   -0.0278976   0.0719428
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0025367   -0.0117222   0.0167955
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0005906   -0.0286666   0.0274854
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0122396   -0.0075662   0.0320454

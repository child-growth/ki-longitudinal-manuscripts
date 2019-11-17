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
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* month
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_month
* delta_impfloor

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




# Results Detail

## Results Plots
![](/tmp/051e0d9e-3235-46a6-8d17-e90e824fcebb/9fad3933-8aad-4d95-8f61-4df3de478391/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/051e0d9e-3235-46a6-8d17-e90e824fcebb/9fad3933-8aad-4d95-8f61-4df3de478391/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/051e0d9e-3235-46a6-8d17-e90e824fcebb/9fad3933-8aad-4d95-8f61-4df3de478391/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.7560878   1.6363969   1.8757786
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.9584624   1.8777133   2.0392115
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.9635506   1.8798143   2.0472870
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                2.0106843   1.8402970   2.1810715
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.0131127   1.7892455   2.2369800
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                2.1337964   2.0174524   2.2501404
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                2.2036679   2.0777187   2.3296170
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.9971260   1.5621858   2.4320661
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.8512433   1.7486867   1.9537998
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.9714760   1.8751741   2.0677779
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                2.0350692   1.9332449   2.1368935
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                2.1972427   1.9837828   2.4107026
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.0137373   1.6488818   2.3785928
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                2.0409372   1.8203860   2.2614885
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                1.9870335   1.8783929   2.0956741
3-6 months     ki0047075b-MAL-ED          PERU                           4                    NA                2.0298087   1.9313213   2.1282961
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.8983499   1.5955328   2.2011670
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.9107756   1.7566181   2.0649331
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.9874056   1.8443903   2.1304208
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                2.0623069   1.9184699   2.2061439
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9542863   1.6866080   2.2219645
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7483152   1.6377185   1.8589118
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8546731   1.7339385   1.9754077
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                1.8324822   1.7019348   1.9630296
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                1.8549658   1.5835200   2.1264116
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    NA                1.9183444   1.6580467   2.1786420
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    NA                2.4737050   2.1514199   2.7959901
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    NA                2.1543356   1.8848192   2.4238519
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9044225   1.8485715   1.9602735
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.9343116   1.8662483   2.0023749
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                2.0412218   1.9737119   2.1087317
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    NA                2.1727654   2.0735822   2.2719485
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7421200   1.6661344   1.8181055
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7499013   1.6695611   1.8302414
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8059779   1.7333770   1.8785788
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.8502240   1.7868747   1.9135733
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.9092973   1.7839734   2.0346211
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                1.9880774   1.8550963   2.1210586
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                2.0752573   1.9620568   2.1884578
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                2.1448373   2.0126030   2.2770717
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.8729558   1.7725141   1.9733975
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    NA                1.9846140   1.8761924   2.0930356
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    NA                1.8973123   1.7440830   2.0505416
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    NA                2.1795946   1.9457566   2.4134326
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.3070844   1.1925491   1.4216197
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.1848429   1.1200682   1.2496176
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.2982305   1.2392864   1.3571745
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.2835537   1.1140418   1.4530657
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.5464264   1.3726733   1.7201796
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.4325368   1.3361479   1.5289257
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.4922905   1.3495878   1.6349933
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.6281573   1.1736809   2.0826337
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.2520386   1.1768181   1.3272590
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    NA                1.2150412   1.1188850   1.3111974
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    NA                1.2880881   1.1800616   1.3961146
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    NA                1.2955129   1.1156680   1.4753579
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.3299825   1.2292540   1.4307109
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.3073184   1.2301074   1.3845293
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                1.4282180   1.3594972   1.4969387
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                1.3427658   1.1959091   1.4896225
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.2986923   1.1351801   1.4622046
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                1.2670810   1.1310671   1.4030949
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                1.3098188   1.1988045   1.4208331
6-9 months     ki0047075b-MAL-ED          PERU                           4                    NA                1.3376547   1.2584811   1.4168284
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.2936089   1.1337107   1.4535071
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.3537192   1.2014955   1.5059429
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.4401525   1.3229061   1.5573990
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.3718585   1.2579936   1.4857233
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2129418   1.0711996   1.3546839
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.2454238   1.0447242   1.4461234
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.2153373   1.0608838   1.3697909
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                1.1607960   1.0554562   1.2661359
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                1.3437321   1.1447176   1.5427466
6-9 months     ki1000109-ResPak           PAKISTAN                       2                    NA                1.2801437   1.0413561   1.5189312
6-9 months     ki1000109-ResPak           PAKISTAN                       3                    NA                1.4171527   1.1676362   1.6666692
6-9 months     ki1000109-ResPak           PAKISTAN                       4                    NA                1.6973632   1.5380156   1.8567108
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2374537   1.1688966   1.3060107
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.2903561   1.2044498   1.3762625
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.2925050   1.2216556   1.3633545
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.4403316   1.3707033   1.5099599
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.3243070   1.1383657   1.5102482
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                1.4660145   1.3237416   1.6082874
6-9 months     ki1101329-Keneba           GAMBIA                         3                    NA                1.6013562   1.3799562   1.8227562
6-9 months     ki1101329-Keneba           GAMBIA                         4                    NA                1.4807806   1.3560631   1.6054980
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.1767981   1.0880538   1.2655425
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                1.0872243   0.9929000   1.1815485
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                1.2221848   1.1327534   1.3116163
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                1.1898773   1.0830968   1.2966578
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.2242033   1.1305110   1.3178955
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    NA                1.2716746   1.1690407   1.3743084
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    NA                1.2658058   1.1436575   1.3879541
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    NA                1.4414006   1.1893676   1.6934336
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9447130   0.8320807   1.0573453
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.9950426   0.9401466   1.0499385
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.0022327   0.9305281   1.0739374
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.0030167   0.8860580   1.1199754
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.4321090   1.2673860   1.5968319
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.1908146   1.0675103   1.3141189
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.3212829   1.2115755   1.4309903
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.4075543   1.1275359   1.6875727
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.0104418   0.9547780   1.0661056
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                0.9557093   0.8930154   1.0184032
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                0.9722088   0.8699451   1.0744725
9-12 months    ki0047075b-MAL-ED          INDIA                          4                    NA                0.9491541   0.8090896   1.0892187
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.0808249   1.0003261   1.1613237
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                1.0442949   0.9717294   1.1168605
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                1.1434845   1.0648248   1.2221442
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                1.0511148   0.9519042   1.1503253
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.9730191   0.8501498   1.0958883
9-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                1.1510926   1.0444547   1.2577305
9-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                1.0783047   0.9814039   1.1752055
9-12 months    ki0047075b-MAL-ED          PERU                           4                    NA                1.1291768   1.0417970   1.2165566
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8527074   0.6230707   1.0823441
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.0097879   0.8759392   1.1436367
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.0259822   0.9247497   1.1272147
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.0849997   0.9713956   1.1986037
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5600753   0.3509750   0.7691756
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8648482   0.6841267   1.0455697
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7834313   0.6206926   0.9461700
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.8927968   0.7564125   1.0291810
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5487054   0.2754711   0.8219396
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.5918723   0.3233501   0.8603945
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.9692432   0.7075365   1.2309500
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.8603626   0.5706698   1.1500554
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.0070609   0.7507291   1.2633928
9-12 months    ki1000109-ResPak           PAKISTAN                       2                    NA                1.0059712   0.6703381   1.3416042
9-12 months    ki1000109-ResPak           PAKISTAN                       3                    NA                1.2138431   0.9583888   1.4692974
9-12 months    ki1000109-ResPak           PAKISTAN                       4                    NA                1.2964826   1.1413644   1.4516009
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1045630   0.9677400   1.2413860
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.0443306   0.9138545   1.1748067
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                1.0214390   0.8865494   1.1563286
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                1.0798775   0.9861217   1.1736334
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0275903   0.9539446   1.1012360
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.0783720   1.0108845   1.1458594
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.0905323   1.0174899   1.1635747
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.1233969   1.0614844   1.1853093
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.9825591   0.8378886   1.1272296
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.9218935   0.7531463   1.0906408
9-12 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.9887510   0.8591669   1.1183352
9-12 months    ki1101329-Keneba           GAMBIA                         4                    NA                1.1200887   0.9759446   1.2642329
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.9632205   0.8792791   1.0471619
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                1.0639422   0.9686497   1.1592347
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                1.0420930   0.9485605   1.1356255
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                1.0995879   1.0222140   1.1769617
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.8392675   0.7616232   0.9169118
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    NA                0.9922962   0.8761894   1.1084030
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    NA                1.1103874   0.9706404   1.2501345
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    NA                1.1724976   0.9468595   1.3981357
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9017532   0.7843360   1.0191703
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8690981   0.8045029   0.9336933
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.9257325   0.8618197   0.9896453
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.0226283   0.8772001   1.1680566
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.0663715   0.8422730   1.2904700
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.1484468   0.9990234   1.2978703
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.1341946   1.0409528   1.2274363
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.1735490   1.0750445   1.2720535
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.9036910   0.8517690   0.9556130
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8903074   0.8207067   0.9599081
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.9846769   0.8891951   1.0801587
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    NA                0.9598049   0.6251347   1.2944750
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.9032094   0.8315049   0.9749140
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.9654821   0.8911937   1.0397705
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.9158902   0.8442684   0.9875119
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                1.0548675   0.9485844   1.1611506
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.9125277   0.7289680   1.0960875
12-15 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.8174904   0.7062174   0.9287633
12-15 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8845284   0.8095712   0.9594855
12-15 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.9471629   0.8748006   1.0195251
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8232206   0.6857494   0.9606918
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.8016445   0.6647046   0.9385843
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.9138776   0.8096764   1.0180788
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.0193023   0.9164675   1.1221370
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6575534   0.4830083   0.8320984
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8022010   0.6635335   0.9408686
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8667633   0.7522849   0.9812417
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.8721421   0.7603529   0.9839312
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6722448   0.4588369   0.8856528
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                1.1437132   0.6754178   1.6120085
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                1.0923684   0.5895317   1.5952050
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.8333686   0.5552216   1.1115155
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                1.2454715   0.9444357   1.5465073
12-15 months   ki1000109-ResPak           PAKISTAN                       2                    NA                1.2655617   1.1044981   1.4266252
12-15 months   ki1000109-ResPak           PAKISTAN                       3                    NA                1.4058058   0.9079693   1.9036423
12-15 months   ki1000109-ResPak           PAKISTAN                       4                    NA                1.4359454   0.9404402   1.9314507
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9218735   0.8734840   0.9702631
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.9863496   0.9282731   1.0444261
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.9587717   0.9063769   1.0111666
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                1.0283087   0.9711216   1.0854958
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9015596   0.8148314   0.9882878
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8889562   0.8039411   0.9739714
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.9451654   0.8656789   1.0246519
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.9716013   0.9111361   1.0320664
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.9489142   0.8575374   1.0402911
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.9740961   0.8841756   1.0640166
12-15 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.9647674   0.8516468   1.0778880
12-15 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.8241866   0.7028797   0.9454936
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.0515853   0.8713348   1.2318358
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                1.0413282   0.9186120   1.1640444
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.9765644   0.8379375   1.1151913
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                1.0510982   0.9376784   1.1645180
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8003376   0.7177679   0.8829073
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.9044392   0.8074744   1.0014040
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.8877792   0.7780490   0.9975094
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.9951121   0.7461626   1.2440615
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7759115   0.6592089   0.8926140
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8342440   0.7797575   0.8887305
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8271985   0.7643627   0.8900344
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                0.7880889   0.6347825   0.9413953
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.9817611   0.7082977   1.2552244
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                0.9665937   0.8595612   1.0736262
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.0578065   0.9521273   1.1634857
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                0.9279652   0.8207409   1.0351894
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8023828   0.7516650   0.8531007
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8671149   0.8044991   0.9297307
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.9087616   0.8198332   0.9976900
15-18 months   ki0047075b-MAL-ED          INDIA                          4                    NA                0.9965405   0.7985278   1.1945532
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7674153   0.6894403   0.8453903
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.8144797   0.7397817   0.8891777
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8781664   0.8031372   0.9531955
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                0.9328139   0.8222051   1.0434226
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8262996   0.6756179   0.9769812
15-18 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.8956457   0.8072466   0.9840447
15-18 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8897423   0.8095597   0.9699248
15-18 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.8418953   0.7744778   0.9093127
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8626411   0.7047597   1.0205224
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.8877697   0.7612698   1.0142696
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.8349214   0.7327655   0.9370772
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.9204244   0.8412123   0.9996364
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6303549   0.4636908   0.7970191
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7380225   0.6227416   0.8533033
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6017057   0.4844345   0.7189768
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.7447520   0.6356171   0.8538868
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8108508   0.7632818   0.8584198
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8587623   0.8040252   0.9134994
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.8370360   0.7833428   0.8907293
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.8762776   0.8154649   0.9370904
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8541718   0.7712533   0.9370903
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8752437   0.7712809   0.9792065
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.9317381   0.8409097   1.0225665
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.0111528   0.9378794   1.0844262
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8389908   0.7508412   0.9271404
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8608990   0.7753337   0.9464643
15-18 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.8376227   0.7590190   0.9162263
15-18 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.9277506   0.7996041   1.0558971
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6491603   0.5728450   0.7254756
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.8041836   0.7172683   0.8910989
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.7924252   0.6810234   0.9038270
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.9287807   0.7035209   1.1540405
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7568002   0.6749796   0.8386209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8191716   0.7630377   0.8753056
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8252025   0.7682670   0.8821380
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                0.9424722   0.8463076   1.0386368
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.9743186   0.5167818   1.4318554
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                0.8879445   0.7610517   1.0148374
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                0.9378712   0.8252357   1.0505067
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                0.8872559   0.8124406   0.9620713
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8309690   0.7756682   0.8862697
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.9019708   0.8491457   0.9547959
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.9056269   0.8231845   0.9880694
18-21 months   ki0047075b-MAL-ED          INDIA                          4                    NA                1.0389131   0.7326883   1.3451379
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8024352   0.7294894   0.8753811
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.8250651   0.7481521   0.9019780
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8220824   0.7562647   0.8879000
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                0.8602417   0.7748603   0.9456231
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.7400466   0.6325665   0.8475268
18-21 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.7809687   0.6913436   0.8705937
18-21 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8442481   0.7650327   0.9234634
18-21 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.9206004   0.8367506   1.0044502
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6743262   0.5123967   0.8362557
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.6935253   0.5428906   0.8441599
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.7974020   0.7016564   0.8931476
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.8419714   0.7552180   0.9287247
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4457556   0.2194440   0.6720673
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7432688   0.6057975   0.8807401
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7201419   0.6005003   0.8397836
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.8342290   0.7256506   0.9428073
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7952537   0.7451824   0.8453251
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8398529   0.7834390   0.8962667
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.7932256   0.7382835   0.8481676
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.9168899   0.8590593   0.9747206
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8841237   0.7933705   0.9748768
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8497727   0.7487226   0.9508227
18-21 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.7740255   0.6733187   0.8747324
18-21 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.8138825   0.6922863   0.9354787
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7398650   0.6676552   0.8120748
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.7723568   0.6909031   0.8538105
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.9267878   0.8091031   1.0444726
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.8350911   0.6308299   1.0393523
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7483515   0.6609074   0.8357957
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.7698931   0.7111920   0.8285942
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.7982050   0.7391351   0.8572749
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                0.6536915   0.4776464   0.8297366
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.7584846   0.5678459   0.9491232
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                0.8320755   0.7381178   0.9260331
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                0.8028501   0.7434505   0.8622498
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                0.7773796   0.6668062   0.8879529
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8192143   0.7715354   0.8668932
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8170756   0.7703284   0.8638228
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.8391148   0.7473893   0.9308402
21-24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                0.9403922   0.8491732   1.0316112
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7700467   0.6970572   0.8430361
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.7238085   0.6577645   0.7898525
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8203450   0.7283525   0.9123374
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                0.7839888   0.6923641   0.8756135
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5957991   0.5003927   0.6912055
21-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.7634147   0.6488476   0.8779818
21-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.7099227   0.6245939   0.7952516
21-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.8920474   0.8209805   0.9631143
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7621348   0.5556563   0.9686133
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.7467152   0.6014743   0.8919560
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.8032804   0.6983616   0.9081991
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.8833703   0.8118410   0.9548997
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6140085   0.4661732   0.7618438
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8187926   0.6952504   0.9423348
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7113186   0.6141524   0.8084849
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.7197838   0.5865659   0.8530017
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7317944   0.6779258   0.7856630
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.7637246   0.7056650   0.8217842
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.7518962   0.6808856   0.8229067
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.8511065   0.7801284   0.9220847
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6408521   0.5464465   0.7352576
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.6615845   0.5463869   0.7767821
21-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.6791746   0.5348422   0.8235070
21-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.7505849   0.5959501   0.9052196
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7039777   0.6277912   0.7801643
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.6793505   0.5737215   0.7849794
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.8573254   0.6957032   1.0189477
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    NA                1.0276875   0.7506906   1.3046844


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9704262   1.8897530   2.0510994
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0648890   1.9235221   2.2062560
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9681341   1.9328320   2.0034362
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7956440   1.7597365   1.8315515
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                2.0280533   1.9644763   2.0916303
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9557572   1.8876279   2.0238865
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3164032   1.2623050   1.3705015
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                1.4566349   1.3521504   1.5611193
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3242529   1.2877176   1.3607883
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.4537366   1.3710763   1.5363969
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1639450   1.1170176   1.2108723
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.2658739   1.2051613   1.3265866
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0992933   1.0481819   1.1504048
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7408618   0.5896892   0.8920343
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.1892103   1.0637355   1.3146851
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0622982   0.9989611   1.1256353
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0869313   1.0526530   1.1212096
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9785354   0.9038420   1.0532288
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0490663   1.0068611   1.0912714
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.9627471   0.9031556   1.0223387
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9196026   0.8617062   0.9774990
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9745300   0.7366635   1.2123966
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                1.3026245   1.1420521   1.4631969
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9669978   0.9397370   0.9942586
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9317701   0.8947043   0.9688359
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9349281   0.8838343   0.9860220
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.9995817   0.9377804   1.0613830
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8663814   0.8121793   0.9205834
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8444812   0.8178154   0.8711470
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9334014   0.8909294   0.9758735
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8571419   0.8102173   0.9040665
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7507779   0.6985683   0.8029874
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8317496   0.8042495   0.8592497
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8429207   0.7920674   0.8937740
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7976340   0.7496355   0.8456326
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7670782   0.7372948   0.7968616
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.6686900   0.6088626   0.7285175
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7554929   0.6980149   0.8129708


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.2023746    0.0579900    0.3467592
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.2074629    0.0614209    0.3535048
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.2545965    0.0464619    0.4627311
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.1206837   -0.1314634    0.3728308
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.1905551   -0.0663497    0.4474600
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0159867   -0.5044985    0.4725250
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.1202328   -0.0206812    0.2611468
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.1838259    0.0392620    0.3283899
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.3459995    0.1094601    0.5825388
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.0271999   -0.4001092    0.4545091
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.0267038   -0.4063203    0.3529126
3-6 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0160714   -0.3620168    0.3941596
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0124257   -0.3274994    0.3523508
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0890557   -0.2459786    0.4240900
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1639570   -0.1713034    0.4992174
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.2059711   -0.4956555    0.0837133
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0996132   -0.3932201    0.1939937
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.1218041   -0.4200494    0.1764412
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    1                  0.0633786   -0.3079522    0.4347095
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    1                  0.6187393    0.2025502    1.0349283
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    1                  0.2993698   -0.0822234    0.6809630
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0298890   -0.0578885    0.1176666
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.1367992    0.0494077    0.2241907
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.2683428    0.1542500    0.3824357
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0077813   -0.1032731    0.1188358
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0638579   -0.0412121    0.1689280
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1081040    0.0090123    0.2071957
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0787802   -0.1033848    0.2609452
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.1659600   -0.0025176    0.3344376
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.2355401    0.0535540    0.4175262
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.1116582   -0.0355650    0.2588815
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0243565   -0.1593026    0.2080156
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.3066388    0.0518802    0.5613974
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.1222415   -0.2533424    0.0088595
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0088539   -0.1375892    0.1198814
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0235306   -0.2286071    0.1815458
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.1138896   -0.3128192    0.0850399
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0541359   -0.2803105    0.1720388
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0817309   -0.4045752    0.5680370
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0369974   -0.1590799    0.0850851
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0360495   -0.0955857    0.1676848
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.0434744   -0.1514675    0.2384162
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0226641   -0.1496863    0.1043581
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0982355   -0.0238507    0.2203218
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0127833   -0.1653787    0.1909454
6-9 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0316113   -0.2441972    0.1809746
6-9 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.0111265   -0.1865372    0.2087901
6-9 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0389624   -0.1429104    0.2208352
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0601103   -0.1625749    0.2827954
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1465436   -0.0537358    0.3468230
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0782495   -0.1201580    0.2766571
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0324821   -0.2125416    0.2775057
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0023956   -0.2074365    0.2122277
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0521457   -0.2285710    0.1242795
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       2                    1                 -0.0635884   -0.3755590    0.2483821
6-9 months     ki1000109-ResPak           PAKISTAN                       3                    1                  0.0734206   -0.2459983    0.3928395
6-9 months     ki1000109-ResPak           PAKISTAN                       4                    1                  0.3536311    0.0987006    0.6085616
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0529025   -0.0573317    0.1631366
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0550514   -0.0437470    0.1538497
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.2028780    0.1050215    0.3007344
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.1417075   -0.0932339    0.3766489
6-9 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.2770492   -0.0138294    0.5679278
6-9 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.1564736   -0.0696296    0.3825768
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.0895739   -0.2190685    0.0399208
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0453867   -0.0803165    0.1710899
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0130792   -0.1259997    0.1521581
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0474713   -0.0906437    0.1855862
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0416025   -0.1113188    0.1945239
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.2171973   -0.0504092    0.4848038
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0503296   -0.0754136    0.1760727
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0575198   -0.0763335    0.1913730
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0583037   -0.1046148    0.2212223
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.2412943   -0.4467520   -0.0358367
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.1108260   -0.3083681    0.0867161
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0245547   -0.3496640    0.3005546
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0547325   -0.1385715    0.0291065
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0382330   -0.1546647    0.0781986
9-12 months    ki0047075b-MAL-ED          INDIA                          4                    1                 -0.0612877   -0.2120077    0.0894324
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0365300   -0.1446920    0.0716320
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0626596   -0.0497547    0.1750738
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0297102   -0.1573363    0.0979159
9-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.1780735    0.0160661    0.3400809
9-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.1052856   -0.0521614    0.2627327
9-12 months    ki0047075b-MAL-ED          PERU                           4                    1                  0.1561578    0.0067813    0.3055343
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.1570806   -0.1091024    0.4232635
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1732748   -0.0777036    0.4242532
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.2322923   -0.0240030    0.4885875
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.3047729    0.0281498    0.5813960
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.2233560   -0.0417869    0.4884989
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.3327215    0.0848392    0.5806037
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0431670   -0.3399272    0.4262611
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.4205379    0.0421897    0.7988861
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.3116573   -0.0865623    0.7098769
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       2                    1                 -0.0010898   -0.4250507    0.4228712
9-12 months    ki1000109-ResPak           PAKISTAN                       3                    1                  0.2067822   -0.1572205    0.5707849
9-12 months    ki1000109-ResPak           PAKISTAN                       4                    1                  0.2894217   -0.0095472    0.5883906
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0602325   -0.2498676    0.1294027
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0831240   -0.2760391    0.1097910
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                 -0.0246855   -0.1911334    0.1417625
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0507817   -0.0492653    0.1508286
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0629420   -0.0406588    0.1665429
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0958066   -0.0004896    0.1921028
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0606656   -0.2844768    0.1631457
9-12 months    ki1101329-Keneba           GAMBIA                         3                    1                  0.0061919   -0.1890933    0.2014772
9-12 months    ki1101329-Keneba           GAMBIA                         4                    1                  0.1375296   -0.0688839    0.3439431
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.1007217   -0.0270312    0.2284746
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0788725   -0.0477574    0.2055023
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.1363674    0.0211517    0.2515830
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    1                  0.1530287    0.0130427    0.2930147
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    1                  0.2711200    0.1115534    0.4306866
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    1                  0.3332301    0.0942243    0.5722360
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0326550   -0.1670851    0.1017750
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0239793   -0.1097397    0.1576984
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.1208752   -0.0662504    0.3080007
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0820753   -0.1874249    0.3515756
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0678231   -0.1770104    0.3126565
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1071775   -0.1382360    0.3525910
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0133836   -0.1002176    0.0734505
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0809859   -0.0277002    0.1896720
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0561139   -0.2825600    0.3947878
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0622727   -0.0405560    0.1651014
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0126807   -0.0890460    0.1144075
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1516580    0.0227575    0.2805586
12-15 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           2                    1                 -0.0950374   -0.3094722    0.1193974
12-15 months   ki0047075b-MAL-ED          PERU                           3                    1                 -0.0279994   -0.2259314    0.1699326
12-15 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0346351   -0.1624936    0.2317638
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0215762   -0.2158276    0.1726753
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0906570   -0.0822115    0.2635255
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1960817    0.0234315    0.3687318
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1446477   -0.0777476    0.3670429
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.2092099   -0.0004121    0.4188319
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.2145887    0.0073115    0.4218658
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.4714684   -0.0431611    0.9860978
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.4201236   -0.1261252    0.9663723
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.1611237   -0.1894596    0.5117071
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       2                    1                  0.0200902   -0.3160457    0.3562260
12-15 months   ki1000109-ResPak           PAKISTAN                       3                    1                  0.1603343   -0.4232893    0.7439579
12-15 months   ki1000109-ResPak           PAKISTAN                       4                    1                  0.1904739   -0.3964903    0.7774382
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0644761   -0.0109913    0.1399434
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0368982   -0.0343521    0.1081485
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1064352    0.0318720    0.1809983
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0126033   -0.1344345    0.1092278
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0436059   -0.0742053    0.1614170
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0700417   -0.0357816    0.1758650
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0251819   -0.1033587    0.1537224
12-15 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.0158532   -0.1293797    0.1610861
12-15 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.1247276   -0.2772368    0.0277817
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.0102571   -0.2311742    0.2106600
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 -0.0750210   -0.3041562    0.1541143
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 -0.0004871   -0.2117930    0.2108187
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.1041016   -0.0231077    0.2313109
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0874416   -0.0513145    0.2261977
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.1947745   -0.0665385    0.4560876
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0583326   -0.0705848    0.1872500
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0512871   -0.0812311    0.1838053
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0121774   -0.1804083    0.2047632
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0151674   -0.3078424    0.2775076
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0760454   -0.2153965    0.3674874
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0537959   -0.3476556    0.2400637
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0647321   -0.0158473    0.1453115
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.1063788    0.0040041    0.2087534
15-18 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.1941577   -0.0102471    0.3985625
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0470644   -0.0609415    0.1550703
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.1107511    0.0024511    0.2190510
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1653986    0.0301969    0.3006003
15-18 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0693461   -0.1060428    0.2447350
15-18 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0634427   -0.1077274    0.2346129
15-18 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0155957   -0.1497686    0.1809600
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0251286   -0.1771272    0.2273845
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0277197   -0.2163567    0.1609173
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0577833   -0.1194417    0.2350083
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1076675   -0.0952206    0.3105556
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0286493   -0.2325759    0.1752773
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1143970   -0.0849938    0.3137879
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0479115   -0.0246128    0.1204358
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0261853   -0.0456941    0.0980646
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0654268   -0.0119526    0.1428062
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0210718   -0.1123182    0.1544618
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0775663   -0.0452226    0.2003552
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1569810    0.0463386    0.2676234
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0219081   -0.1010206    0.1448369
15-18 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0013682   -0.1195624    0.1168261
15-18 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0887597   -0.0668187    0.2443382
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.1550233    0.0397973    0.2702494
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.1432649    0.0080845    0.2784454
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.2796204    0.0423158    0.5169250
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0623714   -0.0375876    0.1623304
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0684023   -0.0315898    0.1683943
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.1856719    0.0578947    0.3134492
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0863741   -0.5612566    0.3885084
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0364474   -0.5079939    0.4350991
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0870627   -0.5510689    0.3769436
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0710018   -0.0054748    0.1474784
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0746580   -0.0246140    0.1739300
18-21 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.2079442   -0.1032339    0.5191223
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0226298   -0.0832073    0.1284670
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0196471   -0.0787918    0.1180860
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0578064   -0.0544816    0.1700945
18-21 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0409220   -0.0993423    0.1811864
18-21 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.1042015   -0.0294186    0.2378216
18-21 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.1805538    0.0440725    0.3170350
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0191991   -0.2016018    0.2399999
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1230758   -0.0655194    0.3116710
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1676452   -0.0159239    0.3512143
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2975132    0.0335182    0.5615081
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.2743863    0.0183446    0.5304280
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.3884733    0.1382381    0.6387085
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0445991   -0.0308812    0.1200795
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0020282   -0.0766798    0.0726234
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1216362    0.0450033    0.1982691
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0343510   -0.1707698    0.1020678
18-21 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.1100981   -0.2451500    0.0249537
18-21 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0702412   -0.2218611    0.0813787
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0324918   -0.0776451    0.1426287
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.1869229    0.0476224    0.3262234
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0952261   -0.1218006    0.3122529
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0215415   -0.0839140    0.1269971
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0498535   -0.0557268    0.1554337
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0946601   -0.2913288    0.1020087
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0735909   -0.1393018    0.2864836
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0443656   -0.1556877    0.2444188
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0188950   -0.2015057    0.2392957
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0021387   -0.0689112    0.0646339
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0199005   -0.0834766    0.1232777
21-24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.1211780    0.0182499    0.2241060
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0462382   -0.1446392    0.0521629
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0502983   -0.0657065    0.1663031
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0139421   -0.1030485    0.1309327
21-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.1676156    0.0187903    0.3164409
21-24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.1141237   -0.0130499    0.2412972
21-24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.2962483    0.1781704    0.4143262
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0154196   -0.2675447    0.2367055
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0411456   -0.1914131    0.2737043
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1212355   -0.0978502    0.3403213
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2047841    0.0121492    0.3974189
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0973101   -0.0797382    0.2743585
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1057753   -0.0932415    0.3047921
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0319302   -0.0486684    0.1125288
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0201017   -0.0698600    0.1100635
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1193121    0.0300214    0.2086028
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0207324   -0.1286945    0.1701594
21-24 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.0383225   -0.1338875    0.2105325
21-24 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.1097328   -0.0724081    0.2918737
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    1                 -0.0246273   -0.1546693    0.1054147
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.1533477   -0.0254062    0.3321016
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.3237098    0.0381911    0.6092284


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.1715529    0.0610911   0.2820148
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1329688   -0.0668596   0.3327972
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1132168    0.0278605   0.1985731
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0019448   -0.3519279   0.3558175
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0720763   -0.2141636   0.3583162
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1241961   -0.3828585   0.1344663
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.2099233   -0.0100693   0.4299159
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0637116    0.0191980   0.1082251
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0535240   -0.0141317   0.1211798
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.1187561    0.0161942   0.2213179
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0828014   -0.0061292   0.1717320
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0590393   -0.1647176   0.0466391
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0633105   -0.2330246   0.1064036
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0058149   -0.0626480   0.0510182
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0271584   -0.0575674   0.1118842
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0177109   -0.1435571   0.1789790
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0833169   -0.0711680   0.2378017
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0221862   -0.1703428   0.1259704
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1129028   -0.0449799   0.2707854
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0867993    0.0244282   0.1491703
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.1294296   -0.0181049   0.2769641
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0128532   -0.0903047   0.0645983
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0416707   -0.0282204   0.1115617
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0449316   -0.0612260   0.1510891
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1338530   -0.2992488   0.0315428
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0289716   -0.0720584   0.0141152
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0084122   -0.0647309   0.0815554
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.1262743    0.0060531   0.2464955
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1616184   -0.0429088   0.3661457
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2530324    0.0500242   0.4560405
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.1921564   -0.0714981   0.4558109
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1821493   -0.0173961   0.3816948
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0422648   -0.1494601   0.0649304
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0593410   -0.0059178   0.1245999
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0040237   -0.1125574   0.1045099
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0858457    0.0064446   0.1652469
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1234797    0.0586583   0.1883011
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0123473   -0.1027205   0.1274150
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0758059   -0.1446273   0.2962391
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0068026   -0.0314402   0.0450454
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0482030   -0.0174587   0.1138646
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0207998   -0.1940090   0.1524094
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0963820   -0.0341807   0.2269447
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1988024    0.0345167   0.3630882
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.3022852    0.0198288   0.5847416
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0571530   -0.1540908   0.2683967
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0451242    0.0019307   0.0883177
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0302105   -0.0488877   0.1093088
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0139861   -0.0853682   0.0573960
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0520036   -0.2170071   0.1129999
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0660438    0.0036479   0.1284397
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0482111   -0.0605171   0.1569394
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0203503   -0.2440471   0.2847477
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0420056    0.0041493   0.0798619
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0734209    0.0012834   0.1455583
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0271312   -0.1173575   0.1716199
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0245092   -0.1269332   0.1759515
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0563930   -0.1010177   0.2138038
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0336304   -0.0086556   0.0759165
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0792296    0.0030953   0.1553638
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0181511   -0.0489908   0.0852930
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1016176    0.0356044   0.1676308
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0565845   -0.0203377   0.1335067
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0582428   -0.4847954   0.3683099
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0477411    0.0033023   0.0921799
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0158445   -0.0512284   0.0829175
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1013973   -0.0022061   0.2050006
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1078548   -0.0511821   0.2668917
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2979482    0.0766158   0.5192805
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0364959   -0.0061790   0.0791708
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0412030   -0.1130969   0.0306909
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0577691   -0.0018146   0.1173527
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0210667   -0.0599440   0.1020774
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0376673   -0.1486473   0.2239820
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0063371   -0.0328471   0.0455212
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0133098   -0.0555510   0.0821706
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1652515    0.0696090   0.2608940
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0773602   -0.1228349   0.2775553
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1049242   -0.0414306   0.2512791
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0352838   -0.0086241   0.0791916
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0278380   -0.0544630   0.1101390
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0515151   -0.0091063   0.1121365

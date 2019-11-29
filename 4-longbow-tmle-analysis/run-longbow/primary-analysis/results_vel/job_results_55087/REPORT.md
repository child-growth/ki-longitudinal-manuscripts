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

agecat         studyid                    country                        lag_WHZ_quart    n_cell      n  outcome_variable 
-------------  -------------------------  -----------------------------  --------------  -------  -----  -----------------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    39    231  y_rate           
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    98    231  y_rate           
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    82    231  y_rate           
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    12    231  y_rate           
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    35    208  y_rate           
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    99    208  y_rate           
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    62    208  y_rate           
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    12    208  y_rate           
3-6 months     ki0047075b-MAL-ED          INDIA                          1                   120    230  y_rate           
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    86    230  y_rate           
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    24    230  y_rate           
3-6 months     ki0047075b-MAL-ED          INDIA                          4                     0    230  y_rate           
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    73    233  y_rate           
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    87    233  y_rate           
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    57    233  y_rate           
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    16    233  y_rate           
3-6 months     ki0047075b-MAL-ED          PERU                           1                    14    267  y_rate           
3-6 months     ki0047075b-MAL-ED          PERU                           2                    36    267  y_rate           
3-6 months     ki0047075b-MAL-ED          PERU                           3                    97    267  y_rate           
3-6 months     ki0047075b-MAL-ED          PERU                           4                   120    267  y_rate           
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    23    243  y_rate           
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    64    243  y_rate           
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    77    243  y_rate           
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    79    243  y_rate           
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    17    239  y_rate           
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    58    239  y_rate           
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    83    239  y_rate           
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    81    239  y_rate           
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    11     21  y_rate           
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                     4     21  y_rate           
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                     5     21  y_rate           
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                     1     21  y_rate           
3-6 months     ki1000108-IRC              INDIA                          1                     0      2  y_rate           
3-6 months     ki1000108-IRC              INDIA                          2                     0      2  y_rate           
3-6 months     ki1000108-IRC              INDIA                          3                     2      2  y_rate           
3-6 months     ki1000108-IRC              INDIA                          4                     0      2  y_rate           
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    51    156  y_rate           
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    31    156  y_rate           
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    31    156  y_rate           
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    43    156  y_rate           
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                   208    549  y_rate           
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                   158    549  y_rate           
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                   138    549  y_rate           
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    45    549  y_rate           
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   362   1656  y_rate           
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   322   1656  y_rate           
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   377   1656  y_rate           
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   595   1656  y_rate           
3-6 months     ki1101329-Keneba           GAMBIA                         1                   155    530  y_rate           
3-6 months     ki1101329-Keneba           GAMBIA                         2                   119    530  y_rate           
3-6 months     ki1101329-Keneba           GAMBIA                         3                   133    530  y_rate           
3-6 months     ki1101329-Keneba           GAMBIA                         4                   123    530  y_rate           
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    62    181  y_rate           
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    48    181  y_rate           
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    41    181  y_rate           
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    30    181  y_rate           
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    32    224  y_rate           
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    95    224  y_rate           
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    83    224  y_rate           
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    14    224  y_rate           
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    30    198  y_rate           
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    91    198  y_rate           
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    55    198  y_rate           
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    22    198  y_rate           
6-9 months     ki0047075b-MAL-ED          INDIA                          1                   104    230  y_rate           
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    81    230  y_rate           
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    40    230  y_rate           
6-9 months     ki0047075b-MAL-ED          INDIA                          4                     5    230  y_rate           
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    57    230  y_rate           
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    73    230  y_rate           
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    73    230  y_rate           
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    27    230  y_rate           
6-9 months     ki0047075b-MAL-ED          PERU                           1                    18    244  y_rate           
6-9 months     ki0047075b-MAL-ED          PERU                           2                    37    244  y_rate           
6-9 months     ki0047075b-MAL-ED          PERU                           3                    73    244  y_rate           
6-9 months     ki0047075b-MAL-ED          PERU                           4                   116    244  y_rate           
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    30    231  y_rate           
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    45    231  y_rate           
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    68    231  y_rate           
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    88    231  y_rate           
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    25    225  y_rate           
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    48    225  y_rate           
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    72    225  y_rate           
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    80    225  y_rate           
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    12     35  y_rate           
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    11     35  y_rate           
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    11     35  y_rate           
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                     1     35  y_rate           
6-9 months     ki1000108-IRC              INDIA                          1                     0      3  y_rate           
6-9 months     ki1000108-IRC              INDIA                          2                     3      3  y_rate           
6-9 months     ki1000108-IRC              INDIA                          3                     0      3  y_rate           
6-9 months     ki1000108-IRC              INDIA                          4                     0      3  y_rate           
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    46    142  y_rate           
6-9 months     ki1000109-ResPak           PAKISTAN                       2                    20    142  y_rate           
6-9 months     ki1000109-ResPak           PAKISTAN                       3                    26    142  y_rate           
6-9 months     ki1000109-ResPak           PAKISTAN                       4                    50    142  y_rate           
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                     5     20  y_rate           
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                     6     20  y_rate           
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                     6     20  y_rate           
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4                     3     20  y_rate           
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   347   1483  y_rate           
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   313   1483  y_rate           
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   377   1483  y_rate           
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   446   1483  y_rate           
6-9 months     ki1101329-Keneba           GAMBIA                         1                   110    378  y_rate           
6-9 months     ki1101329-Keneba           GAMBIA                         2                    98    378  y_rate           
6-9 months     ki1101329-Keneba           GAMBIA                         3                    79    378  y_rate           
6-9 months     ki1101329-Keneba           GAMBIA                         4                    91    378  y_rate           
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    48    180  y_rate           
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    52    180  y_rate           
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    42    180  y_rate           
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    38    180  y_rate           
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    80    177  y_rate           
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    50    177  y_rate           
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    29    177  y_rate           
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    18    177  y_rate           
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    29    225  y_rate           
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    83    225  y_rate           
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    86    225  y_rate           
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    27    225  y_rate           
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    20    194  y_rate           
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    68    194  y_rate           
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    81    194  y_rate           
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    25    194  y_rate           
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    99    227  y_rate           
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    95    227  y_rate           
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    28    227  y_rate           
9-12 months    ki0047075b-MAL-ED          INDIA                          4                     5    227  y_rate           
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    49    229  y_rate           
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    76    229  y_rate           
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    72    229  y_rate           
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    32    229  y_rate           
9-12 months    ki0047075b-MAL-ED          PERU                           1                    27    234  y_rate           
9-12 months    ki0047075b-MAL-ED          PERU                           2                    48    234  y_rate           
9-12 months    ki0047075b-MAL-ED          PERU                           3                    66    234  y_rate           
9-12 months    ki0047075b-MAL-ED          PERU                           4                    93    234  y_rate           
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    37    233  y_rate           
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    46    233  y_rate           
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    75    233  y_rate           
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    75    233  y_rate           
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    24    224  y_rate           
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    47    224  y_rate           
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    75    224  y_rate           
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    78    224  y_rate           
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     9     48  y_rate           
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    17     48  y_rate           
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    15     48  y_rate           
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     7     48  y_rate           
9-12 months    ki1000108-IRC              INDIA                          1                     1      5  y_rate           
9-12 months    ki1000108-IRC              INDIA                          2                     3      5  y_rate           
9-12 months    ki1000108-IRC              INDIA                          3                     1      5  y_rate           
9-12 months    ki1000108-IRC              INDIA                          4                     0      5  y_rate           
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    43    140  y_rate           
9-12 months    ki1000109-ResPak           PAKISTAN                       2                    27    140  y_rate           
9-12 months    ki1000109-ResPak           PAKISTAN                       3                    30    140  y_rate           
9-12 months    ki1000109-ResPak           PAKISTAN                       4                    40    140  y_rate           
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    31     99  y_rate           
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    23     99  y_rate           
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    26     99  y_rate           
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    19     99  y_rate           
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   235   1073  y_rate           
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   242   1073  y_rate           
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   241   1073  y_rate           
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   355   1073  y_rate           
9-12 months    ki1101329-Keneba           GAMBIA                         1                   125    343  y_rate           
9-12 months    ki1101329-Keneba           GAMBIA                         2                    75    343  y_rate           
9-12 months    ki1101329-Keneba           GAMBIA                         3                    70    343  y_rate           
9-12 months    ki1101329-Keneba           GAMBIA                         4                    73    343  y_rate           
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    32    157  y_rate           
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    42    157  y_rate           
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    39    157  y_rate           
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    44    157  y_rate           
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                     2      3  y_rate           
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                     1      3  y_rate           
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                     0      3  y_rate           
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4                     0      3  y_rate           
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    73    160  y_rate           
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    41    160  y_rate           
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    28    160  y_rate           
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    18    160  y_rate           
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    21    212  y_rate           
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    88    212  y_rate           
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    77    212  y_rate           
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    26    212  y_rate           
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    13    184  y_rate           
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    49    184  y_rate           
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    79    184  y_rate           
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    43    184  y_rate           
12-15 months   ki0047075b-MAL-ED          INDIA                          1                   116    226  y_rate           
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    76    226  y_rate           
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    26    226  y_rate           
12-15 months   ki0047075b-MAL-ED          INDIA                          4                     8    226  y_rate           
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    54    230  y_rate           
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    80    230  y_rate           
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    61    230  y_rate           
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    35    230  y_rate           
12-15 months   ki0047075b-MAL-ED          PERU                           1                    21    224  y_rate           
12-15 months   ki0047075b-MAL-ED          PERU                           2                    47    224  y_rate           
12-15 months   ki0047075b-MAL-ED          PERU                           3                    74    224  y_rate           
12-15 months   ki0047075b-MAL-ED          PERU                           4                    82    224  y_rate           
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    33    227  y_rate           
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    46    227  y_rate           
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    76    227  y_rate           
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    72    227  y_rate           
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    30    226  y_rate           
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    50    226  y_rate           
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    74    226  y_rate           
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    72    226  y_rate           
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    13     53  y_rate           
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    15     53  y_rate           
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    19     53  y_rate           
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     6     53  y_rate           
12-15 months   ki1000108-IRC              INDIA                          1                     1      5  y_rate           
12-15 months   ki1000108-IRC              INDIA                          2                     4      5  y_rate           
12-15 months   ki1000108-IRC              INDIA                          3                     0      5  y_rate           
12-15 months   ki1000108-IRC              INDIA                          4                     0      5  y_rate           
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    37     91  y_rate           
12-15 months   ki1000109-ResPak           PAKISTAN                       2                    23     91  y_rate           
12-15 months   ki1000109-ResPak           PAKISTAN                       3                    18     91  y_rate           
12-15 months   ki1000109-ResPak           PAKISTAN                       4                    13     91  y_rate           
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                   127    495  y_rate           
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                   131    495  y_rate           
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                   136    495  y_rate           
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                   101    495  y_rate           
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   140    777  y_rate           
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   153    777  y_rate           
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   181    777  y_rate           
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   303    777  y_rate           
12-15 months   ki1101329-Keneba           GAMBIA                         1                   167    468  y_rate           
12-15 months   ki1101329-Keneba           GAMBIA                         2                   113    468  y_rate           
12-15 months   ki1101329-Keneba           GAMBIA                         3                   104    468  y_rate           
12-15 months   ki1101329-Keneba           GAMBIA                         4                    84    468  y_rate           
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    13     83  y_rate           
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    28     83  y_rate           
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    15     83  y_rate           
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    27     83  y_rate           
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                     4      4  y_rate           
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                     0      4  y_rate           
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                     0      4  y_rate           
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4                     0      4  y_rate           
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    69    158  y_rate           
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    44    158  y_rate           
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    28    158  y_rate           
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    17    158  y_rate           
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    26    212  y_rate           
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    94    212  y_rate           
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    78    212  y_rate           
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                    14    212  y_rate           
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    10    175  y_rate           
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    57    175  y_rate           
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    66    175  y_rate           
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    42    175  y_rate           
15-18 months   ki0047075b-MAL-ED          INDIA                          1                   108    226  y_rate           
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    84    226  y_rate           
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    29    226  y_rate           
15-18 months   ki0047075b-MAL-ED          INDIA                          4                     5    226  y_rate           
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    51    227  y_rate           
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    74    227  y_rate           
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    64    227  y_rate           
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    38    227  y_rate           
15-18 months   ki0047075b-MAL-ED          PERU                           1                    18    213  y_rate           
15-18 months   ki0047075b-MAL-ED          PERU                           2                    51    213  y_rate           
15-18 months   ki0047075b-MAL-ED          PERU                           3                    63    213  y_rate           
15-18 months   ki0047075b-MAL-ED          PERU                           4                    81    213  y_rate           
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    23    225  y_rate           
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    40    225  y_rate           
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    74    225  y_rate           
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    88    225  y_rate           
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    27    217  y_rate           
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    50    217  y_rate           
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    67    217  y_rate           
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    73    217  y_rate           
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    13     57  y_rate           
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    26     57  y_rate           
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    15     57  y_rate           
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     3     57  y_rate           
15-18 months   ki1000108-IRC              INDIA                          1                     3      8  y_rate           
15-18 months   ki1000108-IRC              INDIA                          2                     4      8  y_rate           
15-18 months   ki1000108-IRC              INDIA                          3                     0      8  y_rate           
15-18 months   ki1000108-IRC              INDIA                          4                     1      8  y_rate           
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                   119    440  y_rate           
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                   117    440  y_rate           
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                   110    440  y_rate           
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    94    440  y_rate           
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   140    652  y_rate           
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   115    652  y_rate           
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   151    652  y_rate           
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   246    652  y_rate           
15-18 months   ki1101329-Keneba           GAMBIA                         1                   168    471  y_rate           
15-18 months   ki1101329-Keneba           GAMBIA                         2                   121    471  y_rate           
15-18 months   ki1101329-Keneba           GAMBIA                         3                   113    471  y_rate           
15-18 months   ki1101329-Keneba           GAMBIA                         4                    69    471  y_rate           
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                     4      9  y_rate           
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                     3      9  y_rate           
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                     1      9  y_rate           
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4                     1      9  y_rate           
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    59    161  y_rate           
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    55    161  y_rate           
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    29    161  y_rate           
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    18    161  y_rate           
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    34    209  y_rate           
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    91    209  y_rate           
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    73    209  y_rate           
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    11    209  y_rate           
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    12    167  y_rate           
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    51    167  y_rate           
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    66    167  y_rate           
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    38    167  y_rate           
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    86    226  y_rate           
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    90    226  y_rate           
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    45    226  y_rate           
18-21 months   ki0047075b-MAL-ED          INDIA                          4                     5    226  y_rate           
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    49    227  y_rate           
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    76    227  y_rate           
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    63    227  y_rate           
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    39    227  y_rate           
18-21 months   ki0047075b-MAL-ED          PERU                           1                    26    202  y_rate           
18-21 months   ki0047075b-MAL-ED          PERU                           2                    40    202  y_rate           
18-21 months   ki0047075b-MAL-ED          PERU                           3                    67    202  y_rate           
18-21 months   ki0047075b-MAL-ED          PERU                           4                    69    202  y_rate           
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    19    233  y_rate           
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    31    233  y_rate           
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    73    233  y_rate           
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   110    233  y_rate           
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    14    204  y_rate           
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    48    204  y_rate           
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    71    204  y_rate           
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    71    204  y_rate           
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    14     59  y_rate           
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    20     59  y_rate           
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    22     59  y_rate           
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     3     59  y_rate           
18-21 months   ki1000108-IRC              INDIA                          1                     5      7  y_rate           
18-21 months   ki1000108-IRC              INDIA                          2                     1      7  y_rate           
18-21 months   ki1000108-IRC              INDIA                          3                     1      7  y_rate           
18-21 months   ki1000108-IRC              INDIA                          4                     0      7  y_rate           
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                   123    416  y_rate           
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                   103    416  y_rate           
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    94    416  y_rate           
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    96    416  y_rate           
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     2      8  y_rate           
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     2      8  y_rate           
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1      8  y_rate           
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     3      8  y_rate           
18-21 months   ki1101329-Keneba           GAMBIA                         1                   178    498  y_rate           
18-21 months   ki1101329-Keneba           GAMBIA                         2                   132    498  y_rate           
18-21 months   ki1101329-Keneba           GAMBIA                         3                    98    498  y_rate           
18-21 months   ki1101329-Keneba           GAMBIA                         4                    90    498  y_rate           
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                     4      9  y_rate           
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                     3      9  y_rate           
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                     1      9  y_rate           
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4                     1      9  y_rate           
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    67    164  y_rate           
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    49    164  y_rate           
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    34    164  y_rate           
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    14    164  y_rate           
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    36    207  y_rate           
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    92    207  y_rate           
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    69    207  y_rate           
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    10    207  y_rate           
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    13    165  y_rate           
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    37    165  y_rate           
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    69    165  y_rate           
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    46    165  y_rate           
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    84    226  y_rate           
21-24 months   ki0047075b-MAL-ED          INDIA                          2                   100    226  y_rate           
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    34    226  y_rate           
21-24 months   ki0047075b-MAL-ED          INDIA                          4                     8    226  y_rate           
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    47    227  y_rate           
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    72    227  y_rate           
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    67    227  y_rate           
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    41    227  y_rate           
21-24 months   ki0047075b-MAL-ED          PERU                           1                    23    189  y_rate           
21-24 months   ki0047075b-MAL-ED          PERU                           2                    41    189  y_rate           
21-24 months   ki0047075b-MAL-ED          PERU                           3                    60    189  y_rate           
21-24 months   ki0047075b-MAL-ED          PERU                           4                    65    189  y_rate           
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    18    235  y_rate           
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    33    235  y_rate           
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    53    235  y_rate           
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   131    235  y_rate           
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    23    204  y_rate           
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    38    204  y_rate           
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    65    204  y_rate           
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    78    204  y_rate           
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    15     65  y_rate           
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    26     65  y_rate           
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    21     65  y_rate           
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     3     65  y_rate           
21-24 months   ki1000108-IRC              INDIA                          1                     4     12  y_rate           
21-24 months   ki1000108-IRC              INDIA                          2                     4     12  y_rate           
21-24 months   ki1000108-IRC              INDIA                          3                     3     12  y_rate           
21-24 months   ki1000108-IRC              INDIA                          4                     1     12  y_rate           
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   120    348  y_rate           
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    89    348  y_rate           
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    72    348  y_rate           
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    67    348  y_rate           
21-24 months   ki1101329-Keneba           GAMBIA                         1                   145    447  y_rate           
21-24 months   ki1101329-Keneba           GAMBIA                         2                   114    447  y_rate           
21-24 months   ki1101329-Keneba           GAMBIA                         3                   114    447  y_rate           
21-24 months   ki1101329-Keneba           GAMBIA                         4                    74    447  y_rate           
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     4     10  y_rate           
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     2     10  y_rate           
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     3     10  y_rate           
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1     10  y_rate           
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    63    133  y_rate           
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    34    133  y_rate           
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    26    133  y_rate           
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    10    133  y_rate           


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
![](/tmp/1c89a69a-d6ad-4fce-8121-0e1d4f5d207c/89468208-a082-41f1-b121-55fe132debe6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1c89a69a-d6ad-4fce-8121-0e1d4f5d207c/89468208-a082-41f1-b121-55fe132debe6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1c89a69a-d6ad-4fce-8121-0e1d4f5d207c/89468208-a082-41f1-b121-55fe132debe6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1145775   -0.1679473   -0.0612076
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0089633   -0.0464157    0.0284890
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0012106   -0.0398417    0.0374205
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                 0.0115988   -0.0773601    0.1005577
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0204703   -0.0757792    0.1167198
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0646061    0.0112845    0.1179277
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.1010624    0.0418254    0.1602994
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0210499   -0.2094020    0.1673021
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0838506   -0.1310981   -0.0366031
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0233153   -0.0692732    0.0226426
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0122521   -0.0329934    0.0574976
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                 0.0568747   -0.0495460    0.1632954
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0326534   -0.1182307    0.1835375
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                 0.0451649   -0.0488909    0.1392206
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                 0.0140100   -0.0375196    0.0655396
3-6 months     ki0047075b-MAL-ED          PERU                           4                    NA                 0.0311317   -0.0140000    0.0762633
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0822767   -0.2218390    0.0572857
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0343831   -0.1070362    0.0382699
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0017294   -0.0650669    0.0685257
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0325374   -0.0358599    0.1009347
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0132982   -0.0983589    0.1249553
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1050065   -0.1568904   -0.0531226
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0543107   -0.1120255    0.0034041
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0601249   -0.1211387    0.0008890
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0819501   -0.2087473    0.0448471
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    NA                -0.0188401   -0.1440560    0.1063758
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    NA                 0.2239539    0.0676050    0.3803027
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    NA                 0.1083786   -0.0181342    0.2348914
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0502111   -0.0770610   -0.0233612
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0426580   -0.0747142   -0.0106018
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                 0.0024880   -0.0292002    0.0341762
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0691240    0.0237827    0.1144653
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1130971   -0.1484312   -0.0777630
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1039957   -0.1407758   -0.0672157
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0793177   -0.1128058   -0.0458297
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0584206   -0.0876930   -0.0291481
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0628384   -0.1212985   -0.0043783
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.0200744   -0.0817006    0.0415518
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                 0.0257416   -0.0279636    0.0794468
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                 0.0559346   -0.0060926    0.1179618
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0370812   -0.0884413    0.0142789
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    NA                 0.0040291   -0.0483832    0.0564415
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0195271   -0.0904890    0.0514349
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0687486   -0.0189135    0.1564107
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0504128   -0.1002958   -0.0005299
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0973349   -0.1248905   -0.0697792
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0470625   -0.0728910   -0.0212340
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0782315   -0.1641996    0.0077366
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0259714   -0.0595396    0.1114825
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0164215   -0.0592578    0.0264148
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0373545   -0.0413086    0.1160176
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0672720   -0.1379630    0.2725070
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0670452   -0.1002800   -0.0338105
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0847230   -0.1269856   -0.0424604
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0533032   -0.1012269   -0.0053795
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0419568   -0.1325287    0.0486151
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0503514   -0.0935352   -0.0071677
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0554996   -0.0888176   -0.0221816
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0039361   -0.0343830    0.0265109
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0372259   -0.1027862    0.0283344
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0398162   -0.1082807    0.0286484
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.0605621   -0.1177688   -0.0033554
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.0450711   -0.0943274    0.0041853
6-9 months     ki0047075b-MAL-ED          PERU                           4                    NA                -0.0287146   -0.0633175    0.0058883
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0404045   -0.1075328    0.0267239
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0262665   -0.0909872    0.0384542
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0066911   -0.0436091    0.0569913
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0180420   -0.0675374    0.0314534
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1285747   -0.1951089   -0.0620404
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0948685   -0.1875894   -0.0021476
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1024521   -0.1741347   -0.0307695
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1045109   -0.1534008   -0.0556210
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0437569   -0.1346613    0.0471475
6-9 months     ki1000109-ResPak           PAKISTAN                       2                    NA                -0.0933889   -0.1954989    0.0087211
6-9 months     ki1000109-ResPak           PAKISTAN                       3                    NA                -0.0224876   -0.1312086    0.0862333
6-9 months     ki1000109-ResPak           PAKISTAN                       4                    NA                 0.1392458    0.0691236    0.2093681
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0883911   -0.1185472   -0.0582350
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0635506   -0.1013549   -0.0257464
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0670049   -0.0979605   -0.0360493
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0036354   -0.0338435    0.0265727
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0551871   -0.1375966    0.0272224
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.0083560   -0.0699481    0.0532362
6-9 months     ki1101329-Keneba           GAMBIA                         3                    NA                 0.0821154   -0.0158264    0.1800572
6-9 months     ki1101329-Keneba           GAMBIA                         4                    NA                 0.0208572   -0.0338609    0.0755753
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0912085   -0.1319546   -0.0504624
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.1282271   -0.1711810   -0.0852732
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0751650   -0.1122550   -0.0380750
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0782295   -0.1246124   -0.0318465
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0684411   -0.1079475   -0.0289347
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0506159   -0.0990159   -0.0022160
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0575394   -0.1149148   -0.0001639
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0273046   -0.0852502    0.1398593
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1005319   -0.1465952   -0.0544685
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0801472   -0.1035772   -0.0567173
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0859734   -0.1163715   -0.0555754
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0852738   -0.1335733   -0.0369742
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0874305    0.0257690    0.1490921
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0169568   -0.0680378    0.0341243
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0186427   -0.0249803    0.0622657
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0054287   -0.1155115    0.1263688
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0774775   -0.1009443   -0.0540107
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.1023338   -0.1282191   -0.0764485
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.1004624   -0.1402811   -0.0606438
9-12 months    ki0047075b-MAL-ED          INDIA                          4                    NA                -0.1013062   -0.1535377   -0.0490746
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0584860   -0.0925115   -0.0244604
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0794505   -0.1096288   -0.0492721
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0400293   -0.0725117   -0.0075470
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0673987   -0.1082275   -0.0265699
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0840530   -0.1348855   -0.0332205
9-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                -0.0189726   -0.0667286    0.0287833
9-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                -0.0519826   -0.0907191   -0.0132461
9-12 months    ki0047075b-MAL-ED          PERU                           4                    NA                -0.0288510   -0.0664217    0.0087198
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1449055   -0.2334847   -0.0563263
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0837294   -0.1365548   -0.0309040
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0808031   -0.1232017   -0.0384045
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0689924   -0.1182591   -0.0197256
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2584616   -0.3508451   -0.1660781
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1394627   -0.2166992   -0.0622262
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1627079   -0.2312955   -0.0941203
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1352276   -0.1947798   -0.0756754
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2825364   -0.4100349   -0.1550379
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.2458920   -0.3532283   -0.1385556
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0820768   -0.1861535    0.0219999
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.1311737   -0.2486327   -0.0137146
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0791347   -0.1961950    0.0379256
9-12 months    ki1000109-ResPak           PAKISTAN                       2                    NA                -0.0464247   -0.1965299    0.1036806
9-12 months    ki1000109-ResPak           PAKISTAN                       3                    NA                 0.0684238   -0.0322890    0.1691366
9-12 months    ki1000109-ResPak           PAKISTAN                       4                    NA                 0.0568874   -0.0072676    0.1210425
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0459162   -0.0973980    0.0055656
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0643131   -0.1156333   -0.0129930
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0823778   -0.1369883   -0.0277674
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0485347   -0.0833836   -0.0136859
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0836262   -0.1143648   -0.0528876
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0677421   -0.0951474   -0.0403368
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0639026   -0.0942825   -0.0335226
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0544502   -0.0807142   -0.0281862
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0979146   -0.1619493   -0.0338799
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.1260483   -0.1975465   -0.0545500
9-12 months    ki1101329-Keneba           GAMBIA                         3                    NA                -0.1104234   -0.1638695   -0.0569773
9-12 months    ki1101329-Keneba           GAMBIA                         4                    NA                -0.0507936   -0.1100487    0.0084615
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0973857   -0.1309501   -0.0638213
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.0566055   -0.0958993   -0.0173118
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0599868   -0.0976754   -0.0222982
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0413955   -0.0734601   -0.0093309
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1363264   -0.1680809   -0.1045718
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0836831   -0.1326051   -0.0347610
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0329692   -0.0923801    0.0264417
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0236479   -0.1136229    0.0663272
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0486961   -0.0932974   -0.0040949
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0718844   -0.0971339   -0.0466349
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0531458   -0.0772539   -0.0290378
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0183855   -0.0752072    0.0384363
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0008138   -0.0670155    0.0686431
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0012711   -0.0578183    0.0552762
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0079922   -0.0450329    0.0290485
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0037096   -0.0365726    0.0291533
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0570623   -0.0774253   -0.0366992
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0645223   -0.0914228   -0.0376219
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0355298   -0.0722227    0.0011632
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0409201   -0.1722068    0.0903665
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0751154   -0.1037988   -0.0464319
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0472627   -0.0769732   -0.0175523
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0748136   -0.1025138   -0.0471134
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0246798   -0.0607829    0.0114232
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0550578   -0.1249035    0.0147878
12-15 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0889326   -0.1316813   -0.0461839
12-15 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0697310   -0.0980407   -0.0414213
12-15 months   ki0047075b-MAL-ED          PERU                           4                    NA                -0.0477889   -0.0758564   -0.0197213
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0875572   -0.1404129   -0.0347015
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0844177   -0.1377022   -0.0311332
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0659065   -0.1071963   -0.0246168
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0243902   -0.0659025    0.0171220
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1098977   -0.1770368   -0.0427587
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0779616   -0.1332507   -0.0226726
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0524667   -0.0973865   -0.0075469
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0571608   -0.1014032   -0.0129184
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1448857   -0.2327678   -0.0570036
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                 0.0307776   -0.1484145    0.2099698
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                 0.0360352   -0.1694044    0.2414748
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.0928880   -0.1890399    0.0032639
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0748221   -0.0436573    0.1933015
12-15 months   ki1000109-ResPak           PAKISTAN                       2                    NA                 0.1027286    0.0261163    0.1793408
12-15 months   ki1000109-ResPak           PAKISTAN                       3                    NA                 0.1883385    0.0185524    0.3581247
12-15 months   ki1000109-ResPak           PAKISTAN                       4                    NA                 0.1788576   -0.0223376    0.3800528
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0475319   -0.0663059   -0.0287579
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0293911   -0.0516368   -0.0071454
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0474280   -0.0677350   -0.0271210
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0278328   -0.0494483   -0.0062174
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0700835   -0.1035079   -0.0366591
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0751193   -0.1085449   -0.0416938
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0613278   -0.0920177   -0.0306379
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0537387   -0.0779993   -0.0294781
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0400188   -0.0767039   -0.0033337
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0367748   -0.0728916   -0.0006581
12-15 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0511157   -0.0952447   -0.0069866
12-15 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.1000129   -0.1500997   -0.0499262
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0108508   -0.0823135    0.0606118
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.0086559   -0.0526917    0.0353798
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0605238   -0.1078543   -0.0131932
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0118579   -0.0542204    0.0305046
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0828732   -0.1145357   -0.0512106
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0425904   -0.0810489   -0.0041319
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0562981   -0.0999507   -0.0126454
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0036256   -0.0955010    0.0882498
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0586824   -0.0942926   -0.0230723
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0390885   -0.0591496   -0.0190274
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0450538   -0.0682360   -0.0218716
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0599942   -0.1246296    0.0046411
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0284414   -0.1371216    0.0802388
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0253500   -0.0623440    0.0116440
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0018013   -0.0372025    0.0336000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0452540   -0.0808225   -0.0096854
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0492337   -0.0671735   -0.0312938
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0324810   -0.0549672   -0.0099949
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0185915   -0.0492711    0.0120880
15-18 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0007967   -0.0739793    0.0723858
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0723460   -0.0998333   -0.0448588
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0634768   -0.0922682   -0.0346854
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0418902   -0.0693707   -0.0144098
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0262984   -0.0666396    0.0140427
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0701603   -0.1312341   -0.0090866
15-18 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0222537   -0.0544666    0.0099591
15-18 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0287596   -0.0573471   -0.0001721
15-18 months   ki0047075b-MAL-ED          PERU                           4                    NA                -0.0488670   -0.0732671   -0.0244669
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0332659   -0.0896147    0.0230830
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0260548   -0.0708906    0.0187809
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0469995   -0.0848865   -0.0091125
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0242118   -0.0525536    0.0041299
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0957174   -0.1596083   -0.0318265
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0596254   -0.1019809   -0.0172699
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1157655   -0.1587580   -0.0727729
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0673447   -0.1069676   -0.0277218
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0452653   -0.0620484   -0.0284823
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0312863   -0.0507662   -0.0118063
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0485352   -0.0685641   -0.0285064
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.0430068   -0.0648599   -0.0211537
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0420432   -0.0732274   -0.0108591
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0423599   -0.0805346   -0.0041851
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0136903   -0.0471761    0.0197955
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0029006   -0.0291235    0.0233224
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0446120   -0.0781988   -0.0110252
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0444720   -0.0758863   -0.0130578
15-18 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0531717   -0.0810643   -0.0252790
15-18 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.0156524   -0.0652024    0.0338977
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0942585   -0.1226085   -0.0659084
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0449342   -0.0783307   -0.0115377
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0535143   -0.0951338   -0.0118947
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0259217   -0.1102440    0.0584006
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0338488   -0.0596807   -0.0080169
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0084850   -0.0272789    0.0103089
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0153006   -0.0349753    0.0043740
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                 0.0419029    0.0134404    0.0703653
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0004964   -0.1622889    0.1632817
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0279816   -0.0724533    0.0164900
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0117755   -0.0506706    0.0271196
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0327387   -0.0593595   -0.0061179
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0034315   -0.0213315    0.0144684
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    NA                 0.0108114   -0.0068988    0.0285215
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0096805   -0.0168616    0.0362226
18-21 months   ki0047075b-MAL-ED          INDIA                          4                    NA                 0.0382786   -0.0546857    0.1312430
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0300423   -0.0547314   -0.0053533
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0268865   -0.0530761   -0.0006970
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0333442   -0.0562805   -0.0104080
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0298084   -0.0608054    0.0011886
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0369840   -0.0710331   -0.0029349
18-21 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0288755   -0.0592783    0.0015272
18-21 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0123837   -0.0397538    0.0149865
18-21 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.0127800   -0.0161661    0.0417261
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0750062   -0.1314961   -0.0185163
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0758399   -0.1221221   -0.0295578
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0324508   -0.0662130    0.0013115
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0173893   -0.0475008    0.0127222
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1534873   -0.2496016   -0.0573730
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0222913   -0.0712708    0.0266883
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0337992   -0.0743520    0.0067537
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0062592   -0.0425226    0.0300041
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0177692   -0.0346349   -0.0009035
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0054314   -0.0254214    0.0145586
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0280881   -0.0475988   -0.0085774
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0089045   -0.0101873    0.0279962
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0001279   -0.0308072    0.0305514
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0110717   -0.0484489    0.0263055
18-21 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0438674   -0.0773262   -0.0104085
18-21 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.0349197   -0.0764619    0.0066225
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0175597   -0.0414123    0.0062929
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0180200   -0.0461214    0.0100813
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    NA                 0.0418873    0.0015267    0.0822480
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0061277   -0.0807796    0.0685242
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0174879   -0.0086359    0.0436118
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0305994    0.0119592    0.0492396
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                 0.0293829    0.0085416    0.0502242
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0257791   -0.0932758    0.0417176
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0420924   -0.0875084    0.0033235
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0352339   -0.0013189    0.0717867
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0214937   -0.0004657    0.0434531
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0072008   -0.0267422    0.0411438
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0343956    0.0160857    0.0527055
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                 0.0263033    0.0096465    0.0429602
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0248562   -0.0035549    0.0532674
21-24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                 0.0459447    0.0281670    0.0637223
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0052545   -0.0190126    0.0295216
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0157025   -0.0385763    0.0071712
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0234035   -0.0066155    0.0534225
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0005915   -0.0311569    0.0299739
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0059142   -0.0239572    0.0357855
21-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0586862    0.0236788    0.0936936
21-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.0425661    0.0153709    0.0697613
21-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.0905658    0.0659794    0.1151523
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0149760   -0.0421511    0.0721031
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.0264585   -0.0271664    0.0800833
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0294406   -0.0049085    0.0637897
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0582257    0.0346840    0.0817673
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0032400   -0.0550547    0.0485746
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0518047    0.0120040    0.0916054
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0183827   -0.0152266    0.0519919
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.0026272   -0.0401118    0.0453662
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0449046    0.0276123    0.0621969
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0472659    0.0283804    0.0661515
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                 0.0359256    0.0129940    0.0588573
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                 0.0631041    0.0377568    0.0884513
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0059951   -0.0399975    0.0280073
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0086780   -0.0484017    0.0310458
21-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0062828   -0.0522565    0.0396909
21-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                 0.0062162   -0.0422927    0.0547250
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0039983   -0.0219835    0.0299802
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0070950   -0.0382905    0.0241004
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    NA                 0.0489391   -0.0024542    0.1003325
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0758892    0.0083858    0.1433926


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
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.1056141    0.0398006    0.1714276
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.1133668    0.0468141    0.1799195
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.1261763    0.0225876    0.2297649
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0441358   -0.0659380    0.1542096
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0805921   -0.0334249    0.1946091
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0415203   -0.2549468    0.1719063
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0605353   -0.0054756    0.1265462
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0961026    0.0306309    0.1615744
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1407253    0.0240001    0.2574504
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.0125115   -0.1649169    0.1899399
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.0186434   -0.1780916    0.1408049
3-6 months     ki0047075b-MAL-ED          PERU                           4                    1                 -0.0015217   -0.1591205    0.1560770
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0478935   -0.1094836    0.2052706
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0840061   -0.0707816    0.2387937
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1148140   -0.0406100    0.2702381
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.1183047   -0.2415395    0.0049301
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0676089   -0.1933449    0.0581270
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0734231   -0.2007507    0.0539045
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    1                  0.0631100   -0.1136079    0.2398278
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    1                  0.3059040    0.1035471    0.5082608
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    1                  0.1903287    0.0105638    0.3700936
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0075531   -0.0340299    0.0491362
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0526991    0.0113814    0.0940168
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1193351    0.0665519    0.1721183
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0091014   -0.0419916    0.0601944
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0337794   -0.0148802    0.0824390
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0546766    0.0087584    0.1005947
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0427640   -0.0418977    0.1274257
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.0885800    0.0092904    0.1678696
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.1187730    0.0334983    0.2040476
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0411103   -0.0321770    0.1143977
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0175542   -0.0700073    0.1051156
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.1058298    0.0034730    0.2081867
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0469220   -0.1039321    0.0100880
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0033503   -0.0529278    0.0596285
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0278187   -0.1272058    0.0715684
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0423929   -0.1382578    0.0534720
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0113831   -0.1066872    0.1294533
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0413006   -0.1819215    0.2645227
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0176777   -0.0714427    0.0360872
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0137420   -0.0445780    0.0720621
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.0250885   -0.0713885    0.1215655
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0051482   -0.0596806    0.0493843
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0464153   -0.0065504    0.0993811
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0131255   -0.0653687    0.0916197
6-9 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0207460   -0.1099196    0.0684276
6-9 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.0052549   -0.0898915    0.0793816
6-9 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0111016   -0.0656251    0.0878282
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0141379   -0.0792110    0.1074869
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0470956   -0.0369670    0.1311582
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0223624   -0.0617743    0.1064992
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0337062   -0.0804728    0.1478851
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0261226   -0.0728725    0.1251177
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0240638   -0.0596294    0.1077569
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       2                    1                 -0.0496320   -0.1864811    0.0872170
6-9 months     ki1000109-ResPak           PAKISTAN                       3                    1                  0.0212693   -0.1206520    0.1631906
6-9 months     ki1000109-ResPak           PAKISTAN                       4                    1                  0.1830027    0.0679513    0.2980542
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0248405   -0.0236155    0.0732965
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0213862   -0.0218662    0.0646386
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0847557    0.0420824    0.1274289
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0468311   -0.0567151    0.1503773
6-9 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.1373025    0.0083103    0.2662947
6-9 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.0760443   -0.0233721    0.1754607
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.0370186   -0.0964219    0.0223847
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0160435   -0.0391595    0.0712464
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0129790   -0.0487897    0.0747477
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0178251   -0.0442682    0.0799184
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0109017   -0.0582672    0.0800706
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.0957456   -0.0228970    0.2143882
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0203847   -0.0312077    0.0719770
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0145584   -0.0407210    0.0698378
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0152581   -0.0516889    0.0822050
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.1043873   -0.1836059   -0.0251687
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0687879   -0.1434494    0.0058737
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0820019   -0.2187425    0.0547387
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0248563   -0.0597954    0.0100828
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0229849   -0.0692042    0.0232343
9-12 months    ki0047075b-MAL-ED          INDIA                          4                    1                 -0.0238287   -0.0810897    0.0334324
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0209645   -0.0664941    0.0245651
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0184566   -0.0286061    0.0655194
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0089128   -0.0620751    0.0442496
9-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0650804   -0.0048151    0.1349759
9-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.0320704   -0.0317901    0.0959309
9-12 months    ki0047075b-MAL-ED          PERU                           4                    1                  0.0552021   -0.0080916    0.1184957
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0611761   -0.0419324    0.1642846
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0641024   -0.0339738    0.1621786
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0759131   -0.0258012    0.1776275
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1189989   -0.0016990    0.2396968
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0957536   -0.0199686    0.2114759
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1232339    0.0140871    0.2323808
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0366445   -0.1300198    0.2033087
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.2004596    0.0358758    0.3650434
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.1513628   -0.0219938    0.3247193
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       2                    1                  0.0327101   -0.1582274    0.2236475
9-12 months    ki1000109-ResPak           PAKISTAN                       3                    1                  0.1475585   -0.0074283    0.3025453
9-12 months    ki1000109-ResPak           PAKISTAN                       4                    1                  0.1360222    0.0023957    0.2696486
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0183969   -0.0904881    0.0536942
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0364617   -0.1113309    0.0384076
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                 -0.0026185   -0.0643048    0.0590677
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0158841   -0.0252814    0.0570496
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0197236   -0.0234930    0.0629402
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0291760   -0.0112372    0.0695892
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0281337   -0.1251460    0.0688786
9-12 months    ki1101329-Keneba           GAMBIA                         3                    1                 -0.0125088   -0.0965102    0.0714926
9-12 months    ki1101329-Keneba           GAMBIA                         4                    1                  0.0471210   -0.0411613    0.1354032
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0407802   -0.0113588    0.0929191
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0373989   -0.0137625    0.0885602
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0559902    0.0088280    0.1031523
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    1                  0.0526433   -0.0058364    0.1111230
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    1                  0.1033571    0.0362294    0.1704849
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    1                  0.1126785    0.0169688    0.2083882
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0231882   -0.0747503    0.0283738
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0044497   -0.0553847    0.0464853
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0303107   -0.0423981    0.1030194
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0020849   -0.0899898    0.0858200
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0088060   -0.0861821    0.0685701
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0045234   -0.0795441    0.0704972
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0074601   -0.0411986    0.0262784
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0215325   -0.0204321    0.0634970
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0161421   -0.1167143    0.1489985
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0278527   -0.0133051    0.0690104
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0003018   -0.0395829    0.0401864
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0504355    0.0043915    0.0964796
12-15 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           2                    1                 -0.0338748   -0.1153773    0.0476277
12-15 months   ki0047075b-MAL-ED          PERU                           3                    1                 -0.0146732   -0.0898459    0.0604995
12-15 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0072689   -0.0676938    0.0822317
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0031395   -0.0719699    0.0782489
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0216507   -0.0455456    0.0888471
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0631670   -0.0041255    0.1304595
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0319361   -0.0550910    0.1189632
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0574311   -0.0233582    0.1382203
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0527369   -0.0278012    0.1332751
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.1756633   -0.0239190    0.3752456
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.1809209   -0.0425264    0.4043682
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.0519977   -0.0782654    0.1822607
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       2                    1                  0.0279065   -0.1149837    0.1707967
12-15 months   ki1000109-ResPak           PAKISTAN                       3                    1                  0.1135165   -0.0938700    0.3209029
12-15 months   ki1000109-ResPak           PAKISTAN                       4                    1                  0.1040355   -0.1333221    0.3413931
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0181409   -0.0108485    0.0471303
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0001040   -0.0274609    0.0276688
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0196991   -0.0088093    0.0482075
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0050358   -0.0522616    0.0421899
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0087557   -0.0366261    0.0541375
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0163448   -0.0249227    0.0576122
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0032439   -0.0483773    0.0548652
12-15 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0110969   -0.0686704    0.0464765
12-15 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0599941   -0.1223832    0.0023949
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0021949   -0.0815351    0.0859249
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 -0.0496729   -0.1355370    0.0361912
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 -0.0010071   -0.0840326    0.0820185
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0402828   -0.0094659    0.0900314
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0265751   -0.0274479    0.0805981
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0792476   -0.0173854    0.1758805
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0195939   -0.0212367    0.0604246
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0136286   -0.0288298    0.0560871
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0013118   -0.0751292    0.0725055
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0030914   -0.1113837    0.1175665
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0266401   -0.0881086    0.1413888
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0168126   -0.1311226    0.0974975
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0167526   -0.0120130    0.0455183
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0306421   -0.0048976    0.0661818
15-18 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0484369   -0.0269124    0.1237863
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0088692   -0.0309664    0.0487049
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0304558   -0.0085107    0.0694223
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0460476   -0.0028330    0.0949282
15-18 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0479066   -0.0212749    0.1170881
15-18 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0414008   -0.0259528    0.1087543
15-18 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0212934   -0.0445321    0.0871188
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0072110   -0.0645492    0.0789713
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0137336   -0.0817911    0.0543239
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0090540   -0.0539632    0.0720713
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0360920   -0.0406404    0.1128244
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0200481   -0.0972257    0.0571295
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0283727   -0.0468102    0.1035556
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0139791   -0.0116836    0.0396418
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0032699   -0.0294178    0.0228781
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0022586   -0.0252925    0.0298096
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0003166   -0.0497455    0.0491123
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0283529   -0.0174237    0.0741296
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0391427   -0.0015658    0.0798512
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0001399   -0.0457144    0.0459943
15-18 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0085597   -0.0519933    0.0348739
15-18 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0289596   -0.0308727    0.0887920
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0493243    0.0056583    0.0929902
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0407442   -0.0096235    0.0911119
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0683367   -0.0203472    0.1570207
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0253638   -0.0065475    0.0572751
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0185482   -0.0139724    0.0510688
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0757517    0.0366499    0.1148534
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0284780   -0.1970525    0.1400965
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0122719   -0.1793916    0.1548478
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0332351   -0.1980624    0.1315923
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0142429   -0.0109376    0.0394234
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0131120   -0.0189019    0.0451260
18-21 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0417101   -0.0529618    0.1363821
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0031558   -0.0329346    0.0392463
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0033019   -0.0370025    0.0303987
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0002339   -0.0397344    0.0402022
18-21 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0081085   -0.0374850    0.0537019
18-21 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0246003   -0.0191557    0.0683564
18-21 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0497640    0.0050872    0.0944407
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0008337   -0.0737427    0.0720752
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0425554   -0.0231817    0.1082926
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0576169   -0.0063172    0.1215510
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1311960    0.0249667    0.2374253
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1196881    0.0153252    0.2240510
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1472281    0.0447966    0.2496595
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0123378   -0.0138361    0.0385116
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0103189   -0.0361722    0.0155344
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0266736    0.0013100    0.0520373
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0109438   -0.0594946    0.0376070
18-21 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0437394   -0.0889182    0.0014393
18-21 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0347918   -0.0865160    0.0169325
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    1                 -0.0004603   -0.0373274    0.0364068
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0594470    0.0123783    0.1065158
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0114320   -0.0667887    0.0896527
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0131115   -0.0188963    0.0451193
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0118950   -0.0214327    0.0452227
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0432670   -0.1156666    0.0291326
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0773263    0.0190251    0.1356276
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0635861    0.0130528    0.1141194
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0492932   -0.0074063    0.1059926
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0080923   -0.0328451    0.0166606
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0095393   -0.0433394    0.0242607
21-24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0115491   -0.0139714    0.0370696
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0209571   -0.0541656    0.0122514
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0181490   -0.0201806    0.0564786
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0058461   -0.0447176    0.0330255
21-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0527720    0.0067133    0.0988308
21-24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0366519   -0.0038179    0.0771218
21-24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0846517    0.0457788    0.1235245
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0114825   -0.0671160    0.0900809
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0144646   -0.0515453    0.0804746
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0432497   -0.0185329    0.1050322
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0550448   -0.0102587    0.1203483
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0216227   -0.0403010    0.0835465
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0058672   -0.0611531    0.0728875
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0023613   -0.0232630    0.0279856
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0089790   -0.0377201    0.0197621
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0181995   -0.0125586    0.0489575
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0026829   -0.0552595    0.0498937
21-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0002877   -0.0578389    0.0572635
21-24 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0122112   -0.0473238    0.0717462
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    1                 -0.0110934   -0.0518578    0.0296711
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0449408   -0.0127627    0.1026442
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0718909   -0.0002248    0.1440065


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0921367    0.0421006    0.1421728
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0392588   -0.0478531    0.1263708
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0607721    0.0210278    0.1005164
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0069073   -0.1527885    0.1389738
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0773422   -0.0547158    0.2094001
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0838430   -0.1922738    0.0245877
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1185528    0.0154498    0.2216557
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0245949    0.0034817    0.0457081
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0284967   -0.0028568    0.0598503
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0612967    0.0132171    0.1093764
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0317530   -0.0124968    0.0760027
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0196103   -0.0657035    0.0264829
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0171880   -0.1005555    0.0661795
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0032903   -0.0283912    0.0218105
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0157919   -0.0205948    0.0521786
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0046042   -0.0630168    0.0722252
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0226217   -0.0420792    0.0873226
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0351648   -0.0340787    0.1044083
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0647777   -0.0077486    0.1373040
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0364145    0.0090681    0.0637609
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0617203   -0.0043816    0.1278222
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0068278   -0.0416990    0.0280434
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0166030   -0.0134282    0.0466343
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0133265   -0.0300791    0.0567321
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0792521   -0.1418418   -0.0166625
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0137624   -0.0316726    0.0041478
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0038105   -0.0347933    0.0271723
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.0424789   -0.0073937    0.0923515
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0600434   -0.0182862    0.1383730
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1034955    0.0132994    0.1936916
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0976956   -0.0209888    0.2163801
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0680136   -0.0241983    0.1602256
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0102936   -0.0509265    0.0303393
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0180619   -0.0090956    0.0452193
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0068038   -0.0546003    0.0409926
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0413184    0.0088784    0.0737584
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0462807    0.0198674    0.0726940
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0070162   -0.0508719    0.0368396
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0038568   -0.0711800    0.0634664
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0005399   -0.0143216    0.0154014
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0176604   -0.0082944    0.0436153
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0102954   -0.0760042    0.0554135
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0282954   -0.0220979    0.0786888
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0405414   -0.0226009    0.1036837
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.1204610    0.0065473    0.2343747
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0133850   -0.0708060    0.0975761
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0091340   -0.0075552    0.0258232
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0054688   -0.0251070    0.0360447
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0166027   -0.0453292    0.0121238
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0040308   -0.0693915    0.0613298
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0187432   -0.0057455    0.0432319
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0128881   -0.0206660    0.0464422
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0080992   -0.0968176    0.1130159
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0112302   -0.0021490    0.0246094
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0174115   -0.0080333    0.0428563
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0341038   -0.0238479    0.0920555
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0047183   -0.0491221    0.0585586
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0100832   -0.0500528    0.0702193
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0034567   -0.0115091    0.0184226
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0211180   -0.0072627    0.0494988
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0017460   -0.0233790    0.0268710
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0322100    0.0074370    0.0569830
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0183269   -0.0058828    0.0425367
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0208553   -0.1728129    0.1311022
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0092055   -0.0051889    0.0236000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0019371   -0.0210016    0.0248758
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0288699   -0.0043166    0.0620564
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0428397   -0.0123277    0.0980071
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1252841    0.0316586    0.2189095
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0039078   -0.0105012    0.0183169
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0147428   -0.0391158    0.0096302
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0092273   -0.0104823    0.0289369
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0081302   -0.0162871    0.0325476
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0585794    0.0135334    0.1036255
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0046069   -0.0189522    0.0097383
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0002003   -0.0227122    0.0231127
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0510602    0.0206696    0.0814508
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0288961   -0.0262073    0.0839996
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0120798   -0.0384325    0.0625921
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0019916   -0.0120209    0.0160041
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0035614   -0.0253092    0.0324319
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0116178   -0.0082704    0.0315060

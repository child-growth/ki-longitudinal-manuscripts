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
![](/tmp/561e9044-a00c-466c-84d2-226ee7d98017/97256f11-a7ca-4067-be31-f1ece17a4b36/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/561e9044-a00c-466c-84d2-226ee7d98017/97256f11-a7ca-4067-be31-f1ece17a4b36/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/561e9044-a00c-466c-84d2-226ee7d98017/97256f11-a7ca-4067-be31-f1ece17a4b36/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.7455837   1.6267079   1.8644596
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.9486091   1.8675733   2.0296450
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.9533354   1.8719858   2.0346849
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.9823987   1.8075567   2.1572406
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.0881189   1.8641486   2.3120891
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                2.1532598   2.0398802   2.2666395
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                2.2547148   2.1239510   2.3854786
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                2.1971305   1.7117961   2.6824648
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.8359874   1.7331290   1.9388458
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.9652737   1.8699587   2.0605888
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                2.0230421   1.9234079   2.1226762
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                2.1647045   1.9589426   2.3704664
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.0496138   1.6703248   2.4289029
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                2.0693083   1.8497199   2.2888968
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                1.9716882   1.8617662   2.0816103
3-6 months     ki0047075b-MAL-ED          PERU                           4                    NA                2.0334632   1.9345380   2.1323884
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.8659683   1.5705432   2.1613934
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.9058298   1.7518703   2.0597893
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.9790509   1.8367339   2.1213678
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                2.0711837   1.9285598   2.2138075
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8908707   1.6153284   2.1664129
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7394722   1.6299533   1.8489910
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8536946   1.7341833   1.9732059
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                1.8233469   1.6928572   1.9538366
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                1.8844468   1.6184357   2.1504579
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    NA                2.0016789   1.7357694   2.2675884
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    NA                2.4502601   2.1355951   2.7649252
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    NA                2.1817900   1.9221199   2.4414601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9074263   1.8515530   1.9632996
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.9290044   1.8601289   1.9978798
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                2.0409523   1.9731549   2.1087497
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    NA                2.1674337   2.0660470   2.2688203
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7464079   1.6707709   1.8220449
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7471449   1.6676526   1.8266371
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8032494   1.7309602   1.8755385
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.8479974   1.7848008   1.9111940
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.9050654   1.7795570   2.0305738
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                2.0060077   1.8724638   2.1395515
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                2.0681326   1.9531519   2.1831133
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                2.1445941   2.0119048   2.2772833
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.8734750   1.7712322   1.9757178
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    NA                1.9872150   1.8796013   2.0948288
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    NA                1.8915184   1.7327825   2.0502544
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    NA                2.1400077   1.9254908   2.3545247
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.2830647   1.1715648   1.3945646
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.1795565   1.1155826   1.2435304
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.2974997   1.2388684   1.3561311
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.2131765   1.0426803   1.3836728
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.5299251   1.3449086   1.7149416
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.4378464   1.3404799   1.5352129
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.5061284   1.3501955   1.6620613
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.6023356   1.1707588   2.0339124
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.2520386   1.1768181   1.3272590
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    NA                1.2150412   1.1188850   1.3111974
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    NA                1.2880881   1.1800616   1.3961146
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    NA                1.2955129   1.1156680   1.4753579
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.3232456   1.2219334   1.4245578
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.3041735   1.2275614   1.3807855
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                1.4229813   1.3550309   1.4909317
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                1.3456052   1.1998400   1.4913704
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.3658575   1.1851529   1.5465620
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                1.3088283   1.1698306   1.4478260
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                1.3268475   1.2153496   1.4383455
6-9 months     ki0047075b-MAL-ED          PERU                           4                    NA                1.3418496   1.2621447   1.4215544
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.2856721   1.1326250   1.4387192
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.3472233   1.1904714   1.5039752
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.4397572   1.3143448   1.5651696
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.3674402   1.2527436   1.4821367
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1883088   1.0450324   1.3315852
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.2398072   1.0226728   1.4569417
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.1949809   1.0335553   1.3564065
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                1.1618297   1.0544391   1.2692203
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                1.3382123   1.1318077   1.5446169
6-9 months     ki1000109-ResPak           PAKISTAN                       2                    NA                1.2177012   0.9813993   1.4540031
6-9 months     ki1000109-ResPak           PAKISTAN                       3                    NA                1.3817213   1.1379192   1.6255233
6-9 months     ki1000109-ResPak           PAKISTAN                       4                    NA                1.6908631   1.5285139   1.8532122
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2324744   1.1637506   1.3011983
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.2924270   1.2065134   1.3783407
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.2917976   1.2211559   1.3624393
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.4382250   1.3688698   1.5075802
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.3440423   1.1592265   1.5288581
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                1.4549279   1.3133915   1.5964642
6-9 months     ki1101329-Keneba           GAMBIA                         3                    NA                1.6299650   1.4145806   1.8453493
6-9 months     ki1101329-Keneba           GAMBIA                         4                    NA                1.4940045   1.3688698   1.6191392
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.1879221   1.0979297   1.2779144
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                1.0815576   0.9863366   1.1767785
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                1.2166557   1.1295628   1.3037486
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                1.2084055   1.1036382   1.3131728
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.2218471   1.1298431   1.3138512
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    NA                1.2772892   1.1706425   1.3839360
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    NA                1.2698666   1.1474636   1.3922697
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    NA                1.4413936   1.2016950   1.6810921
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9457003   0.8388920   1.0525086
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.9937811   0.9388641   1.0486981
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.9980627   0.9257966   1.0703289
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.0093655   0.8905155   1.1282154
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.4433700   1.2835122   1.6032279
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.2103279   1.0850875   1.3355684
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.3177991   1.2074062   1.4281919
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.3623283   1.0853184   1.6393382
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.0104418   0.9547780   1.0661056
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                0.9557093   0.8930154   1.0184032
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                0.9722088   0.8699451   1.0744725
9-12 months    ki0047075b-MAL-ED          INDIA                          4                    NA                0.9491541   0.8090896   1.0892187
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.0828138   0.9981611   1.1674666
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                1.0478636   0.9743236   1.1214037
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                1.1462210   1.0681700   1.2242720
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                1.0895477   0.9910306   1.1880648
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.9742858   0.8605155   1.0880562
9-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                1.1496091   1.0379324   1.2612858
9-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                1.0778035   0.9845712   1.1710358
9-12 months    ki0047075b-MAL-ED          PERU                           4                    NA                1.1245019   1.0369141   1.2120898
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8535791   0.6316641   1.0754942
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.0210362   0.8896205   1.1524519
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.0233208   0.9200685   1.1265732
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.0791013   0.9660118   1.1921908
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5879118   0.3797027   0.7961210
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8780054   0.6988501   1.0571607
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7683262   0.6139704   0.9226820
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.8830317   0.7439604   1.0221031
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5487054   0.2754711   0.8219396
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.5918723   0.3233501   0.8603945
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.9692432   0.7075365   1.2309500
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.8603626   0.5706698   1.1500554
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.0703618   0.7861955   1.3545281
9-12 months    ki1000109-ResPak           PAKISTAN                       2                    NA                1.1427765   0.7946152   1.4909377
9-12 months    ki1000109-ResPak           PAKISTAN                       3                    NA                1.3603683   1.1239597   1.5967769
9-12 months    ki1000109-ResPak           PAKISTAN                       4                    NA                1.3529042   1.1968460   1.5089624
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1049190   0.9725741   1.2372639
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.0792468   0.9486416   1.2098520
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                1.0386811   0.9058122   1.1715500
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                1.1229432   1.0392201   1.2066664
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0267976   0.9542834   1.0993118
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.0790614   1.0121823   1.1459404
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.0931467   1.0200198   1.1662736
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.1255164   1.0625900   1.1884427
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.9554863   0.8105966   1.1003761
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.8770562   0.7100796   1.0440328
9-12 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.9350114   0.7972350   1.0727879
9-12 months    ki1101329-Keneba           GAMBIA                         4                    NA                1.0871172   0.9434269   1.2308075
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.9259145   0.8346290   1.0172000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                1.0605487   0.9656300   1.1554674
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                1.0451296   0.9553961   1.1348632
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                1.0877497   1.0122825   1.1632168
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.8443608   0.7671923   0.9215293
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    NA                1.0131863   0.8968805   1.1294920
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    NA                1.1327571   0.9982087   1.2673055
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    NA                1.2041519   0.9828942   1.4254096
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8893830   0.7768655   1.0019006
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8758741   0.8120682   0.9396800
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.9226563   0.8610214   0.9842913
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.0433211   0.8908056   1.1958366
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.1471777   0.9559046   1.3384509
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.1517892   1.0069832   1.2965952
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.1367131   1.0435904   1.2298358
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.1590067   1.0574417   1.2605716
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.9036910   0.8517690   0.9556130
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8903074   0.8207067   0.9599081
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.9846769   0.8891951   1.0801587
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    NA                0.9598049   0.6251347   1.2944750
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8984643   0.8261794   0.9707493
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.9634252   0.8868973   1.0399531
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.9176979   0.8472672   0.9881285
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                1.0641657   0.9701190   1.1582123
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.9020075   0.7289807   1.0750343
12-15 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.8113721   0.6965479   0.9261964
12-15 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8860750   0.8102262   0.9619238
12-15 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.9491368   0.8750739   1.0231997
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8639759   0.7219048   1.0060471
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.8504883   0.7171681   0.9838084
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.9234890   0.8148409   1.0321372
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.0288719   0.9300096   1.1277342
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7089084   0.5340545   0.8837622
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8199612   0.6769390   0.9629834
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8869234   0.7710207   1.0028261
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.8865210   0.7734290   0.9996130
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6722448   0.4588369   0.8856528
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                1.1437132   0.6754178   1.6120085
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                1.0923684   0.5895317   1.5952050
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.8333686   0.5552216   1.1115155
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                1.3130417   0.9881746   1.6379089
12-15 months   ki1000109-ResPak           PAKISTAN                       2                    NA                1.2758176   1.1127139   1.4389212
12-15 months   ki1000109-ResPak           PAKISTAN                       3                    NA                1.5804065   1.1196227   2.0411902
12-15 months   ki1000109-ResPak           PAKISTAN                       4                    NA                1.6284470   1.1792861   2.0776080
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9174966   0.8700964   0.9648968
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.9774092   0.9208017   1.0340166
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.9608086   0.9071333   1.0144838
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                1.0284258   0.9708336   1.0860181
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8975926   0.8106667   0.9845185
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8844757   0.8003949   0.9685566
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.9360808   0.8566653   1.0154963
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.9673107   0.9064259   1.0281954
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.9427015   0.8508997   1.0345034
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.9713379   0.8826905   1.0599852
12-15 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.9763654   0.8601325   1.0925983
12-15 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.8131679   0.6988716   0.9274641
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.0801334   0.8862498   1.2740170
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                1.0335597   0.9118801   1.1552392
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.9596836   0.8159610   1.1034063
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                1.0420778   0.9239906   1.1601650
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7957869   0.7137116   0.8778623
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.8891972   0.7919155   0.9864788
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.8518747   0.7397192   0.9640301
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.9663964   0.7353166   1.1974762
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7830221   0.6709157   0.8951284
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8399527   0.7853450   0.8945603
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8357401   0.7734354   0.8980448
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                0.8296648   0.6715666   0.9877631
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.0420127   0.7577328   1.3262926
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                0.9951790   0.8891460   1.1012120
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.0591199   0.9576442   1.1605955
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                0.9598023   0.8581524   1.0614522
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8023828   0.7516650   0.8531007
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8671149   0.8044991   0.9297307
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.9087616   0.8198332   0.9976900
15-18 months   ki0047075b-MAL-ED          INDIA                          4                    NA                0.9965405   0.7985278   1.1945532
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7715840   0.6950741   0.8480939
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.8081817   0.7329231   0.8834402
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8742401   0.7994395   0.9490406
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                0.9285343   0.8180288   1.0390397
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8155920   0.6591253   0.9720587
15-18 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.9141271   0.8244237   1.0038305
15-18 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8850080   0.8061263   0.9638897
15-18 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.8526220   0.7858698   0.9193743
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8424266   0.6756105   1.0092427
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.8577975   0.7351389   0.9804561
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.8386446   0.7367197   0.9405694
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.9206697   0.8394638   1.0018755
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6613823   0.4886806   0.8340840
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7486943   0.6358865   0.8615020
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6138922   0.4941351   0.7336494
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.7434026   0.6351194   0.8516859
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8125798   0.7637186   0.8614410
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8637720   0.8093605   0.9181835
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.8416825   0.7853449   0.8980201
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.8748308   0.8125377   0.9371240
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8596395   0.7759107   0.9433683
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8764092   0.7735907   0.9792276
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.9378508   0.8465214   1.0291802
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.0051767   0.9315983   1.0787552
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8265774   0.7377356   0.9154192
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8574433   0.7707368   0.9441497
15-18 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.8494435   0.7735239   0.9253630
15-18 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.9160342   0.7819838   1.0500846
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6564627   0.5793491   0.7335764
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.8139964   0.7257773   0.9022154
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.7999390   0.6908891   0.9089890
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.9199101   0.7188147   1.1210055
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7497662   0.6698054   0.8297270
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8202463   0.7649738   0.8755188
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8181577   0.7612600   0.8750553
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                0.9636729   0.8711535   1.0561923
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.9742083   0.4725718   1.4758448
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                0.8787160   0.7499192   1.0075127
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                0.9411911   0.8307632   1.0516190
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                0.9022136   0.8264642   0.9779629
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8309690   0.7756682   0.8862697
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.9019708   0.8491457   0.9547959
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.9056269   0.8231845   0.9880694
18-21 months   ki0047075b-MAL-ED          INDIA                          4                    NA                1.0389131   0.7326883   1.3451379
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7952123   0.7210832   0.8693414
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.8182692   0.7412782   0.8952602
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8172097   0.7508781   0.8835413
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                0.8512936   0.7652318   0.9373553
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.7342865   0.6281008   0.8404722
18-21 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.7809928   0.6932775   0.8687080
18-21 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8453258   0.7639450   0.9267067
18-21 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.9128817   0.8292349   0.9965285
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6078630   0.4281389   0.7875872
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.6433811   0.4875244   0.7992378
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.7709000   0.6697327   0.8720673
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.8383604   0.7486331   0.9280878
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4813346   0.2586595   0.7040098
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7426718   0.6012661   0.8840775
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7372498   0.6180959   0.8564038
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.8292711   0.7213129   0.9372294
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7958077   0.7462242   0.8453912
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8333601   0.7762368   0.8904834
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.7895617   0.7352211   0.8439023
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.9181518   0.8602040   0.9760996
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8728332   0.7847898   0.9608765
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8639423   0.7588921   0.9689925
18-21 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.7688089   0.6683778   0.8692400
18-21 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.7873486   0.6679369   0.9067602
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7570109   0.6843324   0.8296893
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.7845358   0.7040023   0.8650692
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.9612264   0.8475532   1.0748996
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.8477698   0.6402660   1.0552736
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7348382   0.6529366   0.8167398
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.7728135   0.7155173   0.8301098
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8081067   0.7516671   0.8645463
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                0.6432810   0.4814457   0.8051163
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.7235164   0.5828332   0.8641996
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                0.8288610   0.7335147   0.9242074
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                0.8083807   0.7499361   0.8668252
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                0.7655084   0.6576957   0.8733211
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8192143   0.7715354   0.8668932
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8170756   0.7703284   0.8638228
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.8391148   0.7473893   0.9308402
21-24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                0.9403922   0.8491732   1.0316112
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7794926   0.7057130   0.8532723
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.7377718   0.6718659   0.8036777
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8393714   0.7490761   0.9296668
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                0.8106690   0.7162465   0.9050914
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6014411   0.5006785   0.7022037
21-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.7456548   0.6365493   0.8547603
21-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.7231727   0.6378011   0.8085444
21-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.8838987   0.8113639   0.9564336
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7507144   0.5538915   0.9475372
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.7439749   0.6006239   0.8873259
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.8115766   0.6993160   0.9238372
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.8801671   0.8075447   0.9527896
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5743080   0.4286242   0.7199918
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8175902   0.6952197   0.9399608
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6892020   0.5919847   0.7864192
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.7322140   0.6007524   0.8636756
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7267840   0.6751031   0.7784649
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.7664807   0.7100388   0.8229226
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.7532938   0.6844147   0.8221730
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.8509361   0.7819454   0.9199269
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6539834   0.5577831   0.7501838
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.6641492   0.5478978   0.7804006
21-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.6801131   0.5374848   0.8227415
21-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.7688529   0.6158307   0.9218751
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7112261   0.6349504   0.7875018
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.6788993   0.5746149   0.7831836
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.8643386   0.7171923   1.0114849
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    NA                1.0277787   0.7864641   1.2690932


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
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.2030254    0.0591439    0.3469069
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.2077516    0.0636073    0.3518959
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.2368149    0.0254889    0.4481410
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0651410   -0.1857221    0.3160040
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.1665959   -0.0934499    0.4266417
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1090116   -0.4251570    0.6431801
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.1292863   -0.0110577    0.2696304
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.1870547    0.0434528    0.3306565
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.3287171    0.0984303    0.5590039
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.0196945   -0.4188209    0.4582099
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.0779256   -0.4728212    0.3169700
3-6 months     ki0047075b-MAL-ED          PERU                           4                    1                 -0.0161506   -0.4083809    0.3760796
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0398615   -0.2927893    0.3725123
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1130826   -0.2147332    0.4408983
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.2052154   -0.1231075    0.5335382
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.1513985   -0.4482978    0.1455008
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0371761   -0.3379324    0.2635802
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0675238   -0.3725885    0.2375409
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    1                  0.1172321   -0.2561853    0.4906495
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    1                  0.5658134    0.1550598    0.9765669
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    1                  0.2973432   -0.0747001    0.6693866
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0215781   -0.0667596    0.1099157
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.1335260    0.0460189    0.2210331
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.2600074    0.1439475    0.3760672
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0007369   -0.1093311    0.1108050
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0568415   -0.0476224    0.1613053
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1015895    0.0028947    0.2002842
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.1009423   -0.0813668    0.2832514
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.1630672   -0.0069707    0.3331051
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.2395287    0.0573560    0.4217014
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.1137400   -0.0342538    0.2617339
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0180435   -0.1709214    0.2070083
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.2665327    0.0289371    0.5041283
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.1035083   -0.2319240    0.0249075
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0144350   -0.1119080    0.1407780
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0698882   -0.2733557    0.1335793
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0920788   -0.3023171    0.1181596
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0237967   -0.2692052    0.2216118
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0724105   -0.3961025    0.5409234
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0369974   -0.1590799    0.0850851
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0360495   -0.0955857    0.1676848
6-9 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.0434744   -0.1514675    0.2384162
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0190721   -0.1462991    0.1081549
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0997357   -0.0224761    0.2219475
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0223596   -0.1550783    0.1997976
6-9 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0570292   -0.2857815    0.1717231
6-9 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.0390099   -0.2535197    0.1754998
6-9 months     ki0047075b-MAL-ED          PERU                           4                    1                 -0.0240079   -0.2226067    0.1745909
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0615512   -0.1579636    0.2810661
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1540851   -0.0447255    0.3528957
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0817681   -0.1110116    0.2745478
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0514984   -0.2084741    0.3114710
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0066721   -0.2097254    0.2230696
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0264791   -0.2062426    0.1532845
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       2                    1                 -0.1205111   -0.4348749    0.1938527
6-9 months     ki1000109-ResPak           PAKISTAN                       3                    1                  0.0435090   -0.2765637    0.3635817
6-9 months     ki1000109-ResPak           PAKISTAN                       4                    1                  0.3526508    0.0894790    0.6158225
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0599526   -0.0503596    0.1702648
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0593232   -0.0392780    0.1579243
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.2057506    0.1080296    0.3034716
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.1108856   -0.1231413    0.3449125
6-9 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.2859227    0.0012926    0.5705528
6-9 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.1499622   -0.0750286    0.3749531
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.1063645   -0.2372793    0.0245503
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0287337   -0.0965913    0.1540586
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0204834   -0.1176353    0.1586022
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0554421   -0.0845312    0.1954154
6-9 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0480195   -0.1034406    0.1994796
6-9 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.2195464   -0.0356477    0.4747406
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0480809   -0.0718054    0.1679671
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0523625   -0.0768129    0.1815379
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0636652   -0.0959846    0.2233150
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.2330421   -0.4344187   -0.0316655
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.1255710   -0.3180894    0.0669474
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0810418   -0.4005487    0.2384652
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0547325   -0.1385715    0.0291065
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0382330   -0.1546647    0.0781986
9-12 months    ki0047075b-MAL-ED          INDIA                          4                    1                 -0.0612877   -0.2120077    0.0894324
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0349502   -0.1474258    0.0775254
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0634072   -0.0517074    0.1785217
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0067338   -0.1230507    0.1365184
9-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.1753233    0.0162177    0.3344289
9-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.1035177   -0.0431851    0.2502204
9-12 months    ki0047075b-MAL-ED          PERU                           4                    1                  0.1502161    0.0071306    0.2933016
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.1674571   -0.0906176    0.4255318
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1697417   -0.0750055    0.4144889
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.2255222   -0.0236614    0.4747058
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2900936    0.0153157    0.5648715
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1804143   -0.0790751    0.4399038
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.2951199    0.0445508    0.5456891
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0431670   -0.3399272    0.4262611
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.4205379    0.0421897    0.7988861
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.3116573   -0.0865623    0.7098769
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       2                    1                  0.0724147   -0.3781317    0.5229610
9-12 months    ki1000109-ResPak           PAKISTAN                       3                    1                  0.2900065   -0.0798350    0.6598480
9-12 months    ki1000109-ResPak           PAKISTAN                       4                    1                  0.2825424   -0.0426357    0.6077205
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0256722   -0.2126302    0.1612858
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0662379   -0.2537903    0.1213144
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0180242   -0.1384548    0.1745033
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0522637   -0.0463754    0.1509028
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0663491   -0.0367674    0.1694655
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0987187    0.0024810    0.1949565
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0784301   -0.3017875    0.1449272
9-12 months    ki1101329-Keneba           GAMBIA                         3                    1                 -0.0204749   -0.2221909    0.1812411
9-12 months    ki1101329-Keneba           GAMBIA                         4                    1                  0.1316309   -0.0746285    0.3378902
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.1346342    0.0015673    0.2677012
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.1192152   -0.0100773    0.2485076
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.1618352    0.0422636    0.2814068
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     2                    1                  0.1688255    0.0278852    0.3097657
9-12 months    ki1114097-CMIN             BANGLADESH                     3                    1                  0.2883963    0.1330724    0.4437202
9-12 months    ki1114097-CMIN             BANGLADESH                     4                    1                  0.3597911    0.1253365    0.5942457
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0135089   -0.1428682    0.1158504
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0332733   -0.0951092    0.1616559
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.1539381   -0.0358526    0.3437287
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0046115   -0.2371468    0.2463697
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0104647   -0.2260001    0.2050708
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0118289   -0.2067383    0.2303962
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0133836   -0.1002176    0.0734505
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0809859   -0.0277002    0.1896720
12-15 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0561139   -0.2825600    0.3947878
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0649609   -0.0401550    0.1700767
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0192335   -0.0816524    0.1201195
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1657013    0.0471221    0.2842806
12-15 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           2                    1                 -0.0906353   -0.2978646    0.1165939
12-15 months   ki0047075b-MAL-ED          PERU                           3                    1                 -0.0159325   -0.2045068    0.1726418
12-15 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0471293   -0.1411580    0.2354166
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0134877   -0.2084249    0.1814495
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0595131   -0.1194972    0.2385234
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1648959   -0.0085402    0.3383321
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1110528   -0.1149476    0.3370532
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1780150   -0.0323542    0.3883842
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1776126   -0.0305268    0.3857520
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.4714684   -0.0431611    0.9860978
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.4201236   -0.1261252    0.9663723
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.1611237   -0.1894596    0.5117071
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       2                    1                 -0.0372242   -0.3997720    0.3253236
12-15 months   ki1000109-ResPak           PAKISTAN                       3                    1                  0.2673647   -0.2942131    0.8289425
12-15 months   ki1000109-ResPak           PAKISTAN                       4                    1                  0.3154053   -0.2422840    0.8730946
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0599125   -0.0138095    0.1336346
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0433120   -0.0282807    0.1149046
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1109292    0.0365389    0.1853196
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0131169   -0.1342953    0.1080615
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0384882   -0.0791446    0.1561210
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0697180   -0.0363077    0.1757438
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0286363   -0.0988328    0.1561054
12-15 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.0336639   -0.1143980    0.1817258
12-15 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.1295336   -0.2759193    0.0168520
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.0465737   -0.2763965    0.1832491
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 -0.1204497   -0.3645590    0.1236596
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 -0.0380556   -0.2677409    0.1916298
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0934102   -0.0335097    0.2203302
12-15 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0560877   -0.0842592    0.1964347
12-15 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.1706094   -0.0745330    0.4157518
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0569306   -0.0683242    0.1821854
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0527180   -0.0753960    0.1808321
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0466428   -0.1467863    0.2400719
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0468336   -0.3493060    0.2556388
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0171072   -0.2838993    0.3181137
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0822104   -0.3833974    0.2189766
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0647321   -0.0158473    0.1453115
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.1063788    0.0040041    0.2087534
15-18 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.1941577   -0.0102471    0.3985625
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0365977   -0.0706495    0.1438448
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.1026561   -0.0044774    0.2097895
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1569502    0.0226878    0.2912127
15-18 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0985351   -0.0819276    0.2789978
15-18 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0694160   -0.1054356    0.2442677
15-18 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0370301   -0.1331229    0.2071830
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0153709   -0.1924143    0.2231562
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0037820   -0.1992574    0.1916934
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0782431   -0.1083117    0.2647979
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0873120   -0.1190186    0.2936426
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0474900   -0.2583583    0.1633782
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0820204   -0.1214805    0.2855212
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0511922   -0.0216763    0.1240608
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0291027   -0.0461483    0.1043536
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0622510   -0.0173688    0.1418708
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0167697   -0.1160752    0.1496146
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0782113   -0.0457490    0.2021717
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1455372    0.0341047    0.2569697
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0308659   -0.0930942    0.1548259
15-18 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.0228661   -0.0936591    0.1393912
15-18 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0894568   -0.0717341    0.2506477
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.1575336    0.0400192    0.2750481
15-18 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.1434763    0.0102210    0.2767315
15-18 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.2634474    0.0479010    0.4789937
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0704801   -0.0271753    0.1681356
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0683915   -0.0303629    0.1671459
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.2139067    0.0909010    0.3369124
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0954923   -0.6125818    0.4215972
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0330172   -0.5462710    0.4802366
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0719947   -0.5786357    0.4346462
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0710018   -0.0054748    0.1474784
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0746580   -0.0246140    0.1739300
18-21 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.2079442   -0.1032339    0.5191223
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0230569   -0.0840209    0.1301346
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0219974   -0.0775757    0.1215706
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0560813   -0.0575834    0.1697459
18-21 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0467063   -0.0911670    0.1845796
18-21 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.1110393   -0.0233172    0.2453958
18-21 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.1785952    0.0428572    0.3143332
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0355180   -0.2030700    0.2741061
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1630370   -0.0445044    0.3705784
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.2304974    0.0280826    0.4329122
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2613372   -0.0016498    0.5243242
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.2559152    0.0037792    0.5080512
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.3479365    0.1009309    0.5949422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0375524   -0.0380380    0.1131428
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0062460   -0.0798448    0.0673527
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1223441    0.0461209    0.1985674
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0088909   -0.1460472    0.1282654
18-21 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.1040243   -0.2373090    0.0292604
18-21 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0854846   -0.2335876    0.0626183
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.0275249   -0.0822943    0.1373441
18-21 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.2042155    0.0682893    0.3401417
18-21 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.0907589   -0.1286362    0.3101540
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0379753   -0.0620587    0.1380094
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0732685   -0.0268183    0.1733554
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0915571   -0.2739213    0.0908071
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.1053446   -0.0639300    0.2746193
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0848643   -0.0674044    0.2371330
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0419920   -0.1345499    0.2185340
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0021387   -0.0689112    0.0646339
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0199005   -0.0834766    0.1232777
21-24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.1211780    0.0182499    0.2241060
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0417208   -0.1403458    0.0569041
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0598788   -0.0560515    0.1758091
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0311763   -0.0886289    0.1509816
21-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.1442137   -0.0043820    0.2928095
21-24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.1217317   -0.0109728    0.2544361
21-24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.2824576    0.1578821    0.4070331
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0067395   -0.2512059    0.2377269
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0608623   -0.1665152    0.2882397
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1294528   -0.0803030    0.3392086
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2432822    0.0552114    0.4313530
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1148939   -0.0608606    0.2906484
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.1579060   -0.0404748    0.3562867
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0396967   -0.0373384    0.1167317
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0265098   -0.0600087    0.1130284
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.1241521    0.0380155    0.2102888
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0101657   -0.1417614    0.1620929
21-24 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.0261297   -0.1464866    0.1987459
21-24 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.1148695   -0.0670663    0.2968052
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     2                    1                 -0.0323268   -0.1613839    0.0967302
21-24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.1531125   -0.0138073    0.3200323
21-24 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.3165526    0.0647819    0.5683233


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.1820570    0.0722583   0.2918558
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0579626   -0.1421291   0.2580544
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1284727    0.0424358   0.2145095
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0339317   -0.4017118   0.3338483
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1044579   -0.1745593   0.3834751
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0607805   -0.3274548   0.2058938
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1804423   -0.0337047   0.3945893
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0607078    0.0162562   0.1051594
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0492361   -0.0180163   0.1164884
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.1229879    0.0200256   0.2259503
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0822822   -0.0087794   0.1733438
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0350196   -0.1379641   0.0679249
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0468092   -0.2265141   0.1328957
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0058149   -0.0626480   0.0510182
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0338953   -0.0513678   0.1191583
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0494543   -0.2279196   0.1290111
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0912537   -0.0572011   0.2397085
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0024468   -0.1471117   0.1520053
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1184226   -0.0461807   0.2830258
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0917785    0.0293285   0.1542285
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.1096943   -0.0369058   0.2562945
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0239771   -0.1021426   0.0541884
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0440268   -0.0244038   0.1124574
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0439443   -0.0568237   0.1447124
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1451141   -0.3063480   0.0161198
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0289716   -0.0720584   0.0141152
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0064233   -0.0704409   0.0832876
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.1250075    0.0129885   0.2370265
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1607467   -0.0361440   0.3576375
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2251959    0.0227440   0.4276477
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.1921564   -0.0714981   0.4558109
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1188485   -0.1050453   0.3427423
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0426208   -0.1456764   0.0604348
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0601337   -0.0042564   0.1245238
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0230491   -0.0862351   0.1323333
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.1231518    0.0363395   0.2099641
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1183863    0.0536136   0.1831591
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0247174   -0.0856718   0.1351067
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0050004   -0.1947559   0.1847552
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0068026   -0.0314402   0.0450454
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0529481   -0.0131417   0.1190378
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0102795   -0.1732023   0.1526433
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0556267   -0.0791005   0.1903538
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1474474   -0.0167273   0.3116222
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.3022852    0.0198288   0.5847416
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0104173   -0.2427694   0.2219349
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0495011    0.0070611   0.0919412
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0341775   -0.0451000   0.1134550
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0077734   -0.0792181   0.0636713
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0805516   -0.2590144   0.0979111
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0705944    0.0083353   0.1328536
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0411005   -0.0632718   0.1454728
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0399013   -0.3149871   0.2351846
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0420056    0.0041493   0.0798619
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0692522   -0.0013993   0.1399036
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0378388   -0.1114411   0.1871187
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0447237   -0.1149468   0.2043942
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0253657   -0.1377435   0.1884748
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0319014   -0.0111830   0.0749858
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0737619   -0.0029985   0.1505223
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0305645   -0.0367212   0.0978502
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0943151    0.0270721   0.1615581
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0636186   -0.0115455   0.1387826
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0581324   -0.5284113   0.4121464
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0477411    0.0033023   0.0921799
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0230675   -0.0450795   0.0912144
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1071574    0.0044752   0.2098396
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1743179   -0.0020503   0.3506862
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2623692    0.0441045   0.4806340
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0359419   -0.0062454   0.0781293
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0299125   -0.0994604   0.0396354
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0406232   -0.0189006   0.1001469
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0345801   -0.0418342   0.1109944
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0726355   -0.0654261   0.2106971
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0063371   -0.0328471   0.0455212
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0038639   -0.0657894   0.0735171
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1596095    0.0584808   0.2607381
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0887806   -0.1021382   0.2796994
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1446247   -0.0004173   0.2896668
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0402942   -0.0014592   0.0820476
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0147066   -0.0694701   0.0988833
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0442668   -0.0168189   0.1053524

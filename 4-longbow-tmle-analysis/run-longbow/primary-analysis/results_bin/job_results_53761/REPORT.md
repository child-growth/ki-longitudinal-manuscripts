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
* single
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        lag_WHZ_quart    ever_stunted   n_cell      n
-------------  -------------------------  -----------------------------  --------------  -------------  -------  -----
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                           0       30    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                           1        4    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                           0       79    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                           1       11    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                           0       61    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                           1       13    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                           0        9    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                           1        0    207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                           0       33    197
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                           1        2    197
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                           0       86    197
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                           1        5    197
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                           0       56    197
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                           1        3    197
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                           0        9    197
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                           1        3    197
3-6 months     ki0047075b-MAL-ED          INDIA                          1                           0       87    200
3-6 months     ki0047075b-MAL-ED          INDIA                          1                           1       17    200
3-6 months     ki0047075b-MAL-ED          INDIA                          2                           0       64    200
3-6 months     ki0047075b-MAL-ED          INDIA                          2                           1       11    200
3-6 months     ki0047075b-MAL-ED          INDIA                          3                           0       13    200
3-6 months     ki0047075b-MAL-ED          INDIA                          3                           1        8    200
3-6 months     ki0047075b-MAL-ED          INDIA                          4                           0        0    200
3-6 months     ki0047075b-MAL-ED          INDIA                          4                           1        0    200
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                           0       68    209
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                           1        1    209
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                           0       75    209
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                           1        2    209
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                           0       49    209
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                           1        1    209
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                           0       12    209
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                           1        1    209
3-6 months     ki0047075b-MAL-ED          PERU                           1                           0        9    248
3-6 months     ki0047075b-MAL-ED          PERU                           1                           1        4    248
3-6 months     ki0047075b-MAL-ED          PERU                           2                           0       18    248
3-6 months     ki0047075b-MAL-ED          PERU                           2                           1       13    248
3-6 months     ki0047075b-MAL-ED          PERU                           3                           0       67    248
3-6 months     ki0047075b-MAL-ED          PERU                           3                           1       24    248
3-6 months     ki0047075b-MAL-ED          PERU                           4                           0       84    248
3-6 months     ki0047075b-MAL-ED          PERU                           4                           1       29    248
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       23    239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        3    239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       51    239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1       15    239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       57    239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1       17    239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       50    239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1       23    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       12    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        5    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       45    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1       12    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       61    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       13    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       45    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       22    215
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        5     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        4     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        2     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        2     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        6     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        2     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        1     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        0     22
3-6 months     ki1000108-IRC              INDIA                          1                           0        0      2
3-6 months     ki1000108-IRC              INDIA                          1                           1        0      2
3-6 months     ki1000108-IRC              INDIA                          2                           0        0      2
3-6 months     ki1000108-IRC              INDIA                          2                           1        0      2
3-6 months     ki1000108-IRC              INDIA                          3                           0        2      2
3-6 months     ki1000108-IRC              INDIA                          3                           1        0      2
3-6 months     ki1000108-IRC              INDIA                          4                           0        0      2
3-6 months     ki1000108-IRC              INDIA                          4                           1        0      2
3-6 months     ki1000109-ResPak           PAKISTAN                       1                           0       52    192
3-6 months     ki1000109-ResPak           PAKISTAN                       1                           1       17    192
3-6 months     ki1000109-ResPak           PAKISTAN                       2                           0       24    192
3-6 months     ki1000109-ResPak           PAKISTAN                       2                           1       10    192
3-6 months     ki1000109-ResPak           PAKISTAN                       3                           0       25    192
3-6 months     ki1000109-ResPak           PAKISTAN                       3                           1       14    192
3-6 months     ki1000109-ResPak           PAKISTAN                       4                           0       14    192
3-6 months     ki1000109-ResPak           PAKISTAN                       4                           1       36    192
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                           0      169    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                           1       33    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                           0      133    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                           1       20    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                           0      111    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                           1       22    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                           0       34    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                           1       10    532
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      416   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       54   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      391   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       48   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      434   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       58   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      579   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1      102   2082
3-6 months     ki1101329-Keneba           GAMBIA                         1                           0      162    673
3-6 months     ki1101329-Keneba           GAMBIA                         1                           1       39    673
3-6 months     ki1101329-Keneba           GAMBIA                         2                           0      139    673
3-6 months     ki1101329-Keneba           GAMBIA                         2                           1       21    673
3-6 months     ki1101329-Keneba           GAMBIA                         3                           0      147    673
3-6 months     ki1101329-Keneba           GAMBIA                         3                           1       29    673
3-6 months     ki1101329-Keneba           GAMBIA                         4                           0      108    673
3-6 months     ki1101329-Keneba           GAMBIA                         4                           1       28    673
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           0        0      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           1        2      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           0        4      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           1        0      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           0        2      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           1        0      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           0        0      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           1        0      8
3-6 months     ki1114097-CMIN             BANGLADESH                     1                           0       40    159
3-6 months     ki1114097-CMIN             BANGLADESH                     1                           1       15    159
3-6 months     ki1114097-CMIN             BANGLADESH                     2                           0       43    159
3-6 months     ki1114097-CMIN             BANGLADESH                     2                           1       11    159
3-6 months     ki1114097-CMIN             BANGLADESH                     3                           0       25    159
3-6 months     ki1114097-CMIN             BANGLADESH                     3                           1        9    159
3-6 months     ki1114097-CMIN             BANGLADESH                     4                           0       13    159
3-6 months     ki1114097-CMIN             BANGLADESH                     4                           1        3    159
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                           0       24    165
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                           1        2    165
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                           0       53    165
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                           1        7    165
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                           0       61    165
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                           1        5    165
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                           0       11    165
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                           1        2    165
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                           0       28    170
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                           1        1    170
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                           0       76    170
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                           1        1    170
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                           0       44    170
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                           1        0    170
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                           0       18    170
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                           1        2    170
6-9 months     ki0047075b-MAL-ED          INDIA                          1                           0       63    165
6-9 months     ki0047075b-MAL-ED          INDIA                          1                           1       14    165
6-9 months     ki0047075b-MAL-ED          INDIA                          2                           0       53    165
6-9 months     ki0047075b-MAL-ED          INDIA                          2                           1        5    165
6-9 months     ki0047075b-MAL-ED          INDIA                          3                           0       25    165
6-9 months     ki0047075b-MAL-ED          INDIA                          3                           1        2    165
6-9 months     ki0047075b-MAL-ED          INDIA                          4                           0        3    165
6-9 months     ki0047075b-MAL-ED          INDIA                          4                           1        0    165
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                           0       48    196
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                           1        1    196
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                           0       54    196
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                           1        2    196
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                           0       65    196
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                           1        2    196
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                           0       24    196
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                           1        0    196
6-9 months     ki0047075b-MAL-ED          PERU                           1                           0        9    167
6-9 months     ki0047075b-MAL-ED          PERU                           1                           1        1    167
6-9 months     ki0047075b-MAL-ED          PERU                           2                           0       17    167
6-9 months     ki0047075b-MAL-ED          PERU                           2                           1        9    167
6-9 months     ki0047075b-MAL-ED          PERU                           3                           0       50    167
6-9 months     ki0047075b-MAL-ED          PERU                           3                           1        4    167
6-9 months     ki0047075b-MAL-ED          PERU                           4                           0       69    167
6-9 months     ki0047075b-MAL-ED          PERU                           4                           1        8    167
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       24    172
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        5    172
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       30    172
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        5    172
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       49    172
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        6    172
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       47    172
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        6    172
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       13    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        7    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       25    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1       11    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       39    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       12    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       40    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       15    162
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        8     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        1     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        4     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        2     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        5     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        2     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        0     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        0     22
6-9 months     ki1000108-IRC              INDIA                          1                           0        0      3
6-9 months     ki1000108-IRC              INDIA                          1                           1        0      3
6-9 months     ki1000108-IRC              INDIA                          2                           0        3      3
6-9 months     ki1000108-IRC              INDIA                          2                           1        0      3
6-9 months     ki1000108-IRC              INDIA                          3                           0        0      3
6-9 months     ki1000108-IRC              INDIA                          3                           1        0      3
6-9 months     ki1000108-IRC              INDIA                          4                           0        0      3
6-9 months     ki1000108-IRC              INDIA                          4                           1        0      3
6-9 months     ki1000109-ResPak           PAKISTAN                       1                           0       38    101
6-9 months     ki1000109-ResPak           PAKISTAN                       1                           1        6    101
6-9 months     ki1000109-ResPak           PAKISTAN                       2                           0       17    101
6-9 months     ki1000109-ResPak           PAKISTAN                       2                           1        2    101
6-9 months     ki1000109-ResPak           PAKISTAN                       3                           0       21    101
6-9 months     ki1000109-ResPak           PAKISTAN                       3                           1        2    101
6-9 months     ki1000109-ResPak           PAKISTAN                       4                           0       12    101
6-9 months     ki1000109-ResPak           PAKISTAN                       4                           1        3    101
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                           0        6     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                           1        2     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                           0        7     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                           1        0     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                           0        8     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                           1        1     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4                           0        7     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4                           1        0     31
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      364   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       61   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      285   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       46   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      386   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       48   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      447   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       42   1679
6-9 months     ki1101329-Keneba           GAMBIA                         1                           0      140    592
6-9 months     ki1101329-Keneba           GAMBIA                         1                           1       18    592
6-9 months     ki1101329-Keneba           GAMBIA                         2                           0      158    592
6-9 months     ki1101329-Keneba           GAMBIA                         2                           1       25    592
6-9 months     ki1101329-Keneba           GAMBIA                         3                           0      119    592
6-9 months     ki1101329-Keneba           GAMBIA                         3                           1       13    592
6-9 months     ki1101329-Keneba           GAMBIA                         4                           0      111    592
6-9 months     ki1101329-Keneba           GAMBIA                         4                           1        8    592
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           0       38    180
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           1       13    180
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           0       28    180
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           1       20    180
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           0       26    180
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           1       13    180
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           0       37    180
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           1        5    180
6-9 months     ki1114097-CMIN             BANGLADESH                     1                           0       44    121
6-9 months     ki1114097-CMIN             BANGLADESH                     1                           1       11    121
6-9 months     ki1114097-CMIN             BANGLADESH                     2                           0       26    121
6-9 months     ki1114097-CMIN             BANGLADESH                     2                           1        4    121
6-9 months     ki1114097-CMIN             BANGLADESH                     3                           0       22    121
6-9 months     ki1114097-CMIN             BANGLADESH                     3                           1        3    121
6-9 months     ki1114097-CMIN             BANGLADESH                     4                           0        9    121
6-9 months     ki1114097-CMIN             BANGLADESH                     4                           1        2    121
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                           0       15    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                           1        3    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                           0       44    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                           1        6    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                           0       56    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                           1        5    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                           0       17    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                           1        4    150
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                           0       16    158
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                           1        0    158
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                           0       56    158
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                           1        0    158
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                           0       64    158
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                           1        1    158
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                           0       20    158
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                           1        1    158
9-12 months    ki0047075b-MAL-ED          INDIA                          1                           0       54    145
9-12 months    ki0047075b-MAL-ED          INDIA                          1                           1       11    145
9-12 months    ki0047075b-MAL-ED          INDIA                          2                           0       47    145
9-12 months    ki0047075b-MAL-ED          INDIA                          2                           1       12    145
9-12 months    ki0047075b-MAL-ED          INDIA                          3                           0       17    145
9-12 months    ki0047075b-MAL-ED          INDIA                          3                           1        2    145
9-12 months    ki0047075b-MAL-ED          INDIA                          4                           0        2    145
9-12 months    ki0047075b-MAL-ED          INDIA                          4                           1        0    145
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                           0       37    189
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                           1        1    189
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                           0       56    189
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                           1        2    189
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                           0       63    189
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                           1        2    189
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                           0       28    189
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                           1        0    189
9-12 months    ki0047075b-MAL-ED          PERU                           1                           0        9    134
9-12 months    ki0047075b-MAL-ED          PERU                           1                           1        1    134
9-12 months    ki0047075b-MAL-ED          PERU                           2                           0       22    134
9-12 months    ki0047075b-MAL-ED          PERU                           2                           1        4    134
9-12 months    ki0047075b-MAL-ED          PERU                           3                           0       33    134
9-12 months    ki0047075b-MAL-ED          PERU                           3                           1        8    134
9-12 months    ki0047075b-MAL-ED          PERU                           4                           0       52    134
9-12 months    ki0047075b-MAL-ED          PERU                           4                           1        5    134
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       19    147
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        3    147
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       30    147
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        2    147
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       46    147
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        2    147
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       39    147
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        6    147
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       10    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        5    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       14    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1       11    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       34    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       11    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       30    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       15    130
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        5     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        1     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        6     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        3     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        5     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        4     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        1     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     26
9-12 months    ki1000108-IRC              INDIA                          1                           0        1      4
9-12 months    ki1000108-IRC              INDIA                          1                           1        0      4
9-12 months    ki1000108-IRC              INDIA                          2                           0        3      4
9-12 months    ki1000108-IRC              INDIA                          2                           1        0      4
9-12 months    ki1000108-IRC              INDIA                          3                           0        0      4
9-12 months    ki1000108-IRC              INDIA                          3                           1        0      4
9-12 months    ki1000108-IRC              INDIA                          4                           0        0      4
9-12 months    ki1000108-IRC              INDIA                          4                           1        0      4
9-12 months    ki1000109-ResPak           PAKISTAN                       1                           0       33     85
9-12 months    ki1000109-ResPak           PAKISTAN                       1                           1        0     85
9-12 months    ki1000109-ResPak           PAKISTAN                       2                           0       19     85
9-12 months    ki1000109-ResPak           PAKISTAN                       2                           1        2     85
9-12 months    ki1000109-ResPak           PAKISTAN                       3                           0       16     85
9-12 months    ki1000109-ResPak           PAKISTAN                       3                           1        1     85
9-12 months    ki1000109-ResPak           PAKISTAN                       4                           0       13     85
9-12 months    ki1000109-ResPak           PAKISTAN                       4                           1        1     85
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                           0       24    113
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                           1        8    113
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                           0       22    113
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                           1        4    113
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                           0       22    113
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                           1        8    113
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                           0       20    113
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                           1        5    113
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      247   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       36   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      248   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       28   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      270   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       32   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      399   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       28   1288
9-12 months    ki1101329-Keneba           GAMBIA                         1                           0      137    490
9-12 months    ki1101329-Keneba           GAMBIA                         1                           1       21    490
9-12 months    ki1101329-Keneba           GAMBIA                         2                           0      116    490
9-12 months    ki1101329-Keneba           GAMBIA                         2                           1        4    490
9-12 months    ki1101329-Keneba           GAMBIA                         3                           0       98    490
9-12 months    ki1101329-Keneba           GAMBIA                         3                           1        8    490
9-12 months    ki1101329-Keneba           GAMBIA                         4                           0      100    490
9-12 months    ki1101329-Keneba           GAMBIA                         4                           1        6    490
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                           0       15    117
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                           1       10    117
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                           0       21    117
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                           1        8    117
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                           0       17    117
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                           1       11    117
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                           0       30    117
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                           1        5    117
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                           0        1      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                           1        1      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                           0        0      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                           1        0      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                           0        0      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                           1        0      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4                           0        0      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4                           1        0      2
9-12 months    ki1114097-CMIN             BANGLADESH                     1                           0       24    104
9-12 months    ki1114097-CMIN             BANGLADESH                     1                           1       14    104
9-12 months    ki1114097-CMIN             BANGLADESH                     2                           0       25    104
9-12 months    ki1114097-CMIN             BANGLADESH                     2                           1        6    104
9-12 months    ki1114097-CMIN             BANGLADESH                     3                           0       20    104
9-12 months    ki1114097-CMIN             BANGLADESH                     3                           1        5    104
9-12 months    ki1114097-CMIN             BANGLADESH                     4                           0        9    104
9-12 months    ki1114097-CMIN             BANGLADESH                     4                           1        1    104
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0        8    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        3    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       41    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        8    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       45    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1       10    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0       19    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        3    137
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       11    154
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    154
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       38    154
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        2    154
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       66    154
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        2    154
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       35    154
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        0    154
12-15 months   ki0047075b-MAL-ED          INDIA                          1                           0       50    134
12-15 months   ki0047075b-MAL-ED          INDIA                          1                           1       14    134
12-15 months   ki0047075b-MAL-ED          INDIA                          2                           0       43    134
12-15 months   ki0047075b-MAL-ED          INDIA                          2                           1        8    134
12-15 months   ki0047075b-MAL-ED          INDIA                          3                           0       15    134
12-15 months   ki0047075b-MAL-ED          INDIA                          3                           1        0    134
12-15 months   ki0047075b-MAL-ED          INDIA                          4                           0        3    134
12-15 months   ki0047075b-MAL-ED          INDIA                          4                           1        1    134
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                           0       38    187
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                           1        3    187
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                           0       54    187
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                           1        7    187
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                           0       50    187
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                           1        3    187
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                           0       31    187
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                           1        1    187
12-15 months   ki0047075b-MAL-ED          PERU                           1                           0        6    121
12-15 months   ki0047075b-MAL-ED          PERU                           1                           1        1    121
12-15 months   ki0047075b-MAL-ED          PERU                           2                           0       14    121
12-15 months   ki0047075b-MAL-ED          PERU                           2                           1        3    121
12-15 months   ki0047075b-MAL-ED          PERU                           3                           0       36    121
12-15 months   ki0047075b-MAL-ED          PERU                           3                           1        6    121
12-15 months   ki0047075b-MAL-ED          PERU                           4                           0       44    121
12-15 months   ki0047075b-MAL-ED          PERU                           4                           1       11    121
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       16    140
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        5    140
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       17    140
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        6    140
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       38    140
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        8    140
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       46    140
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        4    140
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        5     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        6     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       12     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        5     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       18     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       12     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       21     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       12     91
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        4     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        1     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        6     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        2     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        4     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        0     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        4     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     22
12-15 months   ki1000108-IRC              INDIA                          1                           0        0      4
12-15 months   ki1000108-IRC              INDIA                          1                           1        0      4
12-15 months   ki1000108-IRC              INDIA                          2                           0        2      4
12-15 months   ki1000108-IRC              INDIA                          2                           1        2      4
12-15 months   ki1000108-IRC              INDIA                          3                           0        0      4
12-15 months   ki1000108-IRC              INDIA                          3                           1        0      4
12-15 months   ki1000108-IRC              INDIA                          4                           0        0      4
12-15 months   ki1000108-IRC              INDIA                          4                           1        0      4
12-15 months   ki1000109-ResPak           PAKISTAN                       1                           0       31     67
12-15 months   ki1000109-ResPak           PAKISTAN                       1                           1        4     67
12-15 months   ki1000109-ResPak           PAKISTAN                       2                           0       14     67
12-15 months   ki1000109-ResPak           PAKISTAN                       2                           1        2     67
12-15 months   ki1000109-ResPak           PAKISTAN                       3                           0        9     67
12-15 months   ki1000109-ResPak           PAKISTAN                       3                           1        0     67
12-15 months   ki1000109-ResPak           PAKISTAN                       4                           0        7     67
12-15 months   ki1000109-ResPak           PAKISTAN                       4                           1        0     67
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       69    377
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1       12    377
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       82    377
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1       11    377
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0      110    377
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        6    377
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       84    377
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        3    377
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      151    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       20    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      168    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       16    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      192    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       16    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      364    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       18    945
12-15 months   ki1101329-Keneba           GAMBIA                         1                           0      103    414
12-15 months   ki1101329-Keneba           GAMBIA                         1                           1       16    414
12-15 months   ki1101329-Keneba           GAMBIA                         2                           0       96    414
12-15 months   ki1101329-Keneba           GAMBIA                         2                           1        9    414
12-15 months   ki1101329-Keneba           GAMBIA                         3                           0      100    414
12-15 months   ki1101329-Keneba           GAMBIA                         3                           1        9    414
12-15 months   ki1101329-Keneba           GAMBIA                         4                           0       74    414
12-15 months   ki1101329-Keneba           GAMBIA                         4                           1        7    414
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           0        7     82
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           1        2     82
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           0       14     82
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           1        7     82
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           0       15     82
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           1        3     82
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           0       31     82
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           1        3     82
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        1      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        1      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        0      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        0      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        0      2
12-15 months   ki1114097-CMIN             BANGLADESH                     1                           0       17     89
12-15 months   ki1114097-CMIN             BANGLADESH                     1                           1       10     89
12-15 months   ki1114097-CMIN             BANGLADESH                     2                           0       20     89
12-15 months   ki1114097-CMIN             BANGLADESH                     2                           1        9     89
12-15 months   ki1114097-CMIN             BANGLADESH                     3                           0       15     89
12-15 months   ki1114097-CMIN             BANGLADESH                     3                           1        6     89
12-15 months   ki1114097-CMIN             BANGLADESH                     4                           0       12     89
12-15 months   ki1114097-CMIN             BANGLADESH                     4                           1        0     89
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0        8    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        5    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       42    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        5    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       40    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1       15    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0        8    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        0    123
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                           0        7    144
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    144
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       42    144
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        2    144
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       55    144
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        1    144
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       36    144
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        1    144
15-18 months   ki0047075b-MAL-ED          INDIA                          1                           0       36    115
15-18 months   ki0047075b-MAL-ED          INDIA                          1                           1       11    115
15-18 months   ki0047075b-MAL-ED          INDIA                          2                           0       42    115
15-18 months   ki0047075b-MAL-ED          INDIA                          2                           1        5    115
15-18 months   ki0047075b-MAL-ED          INDIA                          3                           0       15    115
15-18 months   ki0047075b-MAL-ED          INDIA                          3                           1        2    115
15-18 months   ki0047075b-MAL-ED          INDIA                          4                           0        4    115
15-18 months   ki0047075b-MAL-ED          INDIA                          4                           1        0    115
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                           0       33    179
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                           1        3    179
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                           0       47    179
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                           1       11    179
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                           0       50    179
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                           1        2    179
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                           0       32    179
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                           1        1    179
15-18 months   ki0047075b-MAL-ED          PERU                           1                           0        4     99
15-18 months   ki0047075b-MAL-ED          PERU                           1                           1        2     99
15-18 months   ki0047075b-MAL-ED          PERU                           2                           0       13     99
15-18 months   ki0047075b-MAL-ED          PERU                           2                           1        7     99
15-18 months   ki0047075b-MAL-ED          PERU                           3                           0       22     99
15-18 months   ki0047075b-MAL-ED          PERU                           3                           1       10     99
15-18 months   ki0047075b-MAL-ED          PERU                           4                           0       34     99
15-18 months   ki0047075b-MAL-ED          PERU                           4                           1        7     99
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       11    123
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    123
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       13    123
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        2    123
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       40    123
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        2    123
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       48    123
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        6    123
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        3     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        3     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0        9     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        5     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       14     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        6     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       19     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1        7     66
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        4     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        2     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        7     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        1     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        4     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        2     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        0     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        0     20
15-18 months   ki1000108-IRC              INDIA                          1                           0        2      5
15-18 months   ki1000108-IRC              INDIA                          1                           1        0      5
15-18 months   ki1000108-IRC              INDIA                          2                           0        2      5
15-18 months   ki1000108-IRC              INDIA                          2                           1        1      5
15-18 months   ki1000108-IRC              INDIA                          3                           0        0      5
15-18 months   ki1000108-IRC              INDIA                          3                           1        0      5
15-18 months   ki1000108-IRC              INDIA                          4                           0        0      5
15-18 months   ki1000108-IRC              INDIA                          4                           1        0      5
15-18 months   ki1000109-ResPak           PAKISTAN                       1                           0       16     35
15-18 months   ki1000109-ResPak           PAKISTAN                       1                           1        0     35
15-18 months   ki1000109-ResPak           PAKISTAN                       2                           0        9     35
15-18 months   ki1000109-ResPak           PAKISTAN                       2                           1        1     35
15-18 months   ki1000109-ResPak           PAKISTAN                       3                           0        8     35
15-18 months   ki1000109-ResPak           PAKISTAN                       3                           1        0     35
15-18 months   ki1000109-ResPak           PAKISTAN                       4                           0        1     35
15-18 months   ki1000109-ResPak           PAKISTAN                       4                           1        0     35
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       46    292
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1        8    292
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       71    292
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1        8    292
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0       74    292
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        5    292
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       77    292
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        3    292
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      107    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       19    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0       90    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       16    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      156    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       19    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      301    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       22    730
15-18 months   ki1101329-Keneba           GAMBIA                         1                           0       91    358
15-18 months   ki1101329-Keneba           GAMBIA                         1                           1       16    358
15-18 months   ki1101329-Keneba           GAMBIA                         2                           0       83    358
15-18 months   ki1101329-Keneba           GAMBIA                         2                           1       13    358
15-18 months   ki1101329-Keneba           GAMBIA                         3                           0       82    358
15-18 months   ki1101329-Keneba           GAMBIA                         3                           1        6    358
15-18 months   ki1101329-Keneba           GAMBIA                         4                           0       64    358
15-18 months   ki1101329-Keneba           GAMBIA                         4                           1        3    358
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           0        0     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           1        2     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           0        3     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           1        0     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           0        4     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           1        0     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           0       12     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           1        2     23
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        1      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        1      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        0      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        0      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        1      3
15-18 months   ki1114097-CMIN             BANGLADESH                     1                           0        7     69
15-18 months   ki1114097-CMIN             BANGLADESH                     1                           1        8     69
15-18 months   ki1114097-CMIN             BANGLADESH                     2                           0       17     69
15-18 months   ki1114097-CMIN             BANGLADESH                     2                           1        6     69
15-18 months   ki1114097-CMIN             BANGLADESH                     3                           0       17     69
15-18 months   ki1114097-CMIN             BANGLADESH                     3                           1        4     69
15-18 months   ki1114097-CMIN             BANGLADESH                     4                           0        9     69
15-18 months   ki1114097-CMIN             BANGLADESH                     4                           1        1     69
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0       10    103
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        0    103
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       39    103
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        6    103
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       35    103
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1        6    103
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0        7    103
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        0    103
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       11    137
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    137
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       40    137
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        0    137
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       55    137
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        1    137
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       30    137
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        0    137
18-21 months   ki0047075b-MAL-ED          INDIA                          1                           0       26    104
18-21 months   ki0047075b-MAL-ED          INDIA                          1                           1        2    104
18-21 months   ki0047075b-MAL-ED          INDIA                          2                           0       43    104
18-21 months   ki0047075b-MAL-ED          INDIA                          2                           1        5    104
18-21 months   ki0047075b-MAL-ED          INDIA                          3                           0       22    104
18-21 months   ki0047075b-MAL-ED          INDIA                          3                           1        2    104
18-21 months   ki0047075b-MAL-ED          INDIA                          4                           0        4    104
18-21 months   ki0047075b-MAL-ED          INDIA                          4                           1        0    104
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                           0       27    169
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                           1        6    169
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                           0       47    169
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                           1        6    169
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                           0       46    169
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                           1        3    169
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                           0       33    169
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                           1        1    169
18-21 months   ki0047075b-MAL-ED          PERU                           1                           0        4     79
18-21 months   ki0047075b-MAL-ED          PERU                           1                           1        1     79
18-21 months   ki0047075b-MAL-ED          PERU                           2                           0       11     79
18-21 months   ki0047075b-MAL-ED          PERU                           2                           1        3     79
18-21 months   ki0047075b-MAL-ED          PERU                           3                           0       24     79
18-21 months   ki0047075b-MAL-ED          PERU                           3                           1        7     79
18-21 months   ki0047075b-MAL-ED          PERU                           4                           0       26     79
18-21 months   ki0047075b-MAL-ED          PERU                           4                           1        3     79
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0        7    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       11    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        1    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       27    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        2    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       51    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        9    109
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        2     49
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        1     49
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0        5     49
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        4     49
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0        6     49
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        6     49
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       20     49
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1        5     49
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        3     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        1     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        5     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        2     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        4     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        3     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        1     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     20
18-21 months   ki1000108-IRC              INDIA                          1                           0        4      4
18-21 months   ki1000108-IRC              INDIA                          1                           1        0      4
18-21 months   ki1000108-IRC              INDIA                          2                           0        0      4
18-21 months   ki1000108-IRC              INDIA                          2                           1        0      4
18-21 months   ki1000108-IRC              INDIA                          3                           0        0      4
18-21 months   ki1000108-IRC              INDIA                          3                           1        0      4
18-21 months   ki1000108-IRC              INDIA                          4                           0        0      4
18-21 months   ki1000108-IRC              INDIA                          4                           1        0      4
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       47    253
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1        9    253
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       52    253
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1        8    253
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0       59    253
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        0    253
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       76    253
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        2    253
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0       83    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        9    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0       84    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1        4    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      120    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1        7    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      228    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       11    546
18-21 months   ki1101329-Keneba           GAMBIA                         1                           0       79    354
18-21 months   ki1101329-Keneba           GAMBIA                         1                           1       12    354
18-21 months   ki1101329-Keneba           GAMBIA                         2                           0       91    354
18-21 months   ki1101329-Keneba           GAMBIA                         2                           1       12    354
18-21 months   ki1101329-Keneba           GAMBIA                         3                           0       73    354
18-21 months   ki1101329-Keneba           GAMBIA                         3                           1        9    354
18-21 months   ki1101329-Keneba           GAMBIA                         4                           0       74    354
18-21 months   ki1101329-Keneba           GAMBIA                         4                           1        4    354
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        1      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        1      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        1      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        0      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        1      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        0      4
18-21 months   ki1114097-CMIN             BANGLADESH                     1                           0        8     55
18-21 months   ki1114097-CMIN             BANGLADESH                     1                           1        3     55
18-21 months   ki1114097-CMIN             BANGLADESH                     2                           0       11     55
18-21 months   ki1114097-CMIN             BANGLADESH                     2                           1        6     55
18-21 months   ki1114097-CMIN             BANGLADESH                     3                           0        9     55
18-21 months   ki1114097-CMIN             BANGLADESH                     3                           1        6     55
18-21 months   ki1114097-CMIN             BANGLADESH                     4                           0        8     55
18-21 months   ki1114097-CMIN             BANGLADESH                     4                           1        4     55
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0       10     93
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        0     93
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       35     93
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        8     93
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       33     93
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1        3     93
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0        4     93
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        0     93
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       12    130
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    130
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       28    130
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        0    130
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       58    130
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        0    130
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       31    130
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        1    130
21-24 months   ki0047075b-MAL-ED          INDIA                          1                           0       26     94
21-24 months   ki0047075b-MAL-ED          INDIA                          1                           1        3     94
21-24 months   ki0047075b-MAL-ED          INDIA                          2                           0       34     94
21-24 months   ki0047075b-MAL-ED          INDIA                          2                           1        5     94
21-24 months   ki0047075b-MAL-ED          INDIA                          3                           0       19     94
21-24 months   ki0047075b-MAL-ED          INDIA                          3                           1        1     94
21-24 months   ki0047075b-MAL-ED          INDIA                          4                           0        6     94
21-24 months   ki0047075b-MAL-ED          INDIA                          4                           1        0     94
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                           0       25    159
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                           1        2    159
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                           0       47    159
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                           1        4    159
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                           0       43    159
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                           1        3    159
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                           0       33    159
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                           1        2    159
21-24 months   ki0047075b-MAL-ED          PERU                           1                           0        3     65
21-24 months   ki0047075b-MAL-ED          PERU                           1                           1        3     65
21-24 months   ki0047075b-MAL-ED          PERU                           2                           0       11     65
21-24 months   ki0047075b-MAL-ED          PERU                           2                           1        0     65
21-24 months   ki0047075b-MAL-ED          PERU                           3                           0       23     65
21-24 months   ki0047075b-MAL-ED          PERU                           3                           1        0     65
21-24 months   ki0047075b-MAL-ED          PERU                           4                           0       24     65
21-24 months   ki0047075b-MAL-ED          PERU                           4                           1        1     65
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0        5    101
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    101
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       12    101
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        1    101
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       19    101
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        1    101
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       55    101
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        7    101
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        0     38
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        5     38
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0        4     38
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        3     38
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0        8     38
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        0     38
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       16     38
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1        2     38
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        2     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        2     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        1     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        5     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        3     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        1     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        0     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     15
21-24 months   ki1000108-IRC              INDIA                          1                           0        1      4
21-24 months   ki1000108-IRC              INDIA                          1                           1        3      4
21-24 months   ki1000108-IRC              INDIA                          2                           0        0      4
21-24 months   ki1000108-IRC              INDIA                          2                           1        0      4
21-24 months   ki1000108-IRC              INDIA                          3                           0        0      4
21-24 months   ki1000108-IRC              INDIA                          3                           1        0      4
21-24 months   ki1000108-IRC              INDIA                          4                           0        0      4
21-24 months   ki1000108-IRC              INDIA                          4                           1        0      4
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       47    226
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1        6    226
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       52    226
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1        2    226
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0       55    226
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        3    226
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       58    226
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        3    226
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0        1      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1        0      1
21-24 months   ki1101329-Keneba           GAMBIA                         1                           0       69    315
21-24 months   ki1101329-Keneba           GAMBIA                         1                           1       12    315
21-24 months   ki1101329-Keneba           GAMBIA                         2                           0       80    315
21-24 months   ki1101329-Keneba           GAMBIA                         2                           1        9    315
21-24 months   ki1101329-Keneba           GAMBIA                         3                           0       75    315
21-24 months   ki1101329-Keneba           GAMBIA                         3                           1        9    315
21-24 months   ki1101329-Keneba           GAMBIA                         4                           0       55    315
21-24 months   ki1101329-Keneba           GAMBIA                         4                           1        6    315
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        1      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        1      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        0      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        2      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        0      4
21-24 months   ki1114097-CMIN             BANGLADESH                     1                           0        8     42
21-24 months   ki1114097-CMIN             BANGLADESH                     1                           1        0     42
21-24 months   ki1114097-CMIN             BANGLADESH                     2                           0        6     42
21-24 months   ki1114097-CMIN             BANGLADESH                     2                           1        4     42
21-24 months   ki1114097-CMIN             BANGLADESH                     3                           0        9     42
21-24 months   ki1114097-CMIN             BANGLADESH                     3                           1        3     42
21-24 months   ki1114097-CMIN             BANGLADESH                     4                           0       11     42
21-24 months   ki1114097-CMIN             BANGLADESH                     4                           1        1     42


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
* agecat: 15-18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 21-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 3-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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

* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 15-18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 21-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/14d9db2a-984d-4bb5-a47c-29b0f29e6a0e/e8532282-4cc4-468a-bf4b-26f9ff9f9ce4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/14d9db2a-984d-4bb5-a47c-29b0f29e6a0e/e8532282-4cc4-468a-bf4b-26f9ff9f9ce4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/14d9db2a-984d-4bb5-a47c-29b0f29e6a0e/e8532282-4cc4-468a-bf4b-26f9ff9f9ce4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/14d9db2a-984d-4bb5-a47c-29b0f29e6a0e/e8532282-4cc4-468a-bf4b-26f9ff9f9ce4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2941176   0.0770162   0.5112191
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2105263   0.1044435   0.3166091
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1756757   0.0887697   0.2625816
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3283582   0.2156473   0.4410691
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                0.2433820   0.1415401   0.3452238
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    NA                0.2759765   0.1214472   0.4305058
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    NA                0.3786013   0.2184908   0.5387118
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    NA                0.7339553   0.6020064   0.8659041
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1712695   0.1179856   0.2245534
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1334335   0.0768707   0.1899962
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1559227   0.0940942   0.2177512
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.2234182   0.0975790   0.3492574
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1168532   0.0879743   0.1457320
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1113496   0.0822221   0.1404770
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1197547   0.0912597   0.1482496
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1494960   0.1227146   0.1762775
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.1912775   0.1369771   0.2455779
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.1319799   0.0793502   0.1846095
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                0.1671718   0.1114568   0.2228868
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                0.2060086   0.1376387   0.2743785
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1724138   0.0345317   0.3102959
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.1428571   0.0265898   0.2591245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.1090909   0.0264597   0.1917221
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.1132075   0.0276566   0.1987585
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3500000   0.1403145   0.5596855
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3055556   0.1546152   0.4564959
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2352941   0.1185163   0.3520719
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2727273   0.1546614   0.3907931
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1470587   0.1133343   0.1807830
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1378202   0.1008562   0.1747843
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1112831   0.0819479   0.1406182
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0845562   0.0598879   0.1092245
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.1139241   0.0643414   0.1635067
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.1366120   0.0868111   0.1864129
6-9 months     ki1101329-Keneba           GAMBIA                         3                    NA                0.0984848   0.0476104   0.1493593
6-9 months     ki1101329-Keneba           GAMBIA                         4                    NA                0.0672269   0.0221970   0.1122568
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2549020   0.1349614   0.3748425
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.4166667   0.2768078   0.5565255
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.3333333   0.1849725   0.4816942
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.1190476   0.0208344   0.2172608
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3333333   0.0938513   0.5728154
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4400000   0.2446672   0.6353328
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2444444   0.1183947   0.3704942
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3333333   0.1950683   0.4715984
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1257392   0.0870301   0.1644483
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1025859   0.0670157   0.1381560
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1059325   0.0710168   0.1408482
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0657658   0.0421018   0.0894297
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.4000000   0.2071376   0.5928624
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.2758621   0.1124931   0.4392311
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.3928571   0.2111819   0.5745324
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.1428571   0.0264296   0.2592846
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5454545   0.2495721   0.8413369
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2941176   0.0763217   0.5119136
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.4000000   0.2237243   0.5762757
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3636364   0.1986010   0.5286717
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1155258   0.0673581   0.1636936
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0867249   0.0459368   0.1275130
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0782443   0.0413681   0.1151205
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0470834   0.0258624   0.0683044
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1344538   0.0730873   0.1958203
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0857143   0.0321042   0.1393243
12-15 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.0825688   0.0308373   0.1343003
12-15 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.0864198   0.0251550   0.1476845
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1473320   0.0847810   0.2098829
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1428994   0.0770331   0.2087658
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1117552   0.0641893   0.1593212
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0691825   0.0411707   0.0971943
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1481481   0.0706616   0.2256347
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1011236   0.0383872   0.1638600
21-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1071429   0.0408951   0.1733907
21-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.0983607   0.0235091   0.1732122


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2418605   0.1844887   0.2992322
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4010417   0.3315353   0.4705480
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1597744   0.1286105   0.1909384
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1258405   0.1115904   0.1400906
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.1738484   0.1451949   0.2025020
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1279070   0.0778484   0.1779656
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2777778   0.2085916   0.3469640
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1173317   0.1019339   0.1327295
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.1081081   0.0830736   0.1331426
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2833333   0.2173204   0.3493463
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3230769   0.2423765   0.4037774
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0962733   0.0801583   0.1123883
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2905983   0.2079732   0.3732233
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3846154   0.2841044   0.4851264
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0740741   0.0573677   0.0907805
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0990338   0.0702254   0.1278422
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1041096   0.0819400   0.1262792
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1142857   0.0790952   0.1494763


### Parameter: RR


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7157895   0.2928466   1.7495666
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.5972973   0.2456312   1.4524381
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 1.1164179   0.4946386   2.5197970
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    1                 1.1339234   0.5627241   2.2849251
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    1                 1.5555849   0.8602975   2.8127996
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    1                 3.0156519   1.9127394   4.7545191
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7790849   0.4607342   1.3174043
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.9103939   0.5500084   1.5069171
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    1                 1.3044836   0.6854884   2.4824305
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9529015   0.6649962   1.3654532
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0248302   0.7272055   1.4442643
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.2793493   0.9429823   1.7357002
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 0.6899915   0.4229363   1.1256738
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                 0.8739752   0.5640506   1.3541918
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                 1.0770144   0.6958505   1.6669672
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.8285714   0.2647220   2.5934019
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.6327273   0.2103030   1.9036520
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.6566038   0.2185019   1.9731107
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8730159   0.4016007   1.8977972
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6722689   0.3087974   1.4635661
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.7792208   0.3720960   1.6317969
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9371785   0.6586692   1.3334515
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7567258   0.5336339   1.0730840
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5749828   0.3964981   0.8338127
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                 1.1991500   0.6796938   2.1156006
6-9 months     ki1101329-Keneba           GAMBIA                         3                    1                 0.8644781   0.4399454   1.6986708
6-9 months     ki1101329-Keneba           GAMBIA                         4                    1                 0.5901027   0.2654688   1.3117218
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 1.6346154   0.9170598   2.9136241
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 1.3076923   0.6842539   2.4991587
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.4670330   0.1806670   1.2073026
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3200000   0.5672771   3.0715146
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7333333   0.3028550   1.7756939
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0000000   0.4362280   2.2923793
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8158621   0.5134269   1.2964473
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8424777   0.5367006   1.3224668
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5230330   0.3258299   0.8395898
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 0.6896552   0.3213474   1.4800937
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.9821429   0.5035368   1.9156586
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.3571429   0.1385457   0.9206423
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.5392157   0.2153322   1.3502560
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7333333   0.3645636   1.4751274
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.6666667   0.3286589   1.3522969
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7506968   0.4002705   1.4079120
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6772881   0.3611722   1.2700847
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4075573   0.2205653   0.7530783
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.6375000   0.2939117   1.3827494
12-15 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.6141055   0.2828801   1.3331638
12-15 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.6427469   0.2766113   1.4935169
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9699147   0.5183926   1.8147146
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7585267   0.4160710   1.3828473
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4695687   0.2612787   0.8439065
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.6825843   0.3032128   1.5366147
21-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.7232143   0.3217723   1.6254938
21-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.6639344   0.2636919   1.6716819


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0522572   -0.2595515    0.1550372
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1576597    0.0693965    0.2459229
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0114951   -0.0536112    0.0306211
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0089874   -0.0167164    0.0346911
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0174291   -0.0621145    0.0272563
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0445068   -0.1674153    0.0784016
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0722222   -0.2668974    0.1224530
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0297269   -0.0581150   -0.0013389
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0058159   -0.0479217    0.0362898
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0284314   -0.0744838    0.1313465
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0102564   -0.2352658    0.2147530
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0294659   -0.0625835    0.0036516
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.1094017   -0.2771131    0.0583097
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1608392   -0.4373962    0.1157179
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0414518   -0.0834215    0.0005179
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0354200   -0.0847238    0.0138838
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0432224   -0.0985770    0.0121322
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0338624   -0.0983193    0.0305944


### Parameter: PAF


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2160633   -1.4599407    0.3988432
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.3931255    0.1306434    0.5763572
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0719455   -0.3706149    0.1616411
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0714187   -0.1568346    0.2546357
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.1002544   -0.3894011    0.1287184
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.3479624   -1.7377099    0.3363057
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2600000   -1.1973531    0.2774944
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2533579   -0.5186501   -0.0344094
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0537975   -0.5247863    0.2717084
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.1003460   -0.3468351    0.3990524
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0317460   -1.0264390    0.4746943
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3060655   -0.6957029   -0.0059588
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.3764706   -1.0953514    0.0957740
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4181818   -1.3652926    0.1496868
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5595989   -1.2267206   -0.0923457
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3576553   -0.9479841    0.0537768
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4151623   -1.0524712    0.0242570
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.2962963   -0.9952909    0.1578250

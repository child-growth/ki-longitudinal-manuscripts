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
* W_mage
* meducyrs
* feducyrs
* single
* month
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_month
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        lag_WHZ_quart    ever_stunted   n_cell      n
-------------  -------------------------  -----------------------------  --------------  -------------  -------  -----
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                           0       39    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                           1        5    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                           0       81    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                           1       15    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                           0       52    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                           1        7    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                           0        7    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                           1        1    207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                           0       32    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                           1        1    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                           0       89    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                           1        5    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                           0       52    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                           1        3    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                           0       15    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                           1        4    201
3-6 months     ki0047075b-MAL-ED          INDIA                          1                           0       66    199
3-6 months     ki0047075b-MAL-ED          INDIA                          1                           1       13    199
3-6 months     ki0047075b-MAL-ED          INDIA                          2                           0       64    199
3-6 months     ki0047075b-MAL-ED          INDIA                          2                           1       10    199
3-6 months     ki0047075b-MAL-ED          INDIA                          3                           0       30    199
3-6 months     ki0047075b-MAL-ED          INDIA                          3                           1        9    199
3-6 months     ki0047075b-MAL-ED          INDIA                          4                           0        4    199
3-6 months     ki0047075b-MAL-ED          INDIA                          4                           1        3    199
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                           0       46    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                           1        0    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                           0       79    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                           1        2    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                           0       67    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                           1        3    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                           0       13    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                           1        0    210
3-6 months     ki0047075b-MAL-ED          PERU                           1                           0       10    248
3-6 months     ki0047075b-MAL-ED          PERU                           1                           1        4    248
3-6 months     ki0047075b-MAL-ED          PERU                           2                           0       46    248
3-6 months     ki0047075b-MAL-ED          PERU                           2                           1       17    248
3-6 months     ki0047075b-MAL-ED          PERU                           3                           0       62    248
3-6 months     ki0047075b-MAL-ED          PERU                           3                           1       25    248
3-6 months     ki0047075b-MAL-ED          PERU                           4                           0       60    248
3-6 months     ki0047075b-MAL-ED          PERU                           4                           1       24    248
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       27    242
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        2    242
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       39    242
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1       13    242
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       66    242
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1       20    242
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       50    242
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1       25    242
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        8    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        2    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       38    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1       13    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       57    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       13    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       62    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       22    215
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        5     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        1     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        3     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        5     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        4     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        2     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        2     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        0     22
3-6 months     ki1000108-IRC              INDIA                          1                           0        0      2
3-6 months     ki1000108-IRC              INDIA                          1                           1        0      2
3-6 months     ki1000108-IRC              INDIA                          2                           0        2      2
3-6 months     ki1000108-IRC              INDIA                          2                           1        0      2
3-6 months     ki1000108-IRC              INDIA                          3                           0        0      2
3-6 months     ki1000108-IRC              INDIA                          3                           1        0      2
3-6 months     ki1000108-IRC              INDIA                          4                           0        0      2
3-6 months     ki1000108-IRC              INDIA                          4                           1        0      2
3-6 months     ki1000109-EE               PAKISTAN                       1                           0        0     10
3-6 months     ki1000109-EE               PAKISTAN                       1                           1        2     10
3-6 months     ki1000109-EE               PAKISTAN                       2                           0        0     10
3-6 months     ki1000109-EE               PAKISTAN                       2                           1        1     10
3-6 months     ki1000109-EE               PAKISTAN                       3                           0        1     10
3-6 months     ki1000109-EE               PAKISTAN                       3                           1        2     10
3-6 months     ki1000109-EE               PAKISTAN                       4                           0        2     10
3-6 months     ki1000109-EE               PAKISTAN                       4                           1        2     10
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                           0      197    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                           1       36    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                           0      135    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                           1       21    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                           0       91    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                           1       20    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                           0       24    532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                           1        8    532
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      494   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       66   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      430   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       48   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      399   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       60   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      497   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       88   2082
3-6 months     ki1101329-Keneba           GAMBIA                         1                           0      121    659
3-6 months     ki1101329-Keneba           GAMBIA                         1                           1       28    659
3-6 months     ki1101329-Keneba           GAMBIA                         2                           0       94    659
3-6 months     ki1101329-Keneba           GAMBIA                         2                           1       25    659
3-6 months     ki1101329-Keneba           GAMBIA                         3                           0      150    659
3-6 months     ki1101329-Keneba           GAMBIA                         3                           1       25    659
3-6 months     ki1101329-Keneba           GAMBIA                         4                           0      177    659
3-6 months     ki1101329-Keneba           GAMBIA                         4                           1       39    659
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           0        1      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           1        2      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           0        3      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           1        0      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           0        2      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           1        0      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           0        0      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           1        0      8
3-6 months     ki1114097-CMIN             BANGLADESH                     1                           0       48    159
3-6 months     ki1114097-CMIN             BANGLADESH                     1                           1       18    159
3-6 months     ki1114097-CMIN             BANGLADESH                     2                           0       42    159
3-6 months     ki1114097-CMIN             BANGLADESH                     2                           1        9    159
3-6 months     ki1114097-CMIN             BANGLADESH                     3                           0       18    159
3-6 months     ki1114097-CMIN             BANGLADESH                     3                           1        8    159
3-6 months     ki1114097-CMIN             BANGLADESH                     4                           0       13    159
3-6 months     ki1114097-CMIN             BANGLADESH                     4                           1        3    159
3-6 months     ki1114097-CMIN             PERU                           1                           0       99    576
3-6 months     ki1114097-CMIN             PERU                           1                           1       16    576
3-6 months     ki1114097-CMIN             PERU                           2                           0      112    576
3-6 months     ki1114097-CMIN             PERU                           2                           1        6    576
3-6 months     ki1114097-CMIN             PERU                           3                           0      148    576
3-6 months     ki1114097-CMIN             PERU                           3                           1        8    576
3-6 months     ki1114097-CMIN             PERU                           4                           0      173    576
3-6 months     ki1114097-CMIN             PERU                           4                           1       14    576
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                           0       22    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                           1        3    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                           0       55    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                           1        5    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                           0       55    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                           1        7    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                           0       17    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                           1        2    166
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                           0       31    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                           1        1    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                           0       65    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                           1        1    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                           0       56    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                           1        1    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                           0       18    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                           1        1    174
6-9 months     ki0047075b-MAL-ED          INDIA                          1                           0       66    166
6-9 months     ki0047075b-MAL-ED          INDIA                          1                           1       15    166
6-9 months     ki0047075b-MAL-ED          INDIA                          2                           0       53    166
6-9 months     ki0047075b-MAL-ED          INDIA                          2                           1        5    166
6-9 months     ki0047075b-MAL-ED          INDIA                          3                           0       22    166
6-9 months     ki0047075b-MAL-ED          INDIA                          3                           1        2    166
6-9 months     ki0047075b-MAL-ED          INDIA                          4                           0        3    166
6-9 months     ki0047075b-MAL-ED          INDIA                          4                           1        0    166
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                           0       51    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                           1        2    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                           0       70    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                           1        1    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                           0       58    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                           1        1    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                           0       13    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                           1        1    197
6-9 months     ki0047075b-MAL-ED          PERU                           1                           0       16    167
6-9 months     ki0047075b-MAL-ED          PERU                           1                           1        5    167
6-9 months     ki0047075b-MAL-ED          PERU                           2                           0       33    167
6-9 months     ki0047075b-MAL-ED          PERU                           2                           1        6    167
6-9 months     ki0047075b-MAL-ED          PERU                           3                           0       55    167
6-9 months     ki0047075b-MAL-ED          PERU                           3                           1        6    167
6-9 months     ki0047075b-MAL-ED          PERU                           4                           0       41    167
6-9 months     ki0047075b-MAL-ED          PERU                           4                           1        5    167
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       27    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        6    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       31    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        5    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       50    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        5    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       44    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        5    173
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       15    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        8    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       28    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1       10    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       37    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       12    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       37    162
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       15    162
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        7     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        0     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        5     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        3     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        3     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        2     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        2     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        0     22
6-9 months     ki1000108-IRC              INDIA                          1                           0        0      3
6-9 months     ki1000108-IRC              INDIA                          1                           1        0      3
6-9 months     ki1000108-IRC              INDIA                          2                           0        2      3
6-9 months     ki1000108-IRC              INDIA                          2                           1        0      3
6-9 months     ki1000108-IRC              INDIA                          3                           0        1      3
6-9 months     ki1000108-IRC              INDIA                          3                           1        0      3
6-9 months     ki1000108-IRC              INDIA                          4                           0        0      3
6-9 months     ki1000108-IRC              INDIA                          4                           1        0      3
6-9 months     ki1000109-EE               PAKISTAN                       1                           0        2     10
6-9 months     ki1000109-EE               PAKISTAN                       1                           1        3     10
6-9 months     ki1000109-EE               PAKISTAN                       2                           0        1     10
6-9 months     ki1000109-EE               PAKISTAN                       2                           1        2     10
6-9 months     ki1000109-EE               PAKISTAN                       3                           0        1     10
6-9 months     ki1000109-EE               PAKISTAN                       3                           1        0     10
6-9 months     ki1000109-EE               PAKISTAN                       4                           0        1     10
6-9 months     ki1000109-EE               PAKISTAN                       4                           1        0     10
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                           0        6     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                           1        2     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                           0        8     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                           1        0     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                           0        7     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                           1        1     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4                           0        7     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4                           1        0     31
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      382   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       64   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      289   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       45   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      380   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       48   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      431   1679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       40   1679
6-9 months     ki1101329-Keneba           GAMBIA                         1                           0      148    583
6-9 months     ki1101329-Keneba           GAMBIA                         1                           1       18    583
6-9 months     ki1101329-Keneba           GAMBIA                         2                           0      159    583
6-9 months     ki1101329-Keneba           GAMBIA                         2                           1       24    583
6-9 months     ki1101329-Keneba           GAMBIA                         3                           0      111    583
6-9 months     ki1101329-Keneba           GAMBIA                         3                           1       14    583
6-9 months     ki1101329-Keneba           GAMBIA                         4                           0      103    583
6-9 months     ki1101329-Keneba           GAMBIA                         4                           1        6    583
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           0       38    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           1       14    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           0       29    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           1       20    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           0       24    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           1       12    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           0       36    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           1        5    178
6-9 months     ki1114097-CMIN             BANGLADESH                     1                           0       44    121
6-9 months     ki1114097-CMIN             BANGLADESH                     1                           1       11    121
6-9 months     ki1114097-CMIN             BANGLADESH                     2                           0       26    121
6-9 months     ki1114097-CMIN             BANGLADESH                     2                           1        4    121
6-9 months     ki1114097-CMIN             BANGLADESH                     3                           0       22    121
6-9 months     ki1114097-CMIN             BANGLADESH                     3                           1        4    121
6-9 months     ki1114097-CMIN             BANGLADESH                     4                           0        9    121
6-9 months     ki1114097-CMIN             BANGLADESH                     4                           1        1    121
6-9 months     ki1114097-CMIN             PERU                           1                           0       58    566
6-9 months     ki1114097-CMIN             PERU                           1                           1        7    566
6-9 months     ki1114097-CMIN             PERU                           2                           0       89    566
6-9 months     ki1114097-CMIN             PERU                           2                           1        8    566
6-9 months     ki1114097-CMIN             PERU                           3                           0      130    566
6-9 months     ki1114097-CMIN             PERU                           3                           1        9    566
6-9 months     ki1114097-CMIN             PERU                           4                           0      246    566
6-9 months     ki1114097-CMIN             PERU                           4                           1       19    566
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                           0       14    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                           1        1    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                           0       41    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                           1        8    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                           0       59    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                           1        6    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                           0       18    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                           1        3    150
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                           0       17    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                           1        0    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                           0       62    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                           1        0    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                           0       62    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                           1        1    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                           0       19    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                           1        1    162
9-12 months    ki0047075b-MAL-ED          INDIA                          1                           0       58    146
9-12 months    ki0047075b-MAL-ED          INDIA                          1                           1       14    146
9-12 months    ki0047075b-MAL-ED          INDIA                          2                           0       50    146
9-12 months    ki0047075b-MAL-ED          INDIA                          2                           1        9    146
9-12 months    ki0047075b-MAL-ED          INDIA                          3                           0       12    146
9-12 months    ki0047075b-MAL-ED          INDIA                          3                           1        1    146
9-12 months    ki0047075b-MAL-ED          INDIA                          4                           0        2    146
9-12 months    ki0047075b-MAL-ED          INDIA                          4                           1        0    146
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                           0       48    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                           1        2    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                           0       76    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                           1        1    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                           0       51    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                           1        2    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                           0       10    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                           1        0    190
9-12 months    ki0047075b-MAL-ED          PERU                           1                           0       16    135
9-12 months    ki0047075b-MAL-ED          PERU                           1                           1        3    135
9-12 months    ki0047075b-MAL-ED          PERU                           2                           0       35    135
9-12 months    ki0047075b-MAL-ED          PERU                           2                           1        6    135
9-12 months    ki0047075b-MAL-ED          PERU                           3                           0       36    135
9-12 months    ki0047075b-MAL-ED          PERU                           3                           1        5    135
9-12 months    ki0047075b-MAL-ED          PERU                           4                           0       31    135
9-12 months    ki0047075b-MAL-ED          PERU                           4                           1        3    135
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       20    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        3    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       33    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        2    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       47    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        4    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       35    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        4    148
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       10    131
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        5    131
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       20    131
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1       13    131
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       32    131
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       10    131
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       27    131
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       14    131
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        3     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        2     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                           0       10     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        2     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        3     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        4     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        1     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     26
9-12 months    ki1000108-IRC              INDIA                          1                           0        0      4
9-12 months    ki1000108-IRC              INDIA                          1                           1        0      4
9-12 months    ki1000108-IRC              INDIA                          2                           0        4      4
9-12 months    ki1000108-IRC              INDIA                          2                           1        0      4
9-12 months    ki1000108-IRC              INDIA                          3                           0        0      4
9-12 months    ki1000108-IRC              INDIA                          3                           1        0      4
9-12 months    ki1000108-IRC              INDIA                          4                           0        0      4
9-12 months    ki1000108-IRC              INDIA                          4                           1        0      4
9-12 months    ki1000109-EE               PAKISTAN                       1                           0        1     11
9-12 months    ki1000109-EE               PAKISTAN                       1                           1        1     11
9-12 months    ki1000109-EE               PAKISTAN                       2                           0        4     11
9-12 months    ki1000109-EE               PAKISTAN                       2                           1        2     11
9-12 months    ki1000109-EE               PAKISTAN                       3                           0        2     11
9-12 months    ki1000109-EE               PAKISTAN                       3                           1        0     11
9-12 months    ki1000109-EE               PAKISTAN                       4                           0        1     11
9-12 months    ki1000109-EE               PAKISTAN                       4                           1        0     11
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                           0       26    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                           1        9    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                           0       25    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                           1        3    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                           0       19    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                           1        8    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                           0       15    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                           1        5    110
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      268   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       41   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      249   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       25   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      286   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       32   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      361   1288
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       26   1288
9-12 months    ki1101329-Keneba           GAMBIA                         1                           0      148    477
9-12 months    ki1101329-Keneba           GAMBIA                         1                           1       21    477
9-12 months    ki1101329-Keneba           GAMBIA                         2                           0      111    477
9-12 months    ki1101329-Keneba           GAMBIA                         2                           1        7    477
9-12 months    ki1101329-Keneba           GAMBIA                         3                           0       95    477
9-12 months    ki1101329-Keneba           GAMBIA                         3                           1        7    477
9-12 months    ki1101329-Keneba           GAMBIA                         4                           0       84    477
9-12 months    ki1101329-Keneba           GAMBIA                         4                           1        4    477
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                           0       16    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                           1       10    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                           0       21    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                           1       11    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                           0       19    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                           1        9    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                           0       25    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                           1        4    115
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                           0        1      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                           1        1      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                           0        0      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                           1        0      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                           0        0      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                           1        0      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4                           0        0      2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4                           1        0      2
9-12 months    ki1114097-CMIN             BANGLADESH                     1                           0       27    104
9-12 months    ki1114097-CMIN             BANGLADESH                     1                           1       14    104
9-12 months    ki1114097-CMIN             BANGLADESH                     2                           0       23    104
9-12 months    ki1114097-CMIN             BANGLADESH                     2                           1        7    104
9-12 months    ki1114097-CMIN             BANGLADESH                     3                           0       19    104
9-12 months    ki1114097-CMIN             BANGLADESH                     3                           1        4    104
9-12 months    ki1114097-CMIN             BANGLADESH                     4                           0        9    104
9-12 months    ki1114097-CMIN             BANGLADESH                     4                           1        1    104
9-12 months    ki1114097-CMIN             PERU                           1                           0       24    519
9-12 months    ki1114097-CMIN             PERU                           1                           1       14    519
9-12 months    ki1114097-CMIN             PERU                           2                           0       49    519
9-12 months    ki1114097-CMIN             PERU                           2                           1       16    519
9-12 months    ki1114097-CMIN             PERU                           3                           0      102    519
9-12 months    ki1114097-CMIN             PERU                           3                           1       11    519
9-12 months    ki1114097-CMIN             PERU                           4                           0      275    519
9-12 months    ki1114097-CMIN             PERU                           4                           1       28    519
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0        8    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        3    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       41    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        9    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       45    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1        9    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0       20    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        2    137
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       16    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       49    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        2    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       64    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        2    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       24    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        0    157
12-15 months   ki0047075b-MAL-ED          INDIA                          1                           0       58    134
12-15 months   ki0047075b-MAL-ED          INDIA                          1                           1       16    134
12-15 months   ki0047075b-MAL-ED          INDIA                          2                           0       40    134
12-15 months   ki0047075b-MAL-ED          INDIA                          2                           1        6    134
12-15 months   ki0047075b-MAL-ED          INDIA                          3                           0       11    134
12-15 months   ki0047075b-MAL-ED          INDIA                          3                           1        0    134
12-15 months   ki0047075b-MAL-ED          INDIA                          4                           0        2    134
12-15 months   ki0047075b-MAL-ED          INDIA                          4                           1        1    134
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                           0       51    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                           1        1    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                           0       65    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                           1        9    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                           0       49    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                           1        3    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                           0        9    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                           1        1    188
12-15 months   ki0047075b-MAL-ED          PERU                           1                           0        8    121
12-15 months   ki0047075b-MAL-ED          PERU                           1                           1        4    121
12-15 months   ki0047075b-MAL-ED          PERU                           2                           0       22    121
12-15 months   ki0047075b-MAL-ED          PERU                           2                           1        3    121
12-15 months   ki0047075b-MAL-ED          PERU                           3                           0       38    121
12-15 months   ki0047075b-MAL-ED          PERU                           3                           1       11    121
12-15 months   ki0047075b-MAL-ED          PERU                           4                           0       32    121
12-15 months   ki0047075b-MAL-ED          PERU                           4                           1        3    121
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       19    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        7    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       17    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        6    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       44    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        7    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       38    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        3    141
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        5     92
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        6     92
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       12     92
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        8     92
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       22     92
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       10     92
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       18     92
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       11     92
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        5     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        3     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        7     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        0     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        4     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        0     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        2     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     22
12-15 months   ki1000108-IRC              INDIA                          1                           0        0      4
12-15 months   ki1000108-IRC              INDIA                          1                           1        0      4
12-15 months   ki1000108-IRC              INDIA                          2                           0        2      4
12-15 months   ki1000108-IRC              INDIA                          2                           1        2      4
12-15 months   ki1000108-IRC              INDIA                          3                           0        0      4
12-15 months   ki1000108-IRC              INDIA                          3                           1        0      4
12-15 months   ki1000108-IRC              INDIA                          4                           0        0      4
12-15 months   ki1000108-IRC              INDIA                          4                           1        0      4
12-15 months   ki1000109-EE               PAKISTAN                       1                           0        0      9
12-15 months   ki1000109-EE               PAKISTAN                       1                           1        0      9
12-15 months   ki1000109-EE               PAKISTAN                       2                           0        1      9
12-15 months   ki1000109-EE               PAKISTAN                       2                           1        2      9
12-15 months   ki1000109-EE               PAKISTAN                       3                           0        3      9
12-15 months   ki1000109-EE               PAKISTAN                       3                           1        2      9
12-15 months   ki1000109-EE               PAKISTAN                       4                           0        1      9
12-15 months   ki1000109-EE               PAKISTAN                       4                           1        0      9
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       78    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1       12    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       87    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1       12    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0      106    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        4    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       72    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        3    374
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      168    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       22    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      177    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       15    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      210    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       17    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      320    945
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       16    945
12-15 months   ki1101329-Keneba           GAMBIA                         1                           0      110    399
12-15 months   ki1101329-Keneba           GAMBIA                         1                           1       16    399
12-15 months   ki1101329-Keneba           GAMBIA                         2                           0      103    399
12-15 months   ki1101329-Keneba           GAMBIA                         2                           1        7    399
12-15 months   ki1101329-Keneba           GAMBIA                         3                           0       97    399
12-15 months   ki1101329-Keneba           GAMBIA                         3                           1        9    399
12-15 months   ki1101329-Keneba           GAMBIA                         4                           0       51    399
12-15 months   ki1101329-Keneba           GAMBIA                         4                           1        6    399
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           0        9     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           1        4     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           0       14     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           1        5     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           0       16     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           1        3     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           0       27     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           1        2     80
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        1      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        1      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        0      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        0      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      2
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        0      2
12-15 months   ki1114097-CMIN             BANGLADESH                     1                           0       17     89
12-15 months   ki1114097-CMIN             BANGLADESH                     1                           1       13     89
12-15 months   ki1114097-CMIN             BANGLADESH                     2                           0       26     89
12-15 months   ki1114097-CMIN             BANGLADESH                     2                           1        7     89
12-15 months   ki1114097-CMIN             BANGLADESH                     3                           0       11     89
12-15 months   ki1114097-CMIN             BANGLADESH                     3                           1        5     89
12-15 months   ki1114097-CMIN             BANGLADESH                     4                           0       10     89
12-15 months   ki1114097-CMIN             BANGLADESH                     4                           1        0     89
12-15 months   ki1114097-CMIN             PERU                           1                           0       12    452
12-15 months   ki1114097-CMIN             PERU                           1                           1        6    452
12-15 months   ki1114097-CMIN             PERU                           2                           0       43    452
12-15 months   ki1114097-CMIN             PERU                           2                           1       11    452
12-15 months   ki1114097-CMIN             PERU                           3                           0       86    452
12-15 months   ki1114097-CMIN             PERU                           3                           1       14    452
12-15 months   ki1114097-CMIN             PERU                           4                           0      255    452
12-15 months   ki1114097-CMIN             PERU                           4                           1       25    452
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0       18    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        5    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       43    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        8    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       33    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1       12    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0        4    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        0    123
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       17    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       46    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        3    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       53    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        0    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       27    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        1    147
15-18 months   ki0047075b-MAL-ED          INDIA                          1                           0       43    116
15-18 months   ki0047075b-MAL-ED          INDIA                          1                           1       11    116
15-18 months   ki0047075b-MAL-ED          INDIA                          2                           0       43    116
15-18 months   ki0047075b-MAL-ED          INDIA                          2                           1        6    116
15-18 months   ki0047075b-MAL-ED          INDIA                          3                           0       11    116
15-18 months   ki0047075b-MAL-ED          INDIA                          3                           1        1    116
15-18 months   ki0047075b-MAL-ED          INDIA                          4                           0        1    116
15-18 months   ki0047075b-MAL-ED          INDIA                          4                           1        0    116
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                           0       45    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                           1        4    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                           0       56    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                           1       10    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                           0       45    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                           1        3    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                           0       17    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                           1        0    180
15-18 months   ki0047075b-MAL-ED          PERU                           1                           0        3     99
15-18 months   ki0047075b-MAL-ED          PERU                           1                           1        4     99
15-18 months   ki0047075b-MAL-ED          PERU                           2                           0       17     99
15-18 months   ki0047075b-MAL-ED          PERU                           2                           1        5     99
15-18 months   ki0047075b-MAL-ED          PERU                           3                           0       32     99
15-18 months   ki0047075b-MAL-ED          PERU                           3                           1       13     99
15-18 months   ki0047075b-MAL-ED          PERU                           4                           0       21     99
15-18 months   ki0047075b-MAL-ED          PERU                           4                           1        4     99
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       12    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       21    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        2    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       38    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        3    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       42    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        5    124
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        4     67
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        4     67
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       11     67
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        5     67
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       15     67
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        6     67
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       16     67
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1        6     67
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        8     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        2     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        4     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        2     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        2     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        1     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        1     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        0     20
15-18 months   ki1000108-IRC              INDIA                          1                           0        3      5
15-18 months   ki1000108-IRC              INDIA                          1                           1        0      5
15-18 months   ki1000108-IRC              INDIA                          2                           0        1      5
15-18 months   ki1000108-IRC              INDIA                          2                           1        1      5
15-18 months   ki1000108-IRC              INDIA                          3                           0        0      5
15-18 months   ki1000108-IRC              INDIA                          3                           1        0      5
15-18 months   ki1000108-IRC              INDIA                          4                           0        0      5
15-18 months   ki1000108-IRC              INDIA                          4                           1        0      5
15-18 months   ki1000109-EE               PAKISTAN                       1                           0        0      7
15-18 months   ki1000109-EE               PAKISTAN                       1                           1        0      7
15-18 months   ki1000109-EE               PAKISTAN                       2                           0        1      7
15-18 months   ki1000109-EE               PAKISTAN                       2                           1        0      7
15-18 months   ki1000109-EE               PAKISTAN                       3                           0        4      7
15-18 months   ki1000109-EE               PAKISTAN                       3                           1        1      7
15-18 months   ki1000109-EE               PAKISTAN                       4                           0        1      7
15-18 months   ki1000109-EE               PAKISTAN                       4                           1        0      7
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       56    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1        8    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       71    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1        9    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0       73    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        6    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       64    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        1    288
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      118    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       19    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      100    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       19    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      175    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       22    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      261    730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       16    730
15-18 months   ki1101329-Keneba           GAMBIA                         1                           0      101    341
15-18 months   ki1101329-Keneba           GAMBIA                         1                           1       15    341
15-18 months   ki1101329-Keneba           GAMBIA                         2                           0       81    341
15-18 months   ki1101329-Keneba           GAMBIA                         2                           1       13    341
15-18 months   ki1101329-Keneba           GAMBIA                         3                           0       76    341
15-18 months   ki1101329-Keneba           GAMBIA                         3                           1        5    341
15-18 months   ki1101329-Keneba           GAMBIA                         4                           0       48    341
15-18 months   ki1101329-Keneba           GAMBIA                         4                           1        2    341
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           0        0     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           1        2     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           0        3     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           1        0     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           0        5     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           1        0     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           0       11     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           1        2     23
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        1      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        1      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        0      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        0      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      3
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        1      3
15-18 months   ki1114097-CMIN             BANGLADESH                     1                           0        8     69
15-18 months   ki1114097-CMIN             BANGLADESH                     1                           1        9     69
15-18 months   ki1114097-CMIN             BANGLADESH                     2                           0       18     69
15-18 months   ki1114097-CMIN             BANGLADESH                     2                           1        6     69
15-18 months   ki1114097-CMIN             BANGLADESH                     3                           0       16     69
15-18 months   ki1114097-CMIN             BANGLADESH                     3                           1        3     69
15-18 months   ki1114097-CMIN             BANGLADESH                     4                           0        8     69
15-18 months   ki1114097-CMIN             BANGLADESH                     4                           1        1     69
15-18 months   ki1114097-CMIN             PERU                           1                           0        6    373
15-18 months   ki1114097-CMIN             PERU                           1                           1        2    373
15-18 months   ki1114097-CMIN             PERU                           2                           0       21    373
15-18 months   ki1114097-CMIN             PERU                           2                           1        6    373
15-18 months   ki1114097-CMIN             PERU                           3                           0       78    373
15-18 months   ki1114097-CMIN             PERU                           3                           1       10    373
15-18 months   ki1114097-CMIN             PERU                           4                           0      226    373
15-18 months   ki1114097-CMIN             PERU                           4                           1       24    373
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0       13    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        0    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       37    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        6    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       37    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1        5    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0        5    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        1    104
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       13    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       38    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        0    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       61    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        0    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       28    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        0    140
18-21 months   ki0047075b-MAL-ED          INDIA                          1                           0       34    105
18-21 months   ki0047075b-MAL-ED          INDIA                          1                           1        4    105
18-21 months   ki0047075b-MAL-ED          INDIA                          2                           0       40    105
18-21 months   ki0047075b-MAL-ED          INDIA                          2                           1        4    105
18-21 months   ki0047075b-MAL-ED          INDIA                          3                           0       19    105
18-21 months   ki0047075b-MAL-ED          INDIA                          3                           1        2    105
18-21 months   ki0047075b-MAL-ED          INDIA                          4                           0        2    105
18-21 months   ki0047075b-MAL-ED          INDIA                          4                           1        0    105
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                           0       38    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                           1        7    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                           0       54    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                           1        5    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                           0       47    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                           1        3    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                           0       15    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                           1        1    170
18-21 months   ki0047075b-MAL-ED          PERU                           1                           0        8     78
18-21 months   ki0047075b-MAL-ED          PERU                           1                           1        3     78
18-21 months   ki0047075b-MAL-ED          PERU                           2                           0       17     78
18-21 months   ki0047075b-MAL-ED          PERU                           2                           1        1     78
18-21 months   ki0047075b-MAL-ED          PERU                           3                           0       25     78
18-21 months   ki0047075b-MAL-ED          PERU                           3                           1        8     78
18-21 months   ki0047075b-MAL-ED          PERU                           4                           0       15     78
18-21 months   ki0047075b-MAL-ED          PERU                           4                           1        1     78
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0        7    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       18    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        0    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       30    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        6    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       43    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        4    109
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        3     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        1     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0        5     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        7     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0        9     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        3     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       17     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1        5     50
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        5     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        1     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        3     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        3     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        3     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        2     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        2     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     20
18-21 months   ki1000108-IRC              INDIA                          1                           0        4      4
18-21 months   ki1000108-IRC              INDIA                          1                           1        0      4
18-21 months   ki1000108-IRC              INDIA                          2                           0        0      4
18-21 months   ki1000108-IRC              INDIA                          2                           1        0      4
18-21 months   ki1000108-IRC              INDIA                          3                           0        0      4
18-21 months   ki1000108-IRC              INDIA                          3                           1        0      4
18-21 months   ki1000108-IRC              INDIA                          4                           0        0      4
18-21 months   ki1000108-IRC              INDIA                          4                           1        0      4
18-21 months   ki1000109-EE               PAKISTAN                       1                           0        2      8
18-21 months   ki1000109-EE               PAKISTAN                       1                           1        1      8
18-21 months   ki1000109-EE               PAKISTAN                       2                           0        1      8
18-21 months   ki1000109-EE               PAKISTAN                       2                           1        0      8
18-21 months   ki1000109-EE               PAKISTAN                       3                           0        2      8
18-21 months   ki1000109-EE               PAKISTAN                       3                           1        1      8
18-21 months   ki1000109-EE               PAKISTAN                       4                           0        1      8
18-21 months   ki1000109-EE               PAKISTAN                       4                           1        0      8
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       52    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1       10    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       64    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1        7    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0       54    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        0    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       58    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        2    247
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0       99    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       10    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0       93    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1        4    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      124    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1        8    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      199    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1        9    546
18-21 months   ki1101329-Keneba           GAMBIA                         1                           0       94    342
18-21 months   ki1101329-Keneba           GAMBIA                         1                           1       14    342
18-21 months   ki1101329-Keneba           GAMBIA                         2                           0       88    342
18-21 months   ki1101329-Keneba           GAMBIA                         2                           1        9    342
18-21 months   ki1101329-Keneba           GAMBIA                         3                           0       69    342
18-21 months   ki1101329-Keneba           GAMBIA                         3                           1       11    342
18-21 months   ki1101329-Keneba           GAMBIA                         4                           0       56    342
18-21 months   ki1101329-Keneba           GAMBIA                         4                           1        1    342
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        2      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        0      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        1      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        1      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      4
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        0      4
18-21 months   ki1114097-CMIN             BANGLADESH                     1                           0       10     55
18-21 months   ki1114097-CMIN             BANGLADESH                     1                           1        7     55
18-21 months   ki1114097-CMIN             BANGLADESH                     2                           0       10     55
18-21 months   ki1114097-CMIN             BANGLADESH                     2                           1        3     55
18-21 months   ki1114097-CMIN             BANGLADESH                     3                           0       10     55
18-21 months   ki1114097-CMIN             BANGLADESH                     3                           1        5     55
18-21 months   ki1114097-CMIN             BANGLADESH                     4                           0        6     55
18-21 months   ki1114097-CMIN             BANGLADESH                     4                           1        4     55
18-21 months   ki1114097-CMIN             PERU                           1                           0        3    300
18-21 months   ki1114097-CMIN             PERU                           1                           1        1    300
18-21 months   ki1114097-CMIN             PERU                           2                           0       14    300
18-21 months   ki1114097-CMIN             PERU                           2                           1        6    300
18-21 months   ki1114097-CMIN             PERU                           3                           0       45    300
18-21 months   ki1114097-CMIN             PERU                           3                           1       12    300
18-21 months   ki1114097-CMIN             PERU                           4                           0      207    300
18-21 months   ki1114097-CMIN             PERU                           4                           1       12    300
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0       10     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        0     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       31     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        7     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       36     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1        4     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0        6     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        0     94
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       15    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       32    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        0    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       56    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        1    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       29    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        0    133
21-24 months   ki0047075b-MAL-ED          INDIA                          1                           0       29     94
21-24 months   ki0047075b-MAL-ED          INDIA                          1                           1        2     94
21-24 months   ki0047075b-MAL-ED          INDIA                          2                           0       37     94
21-24 months   ki0047075b-MAL-ED          INDIA                          2                           1        4     94
21-24 months   ki0047075b-MAL-ED          INDIA                          3                           0       19     94
21-24 months   ki0047075b-MAL-ED          INDIA                          3                           1        1     94
21-24 months   ki0047075b-MAL-ED          INDIA                          4                           0        2     94
21-24 months   ki0047075b-MAL-ED          INDIA                          4                           1        0     94
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                           0       37    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                           1        3    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                           0       55    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                           1        4    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                           0       45    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                           1        2    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                           0       12    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                           1        2    160
21-24 months   ki0047075b-MAL-ED          PERU                           1                           0        4     65
21-24 months   ki0047075b-MAL-ED          PERU                           1                           1        3     65
21-24 months   ki0047075b-MAL-ED          PERU                           2                           0       16     65
21-24 months   ki0047075b-MAL-ED          PERU                           2                           1        0     65
21-24 months   ki0047075b-MAL-ED          PERU                           3                           0       29     65
21-24 months   ki0047075b-MAL-ED          PERU                           3                           1        1     65
21-24 months   ki0047075b-MAL-ED          PERU                           4                           0       12     65
21-24 months   ki0047075b-MAL-ED          PERU                           4                           1        0     65
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0        7    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       12    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        1    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       29    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        1    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       46    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        7    104
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        0     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        5     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0        5     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        3     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       12     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        1     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       12     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1        1     39
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        2     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        2     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        1     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        3     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        3     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        3     15
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
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       51    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1        6    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       54    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1        2    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0       48    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        3    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       50    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        3    217
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0        1      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1        0      1
21-24 months   ki1101329-Keneba           GAMBIA                         1                           0       80    316
21-24 months   ki1101329-Keneba           GAMBIA                         1                           1       14    316
21-24 months   ki1101329-Keneba           GAMBIA                         2                           0       82    316
21-24 months   ki1101329-Keneba           GAMBIA                         2                           1       10    316
21-24 months   ki1101329-Keneba           GAMBIA                         3                           0       80    316
21-24 months   ki1101329-Keneba           GAMBIA                         3                           1        9    316
21-24 months   ki1101329-Keneba           GAMBIA                         4                           0       37    316
21-24 months   ki1101329-Keneba           GAMBIA                         4                           1        4    316
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        1      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        3      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        0      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        0      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      4
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        0      4
21-24 months   ki1114097-CMIN             BANGLADESH                     1                           0        8     42
21-24 months   ki1114097-CMIN             BANGLADESH                     1                           1        0     42
21-24 months   ki1114097-CMIN             BANGLADESH                     2                           0        9     42
21-24 months   ki1114097-CMIN             BANGLADESH                     2                           1        5     42
21-24 months   ki1114097-CMIN             BANGLADESH                     3                           0        7     42
21-24 months   ki1114097-CMIN             BANGLADESH                     3                           1        2     42
21-24 months   ki1114097-CMIN             BANGLADESH                     4                           0       10     42
21-24 months   ki1114097-CMIN             BANGLADESH                     4                           1        1     42
21-24 months   ki1114097-CMIN             PERU                           1                           0        1    246
21-24 months   ki1114097-CMIN             PERU                           1                           1        1    246
21-24 months   ki1114097-CMIN             PERU                           2                           0       16    246
21-24 months   ki1114097-CMIN             PERU                           2                           1        2    246
21-24 months   ki1114097-CMIN             PERU                           3                           0       28    246
21-24 months   ki1114097-CMIN             PERU                           3                           1        7    246
21-24 months   ki1114097-CMIN             PERU                           4                           0      185    246
21-24 months   ki1114097-CMIN             PERU                           4                           1        6    246


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
* agecat: 15-18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 21-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 3-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 3-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 21-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/7794434b-a33e-4208-89d5-7d480d8ff631/bfb2b61e-a8e7-4918-9494-14e87657e758/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7794434b-a33e-4208-89d5-7d480d8ff631/bfb2b61e-a8e7-4918-9494-14e87657e758/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7794434b-a33e-4208-89d5-7d480d8ff631/bfb2b61e-a8e7-4918-9494-14e87657e758/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7794434b-a33e-4208-89d5-7d480d8ff631/bfb2b61e-a8e7-4918-9494-14e87657e758/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1545064   0.1080541   0.2009587
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1346154   0.0810053   0.1882254
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1801802   0.1086140   0.2517464
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.2500000   0.0998303   0.4001697
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1173963   0.0906152   0.1441774
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1002161   0.0733015   0.1271308
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1307459   0.0997835   0.1617083
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1506271   0.1214895   0.1797647
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.1906327   0.1281745   0.2530909
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.2201927   0.1463101   0.2940753
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                0.1518928   0.0995812   0.2042045
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                0.1835231   0.1324458   0.2346004
3-6 months     ki1114097-CMIN             PERU                           1                    NA                0.1391304   0.0758228   0.2024381
3-6 months     ki1114097-CMIN             PERU                           2                    NA                0.0508475   0.0111752   0.0905197
3-6 months     ki1114097-CMIN             PERU                           3                    NA                0.0512821   0.0166391   0.0859250
3-6 months     ki1114097-CMIN             PERU                           4                    NA                0.0748663   0.0371134   0.1126192
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                0.2380952   0.0553827   0.4208078
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                0.1538462   0.0402698   0.2674225
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                0.0983607   0.0234033   0.1733181
6-9 months     ki0047075b-MAL-ED          PERU                           4                    NA                0.1086957   0.0184778   0.1989135
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1818182   0.0498426   0.3137937
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.1388889   0.0255917   0.2521860
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.0909091   0.0147130   0.1671052
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.1020408   0.0170398   0.1870418
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3478261   0.1525759   0.5430763
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2631579   0.1227161   0.4035997
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2448980   0.1241193   0.3656766
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2884615   0.1649424   0.4119806
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1448078   0.1121213   0.1774943
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1355167   0.0988518   0.1721816
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1131089   0.0832499   0.1429679
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0856979   0.0604761   0.1109197
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.1084337   0.0610940   0.1557735
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.1311475   0.0821980   0.1800971
6-9 months     ki1101329-Keneba           GAMBIA                         3                    NA                0.1120000   0.0566674   0.1673326
6-9 months     ki1101329-Keneba           GAMBIA                         4                    NA                0.0550459   0.0121935   0.0978983
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2692308   0.1483319   0.3901296
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.4081633   0.2701594   0.5461672
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.3333333   0.1789096   0.4877570
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.1219512   0.0215054   0.2223971
6-9 months     ki1114097-CMIN             PERU                           1                    NA                0.1076923   0.0322656   0.1831190
6-9 months     ki1114097-CMIN             PERU                           2                    NA                0.0824742   0.0276826   0.1372659
6-9 months     ki1114097-CMIN             PERU                           3                    NA                0.0647482   0.0238030   0.1056934
6-9 months     ki1114097-CMIN             PERU                           4                    NA                0.0716981   0.0406091   0.1027872
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3333333   0.0938583   0.5728083
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3939394   0.2265886   0.5612902
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2380952   0.1087909   0.3673996
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3414634   0.1957558   0.4871710
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1354186   0.0971781   0.1736590
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0947115   0.0605853   0.1288376
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1010278   0.0680652   0.1339904
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0683590   0.0433131   0.0934049
9-12 months    ki1114097-CMIN             PERU                           1                    NA                0.3554021   0.1930324   0.5177717
9-12 months    ki1114097-CMIN             PERU                           2                    NA                0.2507711   0.1433810   0.3581612
9-12 months    ki1114097-CMIN             PERU                           3                    NA                0.0979537   0.0419649   0.1539426
9-12 months    ki1114097-CMIN             PERU                           4                    NA                0.0928782   0.0599607   0.1257957
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5454545   0.2495900   0.8413191
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4000000   0.1841202   0.6158798
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3125000   0.1510241   0.4739759
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3793103   0.2017455   0.5568752
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1182577   0.0721791   0.1643362
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0785367   0.0405504   0.1165230
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0760019   0.0414966   0.1105072
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0476709   0.0249226   0.0704193
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1269841   0.0687747   0.1851936
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0636364   0.0179621   0.1093106
12-15 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.0849057   0.0317755   0.1380358
12-15 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1052632   0.0254928   0.1850335
12-15 months   ki1114097-CMIN             PERU                           1                    NA                0.3333333   0.1153183   0.5513484
12-15 months   ki1114097-CMIN             PERU                           2                    NA                0.2037037   0.0961640   0.3112434
12-15 months   ki1114097-CMIN             PERU                           3                    NA                0.1400000   0.0719164   0.2080836
12-15 months   ki1114097-CMIN             PERU                           4                    NA                0.0892857   0.0558483   0.1227231
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1378141   0.0792158   0.1964124
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1556144   0.0891398   0.2220891
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1100838   0.0658228   0.1543447
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0571161   0.0295346   0.0846977


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1597744   0.1286105   0.1909384
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1258405   0.1115904   0.1400906
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.1775417   0.1483445   0.2067390
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                0.0763889   0.0546782   0.0980996
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.1317365   0.0802880   0.1831851
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1213873   0.0725817   0.1701928
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2777778   0.2085916   0.3469640
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1173317   0.1019339   0.1327295
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.1063465   0.0813008   0.1313922
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2865169   0.2199085   0.3531252
6-9 months     ki1114097-CMIN             PERU                           NA                   NA                0.0759717   0.0541247   0.0978188
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3206107   0.2403829   0.4008385
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0962733   0.0801583   0.1123883
9-12 months    ki1114097-CMIN             PERU                           NA                   NA                0.1329480   0.1037100   0.1621859
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3804348   0.2806852   0.4801843
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0740741   0.0573677   0.0907805
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0952381   0.0663992   0.1240770
12-15 months   ki1114097-CMIN             PERU                           NA                   NA                0.1238938   0.0934875   0.1543001
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1041096   0.0819400   0.1262792


### Parameter: RR


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8712607   0.5289808   1.4350147
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                 1.1661662   0.7086264   1.9191263
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    1                 1.6180556   0.8265516   3.1675018
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8536565   0.6001169   1.2143124
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1137138   0.8015107   1.5475257
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.2830650   0.9513433   1.7304540
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 1.1550625   0.7226017   1.8463413
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                 0.7967826   0.4954791   1.2813102
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                 0.9627049   0.6260978   1.4802811
3-6 months     ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1114097-CMIN             PERU                           2                    1                 0.3654661   0.1481109   0.9017935
3-6 months     ki1114097-CMIN             PERU                           3                    1                 0.3685897   0.1632353   0.8322857
3-6 months     ki1114097-CMIN             PERU                           4                    1                 0.5381016   0.2728250   1.0613152
6-9 months     ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           2                    1                 0.6461538   0.2227813   1.8741015
6-9 months     ki0047075b-MAL-ED          PERU                           3                    1                 0.4131148   0.1400820   1.2183139
6-9 months     ki0047075b-MAL-ED          PERU                           4                    1                 0.4565217   0.1474131   1.4137963
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.7638889   0.2563368   2.2764049
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.5000000   0.1649810   1.5153263
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.5612245   0.1859037   1.6942799
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7565789   0.3487173   1.6414778
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7040816   0.3335115   1.4863985
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8293269   0.4093603   1.6801412
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9358384   0.6578870   1.3312218
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7810970   0.5519324   1.1054116
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5918043   0.4083735   0.8576274
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                 1.2094718   0.6810003   2.1480491
6-9 months     ki1101329-Keneba           GAMBIA                         3                    1                 1.0328889   0.5342237   1.9970277
6-9 months     ki1101329-Keneba           GAMBIA                         4                    1                 0.5076453   0.2079372   1.2393344
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 1.5160350   0.8641484   2.6596843
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 1.2380952   0.6494595   2.3602392
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.4529617   0.1772735   1.1573883
6-9 months     ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki1114097-CMIN             PERU                           2                    1                 0.7658321   0.2916662   2.0108566
6-9 months     ki1114097-CMIN             PERU                           3                    1                 0.6012333   0.2340064   1.5447503
6-9 months     ki1114097-CMIN             PERU                           4                    1                 0.6657682   0.2921276   1.5173070
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1818182   0.5129524   2.7228534
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7142857   0.2902346   1.7579022
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0243902   0.4441921   2.3624360
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6993979   0.4424662   1.1055247
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7460409   0.4843184   1.1491966
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5047979   0.3178016   0.8018239
9-12 months    ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    ki1114097-CMIN             PERU                           2                    1                 0.7055983   0.3774006   1.3192056
9-12 months    ki1114097-CMIN             PERU                           3                    1                 0.2756139   0.1327505   0.5722239
9-12 months    ki1114097-CMIN             PERU                           4                    1                 0.2613326   0.1465965   0.4658689
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7333333   0.3411851   1.5762053
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.5729167   0.2708578   1.2118296
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.6954023   0.3396786   1.4236529
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6641153   0.3567984   1.2361296
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6426804   0.3531213   1.1696776
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4031107   0.2176226   0.7466976
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.5011364   0.2138437   1.1743982
12-15 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.6686321   0.3078279   1.4523340
12-15 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.8289474   0.3418878   2.0098808
12-15 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki1114097-CMIN             PERU                           2                    1                 0.6111111   0.2636854   1.4162967
12-15 months   ki1114097-CMIN             PERU                           3                    1                 0.4200000   0.1859030   0.9488821
12-15 months   ki1114097-CMIN             PERU                           4                    1                 0.2678571   0.1260628   0.5691407
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1291618   0.6178046   2.0637696
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7987842   0.4448169   1.4344246
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4144433   0.2177946   0.7886481


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0052680   -0.0299299    0.0404659
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0084442   -0.0147114    0.0315999
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0130910   -0.0677623    0.0415803
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0627415   -0.1163965   -0.0090866
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.1063587   -0.2725961    0.0598787
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0604309   -0.1751248    0.0542630
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0700483   -0.2491696    0.1090729
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0274761   -0.0546898   -0.0002623
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0020873   -0.0419887    0.0378142
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0172861   -0.0852478    0.1198200
6-9 months     ki1114097-CMIN             PERU                           1                    NA                -0.0317206   -0.1014327    0.0379915
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0127226   -0.2377817    0.2123364
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0391453   -0.0712405   -0.0070500
9-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.2224541   -0.3759891   -0.0689191
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1650198   -0.4417025    0.1116629
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0441836   -0.0836979   -0.0046693
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0317460   -0.0773533    0.0138612
12-15 months   ki1114097-CMIN             PERU                           1                    NA                -0.2094395   -0.4207911    0.0019121
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0337045   -0.0851851    0.0177760


### Parameter: PAF


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0329715   -0.2143632    0.2299304
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0671026   -0.1361890    0.2340204
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0737347   -0.4303841    0.1939884
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.8213439   -1.6380485   -0.2574801
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.8073593   -2.5971848    0.0919155
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.4978355   -1.7912392    0.1962311
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2521739   -1.0954428    0.2517384
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2341742   -0.4877776   -0.0237994
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0196269   -0.4731399    0.2942700
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0603318   -0.3751187    0.3578909
6-9 months     ki1114097-CMIN             PERU                           1                    NA                -0.4175313   -1.6965668    0.2548321
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0396825   -1.0423300    0.4707321
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4066057   -0.7771926   -0.1132950
9-12 months    ki1114097-CMIN             PERU                           1                    NA                -1.6732418   -3.0856128   -0.7491186
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4337662   -1.3922951    0.1407057
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5964787   -1.2131840   -0.1516188
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3333333   -0.8984803    0.0635785
12-15 months   ki1114097-CMIN             PERU                           1                    NA                -1.6904762   -4.0494250   -0.4335617
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3237409   -0.9173955    0.0861092

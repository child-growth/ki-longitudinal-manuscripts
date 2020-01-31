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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        lag_WHZ_quart    ever_stunted   n_cell      n  outcome_variable 
-------------  -------------------------  -----------------------------  --------------  -------------  -------  -----  -----------------
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                           0       30    207  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                           1        4    207  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                           0       79    207  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                           1       11    207  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                           0       61    207  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                           1       13    207  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                           0        9    207  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                           1        0    207  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                           0       33    197  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                           1        2    197  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                           0       86    197  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                           1        5    197  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                           0       56    197  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                           1        3    197  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                           0        9    197  ever_stunted     
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                           1        3    197  ever_stunted     
3-6 months     ki0047075b-MAL-ED          INDIA                          1                           0       87    200  ever_stunted     
3-6 months     ki0047075b-MAL-ED          INDIA                          1                           1       17    200  ever_stunted     
3-6 months     ki0047075b-MAL-ED          INDIA                          2                           0       64    200  ever_stunted     
3-6 months     ki0047075b-MAL-ED          INDIA                          2                           1       11    200  ever_stunted     
3-6 months     ki0047075b-MAL-ED          INDIA                          3                           0       13    200  ever_stunted     
3-6 months     ki0047075b-MAL-ED          INDIA                          3                           1        8    200  ever_stunted     
3-6 months     ki0047075b-MAL-ED          INDIA                          4                           0        0    200  ever_stunted     
3-6 months     ki0047075b-MAL-ED          INDIA                          4                           1        0    200  ever_stunted     
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                           0       68    209  ever_stunted     
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                           1        1    209  ever_stunted     
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                           0       75    209  ever_stunted     
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                           1        2    209  ever_stunted     
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                           0       49    209  ever_stunted     
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                           1        1    209  ever_stunted     
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                           0       12    209  ever_stunted     
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                           1        1    209  ever_stunted     
3-6 months     ki0047075b-MAL-ED          PERU                           1                           0        9    248  ever_stunted     
3-6 months     ki0047075b-MAL-ED          PERU                           1                           1        4    248  ever_stunted     
3-6 months     ki0047075b-MAL-ED          PERU                           2                           0       18    248  ever_stunted     
3-6 months     ki0047075b-MAL-ED          PERU                           2                           1       13    248  ever_stunted     
3-6 months     ki0047075b-MAL-ED          PERU                           3                           0       67    248  ever_stunted     
3-6 months     ki0047075b-MAL-ED          PERU                           3                           1       24    248  ever_stunted     
3-6 months     ki0047075b-MAL-ED          PERU                           4                           0       84    248  ever_stunted     
3-6 months     ki0047075b-MAL-ED          PERU                           4                           1       29    248  ever_stunted     
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       23    239  ever_stunted     
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        3    239  ever_stunted     
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       51    239  ever_stunted     
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1       15    239  ever_stunted     
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       57    239  ever_stunted     
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1       17    239  ever_stunted     
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       50    239  ever_stunted     
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1       23    239  ever_stunted     
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       12    215  ever_stunted     
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        5    215  ever_stunted     
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       45    215  ever_stunted     
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1       12    215  ever_stunted     
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       61    215  ever_stunted     
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       13    215  ever_stunted     
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       45    215  ever_stunted     
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       22    215  ever_stunted     
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        5     22  ever_stunted     
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        4     22  ever_stunted     
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        2     22  ever_stunted     
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        2     22  ever_stunted     
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        6     22  ever_stunted     
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        2     22  ever_stunted     
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        1     22  ever_stunted     
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        0     22  ever_stunted     
3-6 months     ki1000108-IRC              INDIA                          1                           0        0      2  ever_stunted     
3-6 months     ki1000108-IRC              INDIA                          1                           1        0      2  ever_stunted     
3-6 months     ki1000108-IRC              INDIA                          2                           0        0      2  ever_stunted     
3-6 months     ki1000108-IRC              INDIA                          2                           1        0      2  ever_stunted     
3-6 months     ki1000108-IRC              INDIA                          3                           0        2      2  ever_stunted     
3-6 months     ki1000108-IRC              INDIA                          3                           1        0      2  ever_stunted     
3-6 months     ki1000108-IRC              INDIA                          4                           0        0      2  ever_stunted     
3-6 months     ki1000108-IRC              INDIA                          4                           1        0      2  ever_stunted     
3-6 months     ki1000109-ResPak           PAKISTAN                       1                           0       52    192  ever_stunted     
3-6 months     ki1000109-ResPak           PAKISTAN                       1                           1       17    192  ever_stunted     
3-6 months     ki1000109-ResPak           PAKISTAN                       2                           0       24    192  ever_stunted     
3-6 months     ki1000109-ResPak           PAKISTAN                       2                           1       10    192  ever_stunted     
3-6 months     ki1000109-ResPak           PAKISTAN                       3                           0       25    192  ever_stunted     
3-6 months     ki1000109-ResPak           PAKISTAN                       3                           1       14    192  ever_stunted     
3-6 months     ki1000109-ResPak           PAKISTAN                       4                           0       14    192  ever_stunted     
3-6 months     ki1000109-ResPak           PAKISTAN                       4                           1       36    192  ever_stunted     
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                           0      169    532  ever_stunted     
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                           1       33    532  ever_stunted     
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                           0      133    532  ever_stunted     
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                           1       20    532  ever_stunted     
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                           0      111    532  ever_stunted     
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                           1       22    532  ever_stunted     
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                           0       34    532  ever_stunted     
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                           1       10    532  ever_stunted     
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      416   2082  ever_stunted     
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       54   2082  ever_stunted     
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      391   2082  ever_stunted     
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       48   2082  ever_stunted     
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      434   2082  ever_stunted     
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       58   2082  ever_stunted     
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      579   2082  ever_stunted     
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1      102   2082  ever_stunted     
3-6 months     ki1101329-Keneba           GAMBIA                         1                           0      162    673  ever_stunted     
3-6 months     ki1101329-Keneba           GAMBIA                         1                           1       39    673  ever_stunted     
3-6 months     ki1101329-Keneba           GAMBIA                         2                           0      139    673  ever_stunted     
3-6 months     ki1101329-Keneba           GAMBIA                         2                           1       21    673  ever_stunted     
3-6 months     ki1101329-Keneba           GAMBIA                         3                           0      147    673  ever_stunted     
3-6 months     ki1101329-Keneba           GAMBIA                         3                           1       29    673  ever_stunted     
3-6 months     ki1101329-Keneba           GAMBIA                         4                           0      108    673  ever_stunted     
3-6 months     ki1101329-Keneba           GAMBIA                         4                           1       28    673  ever_stunted     
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           0        0      8  ever_stunted     
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           1        2      8  ever_stunted     
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           0        4      8  ever_stunted     
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           1        0      8  ever_stunted     
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           0        2      8  ever_stunted     
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           1        0      8  ever_stunted     
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           0        0      8  ever_stunted     
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           1        0      8  ever_stunted     
3-6 months     ki1114097-CMIN             BANGLADESH                     1                           0       40    159  ever_stunted     
3-6 months     ki1114097-CMIN             BANGLADESH                     1                           1       15    159  ever_stunted     
3-6 months     ki1114097-CMIN             BANGLADESH                     2                           0       43    159  ever_stunted     
3-6 months     ki1114097-CMIN             BANGLADESH                     2                           1       11    159  ever_stunted     
3-6 months     ki1114097-CMIN             BANGLADESH                     3                           0       25    159  ever_stunted     
3-6 months     ki1114097-CMIN             BANGLADESH                     3                           1        9    159  ever_stunted     
3-6 months     ki1114097-CMIN             BANGLADESH                     4                           0       13    159  ever_stunted     
3-6 months     ki1114097-CMIN             BANGLADESH                     4                           1        3    159  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                           0       24    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                           1        2    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                           0       53    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                           1        7    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                           0       61    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                           1        5    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                           0       11    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                           1        2    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                           0       28    170  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                           1        1    170  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                           0       76    170  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                           1        1    170  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                           0       44    170  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                           1        0    170  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                           0       18    170  ever_stunted     
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                           1        2    170  ever_stunted     
6-9 months     ki0047075b-MAL-ED          INDIA                          1                           0       63    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          INDIA                          1                           1       14    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          INDIA                          2                           0       53    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          INDIA                          2                           1        5    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          INDIA                          3                           0       25    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          INDIA                          3                           1        2    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          INDIA                          4                           0        3    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          INDIA                          4                           1        0    165  ever_stunted     
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                           0       48    196  ever_stunted     
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                           1        1    196  ever_stunted     
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                           0       54    196  ever_stunted     
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                           1        2    196  ever_stunted     
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                           0       65    196  ever_stunted     
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                           1        2    196  ever_stunted     
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                           0       24    196  ever_stunted     
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                           1        0    196  ever_stunted     
6-9 months     ki0047075b-MAL-ED          PERU                           1                           0        9    167  ever_stunted     
6-9 months     ki0047075b-MAL-ED          PERU                           1                           1        1    167  ever_stunted     
6-9 months     ki0047075b-MAL-ED          PERU                           2                           0       17    167  ever_stunted     
6-9 months     ki0047075b-MAL-ED          PERU                           2                           1        9    167  ever_stunted     
6-9 months     ki0047075b-MAL-ED          PERU                           3                           0       50    167  ever_stunted     
6-9 months     ki0047075b-MAL-ED          PERU                           3                           1        4    167  ever_stunted     
6-9 months     ki0047075b-MAL-ED          PERU                           4                           0       69    167  ever_stunted     
6-9 months     ki0047075b-MAL-ED          PERU                           4                           1        8    167  ever_stunted     
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       24    172  ever_stunted     
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        5    172  ever_stunted     
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       30    172  ever_stunted     
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        5    172  ever_stunted     
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       49    172  ever_stunted     
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        6    172  ever_stunted     
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       47    172  ever_stunted     
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        6    172  ever_stunted     
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       13    162  ever_stunted     
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        7    162  ever_stunted     
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       25    162  ever_stunted     
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1       11    162  ever_stunted     
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       39    162  ever_stunted     
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       12    162  ever_stunted     
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       40    162  ever_stunted     
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       15    162  ever_stunted     
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        8     22  ever_stunted     
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        1     22  ever_stunted     
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        4     22  ever_stunted     
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        2     22  ever_stunted     
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        5     22  ever_stunted     
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        2     22  ever_stunted     
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        0     22  ever_stunted     
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        0     22  ever_stunted     
6-9 months     ki1000108-IRC              INDIA                          1                           0        0      3  ever_stunted     
6-9 months     ki1000108-IRC              INDIA                          1                           1        0      3  ever_stunted     
6-9 months     ki1000108-IRC              INDIA                          2                           0        3      3  ever_stunted     
6-9 months     ki1000108-IRC              INDIA                          2                           1        0      3  ever_stunted     
6-9 months     ki1000108-IRC              INDIA                          3                           0        0      3  ever_stunted     
6-9 months     ki1000108-IRC              INDIA                          3                           1        0      3  ever_stunted     
6-9 months     ki1000108-IRC              INDIA                          4                           0        0      3  ever_stunted     
6-9 months     ki1000108-IRC              INDIA                          4                           1        0      3  ever_stunted     
6-9 months     ki1000109-ResPak           PAKISTAN                       1                           0       38    101  ever_stunted     
6-9 months     ki1000109-ResPak           PAKISTAN                       1                           1        6    101  ever_stunted     
6-9 months     ki1000109-ResPak           PAKISTAN                       2                           0       17    101  ever_stunted     
6-9 months     ki1000109-ResPak           PAKISTAN                       2                           1        2    101  ever_stunted     
6-9 months     ki1000109-ResPak           PAKISTAN                       3                           0       21    101  ever_stunted     
6-9 months     ki1000109-ResPak           PAKISTAN                       3                           1        2    101  ever_stunted     
6-9 months     ki1000109-ResPak           PAKISTAN                       4                           0       12    101  ever_stunted     
6-9 months     ki1000109-ResPak           PAKISTAN                       4                           1        3    101  ever_stunted     
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                           0        6     31  ever_stunted     
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                           1        2     31  ever_stunted     
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                           0        7     31  ever_stunted     
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                           1        0     31  ever_stunted     
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                           0        8     31  ever_stunted     
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                           1        1     31  ever_stunted     
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4                           0        7     31  ever_stunted     
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4                           1        0     31  ever_stunted     
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      364   1679  ever_stunted     
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       61   1679  ever_stunted     
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      285   1679  ever_stunted     
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       46   1679  ever_stunted     
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      386   1679  ever_stunted     
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       48   1679  ever_stunted     
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      447   1679  ever_stunted     
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       42   1679  ever_stunted     
6-9 months     ki1101329-Keneba           GAMBIA                         1                           0      140    592  ever_stunted     
6-9 months     ki1101329-Keneba           GAMBIA                         1                           1       18    592  ever_stunted     
6-9 months     ki1101329-Keneba           GAMBIA                         2                           0      158    592  ever_stunted     
6-9 months     ki1101329-Keneba           GAMBIA                         2                           1       25    592  ever_stunted     
6-9 months     ki1101329-Keneba           GAMBIA                         3                           0      119    592  ever_stunted     
6-9 months     ki1101329-Keneba           GAMBIA                         3                           1       13    592  ever_stunted     
6-9 months     ki1101329-Keneba           GAMBIA                         4                           0      111    592  ever_stunted     
6-9 months     ki1101329-Keneba           GAMBIA                         4                           1        8    592  ever_stunted     
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           0       38    180  ever_stunted     
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           1       13    180  ever_stunted     
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           0       28    180  ever_stunted     
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           1       20    180  ever_stunted     
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           0       26    180  ever_stunted     
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           1       13    180  ever_stunted     
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           0       37    180  ever_stunted     
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           1        5    180  ever_stunted     
6-9 months     ki1114097-CMIN             BANGLADESH                     1                           0       44    121  ever_stunted     
6-9 months     ki1114097-CMIN             BANGLADESH                     1                           1       11    121  ever_stunted     
6-9 months     ki1114097-CMIN             BANGLADESH                     2                           0       26    121  ever_stunted     
6-9 months     ki1114097-CMIN             BANGLADESH                     2                           1        4    121  ever_stunted     
6-9 months     ki1114097-CMIN             BANGLADESH                     3                           0       22    121  ever_stunted     
6-9 months     ki1114097-CMIN             BANGLADESH                     3                           1        3    121  ever_stunted     
6-9 months     ki1114097-CMIN             BANGLADESH                     4                           0        9    121  ever_stunted     
6-9 months     ki1114097-CMIN             BANGLADESH                     4                           1        2    121  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                           0       15    150  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                           1        3    150  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                           0       44    150  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                           1        6    150  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                           0       56    150  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                           1        5    150  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                           0       17    150  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                           1        4    150  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                           0       16    158  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                           1        0    158  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                           0       56    158  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                           1        0    158  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                           0       64    158  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                           1        1    158  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                           0       20    158  ever_stunted     
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                           1        1    158  ever_stunted     
9-12 months    ki0047075b-MAL-ED          INDIA                          1                           0       54    145  ever_stunted     
9-12 months    ki0047075b-MAL-ED          INDIA                          1                           1       11    145  ever_stunted     
9-12 months    ki0047075b-MAL-ED          INDIA                          2                           0       47    145  ever_stunted     
9-12 months    ki0047075b-MAL-ED          INDIA                          2                           1       12    145  ever_stunted     
9-12 months    ki0047075b-MAL-ED          INDIA                          3                           0       17    145  ever_stunted     
9-12 months    ki0047075b-MAL-ED          INDIA                          3                           1        2    145  ever_stunted     
9-12 months    ki0047075b-MAL-ED          INDIA                          4                           0        2    145  ever_stunted     
9-12 months    ki0047075b-MAL-ED          INDIA                          4                           1        0    145  ever_stunted     
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                           0       37    189  ever_stunted     
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                           1        1    189  ever_stunted     
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                           0       56    189  ever_stunted     
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                           1        2    189  ever_stunted     
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                           0       63    189  ever_stunted     
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                           1        2    189  ever_stunted     
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                           0       28    189  ever_stunted     
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                           1        0    189  ever_stunted     
9-12 months    ki0047075b-MAL-ED          PERU                           1                           0        9    134  ever_stunted     
9-12 months    ki0047075b-MAL-ED          PERU                           1                           1        1    134  ever_stunted     
9-12 months    ki0047075b-MAL-ED          PERU                           2                           0       22    134  ever_stunted     
9-12 months    ki0047075b-MAL-ED          PERU                           2                           1        4    134  ever_stunted     
9-12 months    ki0047075b-MAL-ED          PERU                           3                           0       33    134  ever_stunted     
9-12 months    ki0047075b-MAL-ED          PERU                           3                           1        8    134  ever_stunted     
9-12 months    ki0047075b-MAL-ED          PERU                           4                           0       52    134  ever_stunted     
9-12 months    ki0047075b-MAL-ED          PERU                           4                           1        5    134  ever_stunted     
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       19    147  ever_stunted     
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        3    147  ever_stunted     
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       30    147  ever_stunted     
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        2    147  ever_stunted     
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       46    147  ever_stunted     
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        2    147  ever_stunted     
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       39    147  ever_stunted     
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        6    147  ever_stunted     
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       10    130  ever_stunted     
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        5    130  ever_stunted     
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       14    130  ever_stunted     
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1       11    130  ever_stunted     
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       34    130  ever_stunted     
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       11    130  ever_stunted     
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       30    130  ever_stunted     
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       15    130  ever_stunted     
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        5     26  ever_stunted     
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        1     26  ever_stunted     
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        6     26  ever_stunted     
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        3     26  ever_stunted     
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        5     26  ever_stunted     
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        4     26  ever_stunted     
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        1     26  ever_stunted     
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     26  ever_stunted     
9-12 months    ki1000108-IRC              INDIA                          1                           0        1      4  ever_stunted     
9-12 months    ki1000108-IRC              INDIA                          1                           1        0      4  ever_stunted     
9-12 months    ki1000108-IRC              INDIA                          2                           0        3      4  ever_stunted     
9-12 months    ki1000108-IRC              INDIA                          2                           1        0      4  ever_stunted     
9-12 months    ki1000108-IRC              INDIA                          3                           0        0      4  ever_stunted     
9-12 months    ki1000108-IRC              INDIA                          3                           1        0      4  ever_stunted     
9-12 months    ki1000108-IRC              INDIA                          4                           0        0      4  ever_stunted     
9-12 months    ki1000108-IRC              INDIA                          4                           1        0      4  ever_stunted     
9-12 months    ki1000109-ResPak           PAKISTAN                       1                           0       33     85  ever_stunted     
9-12 months    ki1000109-ResPak           PAKISTAN                       1                           1        0     85  ever_stunted     
9-12 months    ki1000109-ResPak           PAKISTAN                       2                           0       19     85  ever_stunted     
9-12 months    ki1000109-ResPak           PAKISTAN                       2                           1        2     85  ever_stunted     
9-12 months    ki1000109-ResPak           PAKISTAN                       3                           0       16     85  ever_stunted     
9-12 months    ki1000109-ResPak           PAKISTAN                       3                           1        1     85  ever_stunted     
9-12 months    ki1000109-ResPak           PAKISTAN                       4                           0       13     85  ever_stunted     
9-12 months    ki1000109-ResPak           PAKISTAN                       4                           1        1     85  ever_stunted     
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                           0       24    113  ever_stunted     
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                           1        8    113  ever_stunted     
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                           0       22    113  ever_stunted     
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                           1        4    113  ever_stunted     
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                           0       22    113  ever_stunted     
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                           1        8    113  ever_stunted     
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                           0       20    113  ever_stunted     
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                           1        5    113  ever_stunted     
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      247   1288  ever_stunted     
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       36   1288  ever_stunted     
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      248   1288  ever_stunted     
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       28   1288  ever_stunted     
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      270   1288  ever_stunted     
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       32   1288  ever_stunted     
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      399   1288  ever_stunted     
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       28   1288  ever_stunted     
9-12 months    ki1101329-Keneba           GAMBIA                         1                           0      137    490  ever_stunted     
9-12 months    ki1101329-Keneba           GAMBIA                         1                           1       21    490  ever_stunted     
9-12 months    ki1101329-Keneba           GAMBIA                         2                           0      116    490  ever_stunted     
9-12 months    ki1101329-Keneba           GAMBIA                         2                           1        4    490  ever_stunted     
9-12 months    ki1101329-Keneba           GAMBIA                         3                           0       98    490  ever_stunted     
9-12 months    ki1101329-Keneba           GAMBIA                         3                           1        8    490  ever_stunted     
9-12 months    ki1101329-Keneba           GAMBIA                         4                           0      100    490  ever_stunted     
9-12 months    ki1101329-Keneba           GAMBIA                         4                           1        6    490  ever_stunted     
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                           0       15    117  ever_stunted     
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                           1       10    117  ever_stunted     
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                           0       21    117  ever_stunted     
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                           1        8    117  ever_stunted     
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                           0       17    117  ever_stunted     
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                           1       11    117  ever_stunted     
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                           0       30    117  ever_stunted     
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                           1        5    117  ever_stunted     
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                           0        1      2  ever_stunted     
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                           1        1      2  ever_stunted     
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                           0        0      2  ever_stunted     
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                           1        0      2  ever_stunted     
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                           0        0      2  ever_stunted     
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                           1        0      2  ever_stunted     
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4                           0        0      2  ever_stunted     
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4                           1        0      2  ever_stunted     
9-12 months    ki1114097-CMIN             BANGLADESH                     1                           0       24    104  ever_stunted     
9-12 months    ki1114097-CMIN             BANGLADESH                     1                           1       14    104  ever_stunted     
9-12 months    ki1114097-CMIN             BANGLADESH                     2                           0       25    104  ever_stunted     
9-12 months    ki1114097-CMIN             BANGLADESH                     2                           1        6    104  ever_stunted     
9-12 months    ki1114097-CMIN             BANGLADESH                     3                           0       20    104  ever_stunted     
9-12 months    ki1114097-CMIN             BANGLADESH                     3                           1        5    104  ever_stunted     
9-12 months    ki1114097-CMIN             BANGLADESH                     4                           0        9    104  ever_stunted     
9-12 months    ki1114097-CMIN             BANGLADESH                     4                           1        1    104  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0        8    137  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        3    137  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       41    137  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        8    137  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       45    137  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1       10    137  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0       19    137  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        3    137  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       11    154  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    154  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       38    154  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        2    154  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       66    154  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        2    154  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       35    154  ever_stunted     
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        0    154  ever_stunted     
12-15 months   ki0047075b-MAL-ED          INDIA                          1                           0       50    134  ever_stunted     
12-15 months   ki0047075b-MAL-ED          INDIA                          1                           1       14    134  ever_stunted     
12-15 months   ki0047075b-MAL-ED          INDIA                          2                           0       43    134  ever_stunted     
12-15 months   ki0047075b-MAL-ED          INDIA                          2                           1        8    134  ever_stunted     
12-15 months   ki0047075b-MAL-ED          INDIA                          3                           0       15    134  ever_stunted     
12-15 months   ki0047075b-MAL-ED          INDIA                          3                           1        0    134  ever_stunted     
12-15 months   ki0047075b-MAL-ED          INDIA                          4                           0        3    134  ever_stunted     
12-15 months   ki0047075b-MAL-ED          INDIA                          4                           1        1    134  ever_stunted     
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                           0       38    187  ever_stunted     
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                           1        3    187  ever_stunted     
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                           0       54    187  ever_stunted     
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                           1        7    187  ever_stunted     
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                           0       50    187  ever_stunted     
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                           1        3    187  ever_stunted     
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                           0       31    187  ever_stunted     
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                           1        1    187  ever_stunted     
12-15 months   ki0047075b-MAL-ED          PERU                           1                           0        6    121  ever_stunted     
12-15 months   ki0047075b-MAL-ED          PERU                           1                           1        1    121  ever_stunted     
12-15 months   ki0047075b-MAL-ED          PERU                           2                           0       14    121  ever_stunted     
12-15 months   ki0047075b-MAL-ED          PERU                           2                           1        3    121  ever_stunted     
12-15 months   ki0047075b-MAL-ED          PERU                           3                           0       36    121  ever_stunted     
12-15 months   ki0047075b-MAL-ED          PERU                           3                           1        6    121  ever_stunted     
12-15 months   ki0047075b-MAL-ED          PERU                           4                           0       44    121  ever_stunted     
12-15 months   ki0047075b-MAL-ED          PERU                           4                           1       11    121  ever_stunted     
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       16    140  ever_stunted     
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        5    140  ever_stunted     
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       17    140  ever_stunted     
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        6    140  ever_stunted     
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       38    140  ever_stunted     
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        8    140  ever_stunted     
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       46    140  ever_stunted     
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        4    140  ever_stunted     
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        5     91  ever_stunted     
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        6     91  ever_stunted     
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       12     91  ever_stunted     
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        5     91  ever_stunted     
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       18     91  ever_stunted     
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       12     91  ever_stunted     
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       21     91  ever_stunted     
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       12     91  ever_stunted     
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        4     22  ever_stunted     
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        1     22  ever_stunted     
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        6     22  ever_stunted     
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        2     22  ever_stunted     
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        4     22  ever_stunted     
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        0     22  ever_stunted     
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        4     22  ever_stunted     
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     22  ever_stunted     
12-15 months   ki1000108-IRC              INDIA                          1                           0        0      4  ever_stunted     
12-15 months   ki1000108-IRC              INDIA                          1                           1        0      4  ever_stunted     
12-15 months   ki1000108-IRC              INDIA                          2                           0        2      4  ever_stunted     
12-15 months   ki1000108-IRC              INDIA                          2                           1        2      4  ever_stunted     
12-15 months   ki1000108-IRC              INDIA                          3                           0        0      4  ever_stunted     
12-15 months   ki1000108-IRC              INDIA                          3                           1        0      4  ever_stunted     
12-15 months   ki1000108-IRC              INDIA                          4                           0        0      4  ever_stunted     
12-15 months   ki1000108-IRC              INDIA                          4                           1        0      4  ever_stunted     
12-15 months   ki1000109-ResPak           PAKISTAN                       1                           0       31     67  ever_stunted     
12-15 months   ki1000109-ResPak           PAKISTAN                       1                           1        4     67  ever_stunted     
12-15 months   ki1000109-ResPak           PAKISTAN                       2                           0       14     67  ever_stunted     
12-15 months   ki1000109-ResPak           PAKISTAN                       2                           1        2     67  ever_stunted     
12-15 months   ki1000109-ResPak           PAKISTAN                       3                           0        9     67  ever_stunted     
12-15 months   ki1000109-ResPak           PAKISTAN                       3                           1        0     67  ever_stunted     
12-15 months   ki1000109-ResPak           PAKISTAN                       4                           0        7     67  ever_stunted     
12-15 months   ki1000109-ResPak           PAKISTAN                       4                           1        0     67  ever_stunted     
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       69    377  ever_stunted     
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1       12    377  ever_stunted     
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       82    377  ever_stunted     
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1       11    377  ever_stunted     
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0      110    377  ever_stunted     
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        6    377  ever_stunted     
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       84    377  ever_stunted     
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        3    377  ever_stunted     
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      151    945  ever_stunted     
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       20    945  ever_stunted     
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      168    945  ever_stunted     
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       16    945  ever_stunted     
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      192    945  ever_stunted     
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       16    945  ever_stunted     
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      364    945  ever_stunted     
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       18    945  ever_stunted     
12-15 months   ki1101329-Keneba           GAMBIA                         1                           0      103    414  ever_stunted     
12-15 months   ki1101329-Keneba           GAMBIA                         1                           1       16    414  ever_stunted     
12-15 months   ki1101329-Keneba           GAMBIA                         2                           0       96    414  ever_stunted     
12-15 months   ki1101329-Keneba           GAMBIA                         2                           1        9    414  ever_stunted     
12-15 months   ki1101329-Keneba           GAMBIA                         3                           0      100    414  ever_stunted     
12-15 months   ki1101329-Keneba           GAMBIA                         3                           1        9    414  ever_stunted     
12-15 months   ki1101329-Keneba           GAMBIA                         4                           0       74    414  ever_stunted     
12-15 months   ki1101329-Keneba           GAMBIA                         4                           1        7    414  ever_stunted     
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           0        7     82  ever_stunted     
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           1        2     82  ever_stunted     
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           0       14     82  ever_stunted     
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           1        7     82  ever_stunted     
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           0       15     82  ever_stunted     
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           1        3     82  ever_stunted     
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           0       31     82  ever_stunted     
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           1        3     82  ever_stunted     
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        1      2  ever_stunted     
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      2  ever_stunted     
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        1      2  ever_stunted     
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        0      2  ever_stunted     
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        0      2  ever_stunted     
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      2  ever_stunted     
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      2  ever_stunted     
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        0      2  ever_stunted     
12-15 months   ki1114097-CMIN             BANGLADESH                     1                           0       17     89  ever_stunted     
12-15 months   ki1114097-CMIN             BANGLADESH                     1                           1       10     89  ever_stunted     
12-15 months   ki1114097-CMIN             BANGLADESH                     2                           0       20     89  ever_stunted     
12-15 months   ki1114097-CMIN             BANGLADESH                     2                           1        9     89  ever_stunted     
12-15 months   ki1114097-CMIN             BANGLADESH                     3                           0       15     89  ever_stunted     
12-15 months   ki1114097-CMIN             BANGLADESH                     3                           1        6     89  ever_stunted     
12-15 months   ki1114097-CMIN             BANGLADESH                     4                           0       12     89  ever_stunted     
12-15 months   ki1114097-CMIN             BANGLADESH                     4                           1        0     89  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0        8    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        5    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       42    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        5    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       40    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1       15    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0        8    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        0    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                           0        7    144  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    144  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       42    144  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        2    144  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       55    144  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        1    144  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       36    144  ever_stunted     
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        1    144  ever_stunted     
15-18 months   ki0047075b-MAL-ED          INDIA                          1                           0       36    115  ever_stunted     
15-18 months   ki0047075b-MAL-ED          INDIA                          1                           1       11    115  ever_stunted     
15-18 months   ki0047075b-MAL-ED          INDIA                          2                           0       42    115  ever_stunted     
15-18 months   ki0047075b-MAL-ED          INDIA                          2                           1        5    115  ever_stunted     
15-18 months   ki0047075b-MAL-ED          INDIA                          3                           0       15    115  ever_stunted     
15-18 months   ki0047075b-MAL-ED          INDIA                          3                           1        2    115  ever_stunted     
15-18 months   ki0047075b-MAL-ED          INDIA                          4                           0        4    115  ever_stunted     
15-18 months   ki0047075b-MAL-ED          INDIA                          4                           1        0    115  ever_stunted     
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                           0       33    179  ever_stunted     
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                           1        3    179  ever_stunted     
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                           0       47    179  ever_stunted     
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                           1       11    179  ever_stunted     
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                           0       50    179  ever_stunted     
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                           1        2    179  ever_stunted     
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                           0       32    179  ever_stunted     
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                           1        1    179  ever_stunted     
15-18 months   ki0047075b-MAL-ED          PERU                           1                           0        4     99  ever_stunted     
15-18 months   ki0047075b-MAL-ED          PERU                           1                           1        2     99  ever_stunted     
15-18 months   ki0047075b-MAL-ED          PERU                           2                           0       13     99  ever_stunted     
15-18 months   ki0047075b-MAL-ED          PERU                           2                           1        7     99  ever_stunted     
15-18 months   ki0047075b-MAL-ED          PERU                           3                           0       22     99  ever_stunted     
15-18 months   ki0047075b-MAL-ED          PERU                           3                           1       10     99  ever_stunted     
15-18 months   ki0047075b-MAL-ED          PERU                           4                           0       34     99  ever_stunted     
15-18 months   ki0047075b-MAL-ED          PERU                           4                           1        7     99  ever_stunted     
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       11    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       13    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        2    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       40    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        2    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       48    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        6    123  ever_stunted     
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        3     66  ever_stunted     
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        3     66  ever_stunted     
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0        9     66  ever_stunted     
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        5     66  ever_stunted     
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       14     66  ever_stunted     
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        6     66  ever_stunted     
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       19     66  ever_stunted     
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1        7     66  ever_stunted     
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        4     20  ever_stunted     
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        2     20  ever_stunted     
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        7     20  ever_stunted     
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        1     20  ever_stunted     
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        4     20  ever_stunted     
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        2     20  ever_stunted     
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        0     20  ever_stunted     
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        0     20  ever_stunted     
15-18 months   ki1000108-IRC              INDIA                          1                           0        2      5  ever_stunted     
15-18 months   ki1000108-IRC              INDIA                          1                           1        0      5  ever_stunted     
15-18 months   ki1000108-IRC              INDIA                          2                           0        2      5  ever_stunted     
15-18 months   ki1000108-IRC              INDIA                          2                           1        1      5  ever_stunted     
15-18 months   ki1000108-IRC              INDIA                          3                           0        0      5  ever_stunted     
15-18 months   ki1000108-IRC              INDIA                          3                           1        0      5  ever_stunted     
15-18 months   ki1000108-IRC              INDIA                          4                           0        0      5  ever_stunted     
15-18 months   ki1000108-IRC              INDIA                          4                           1        0      5  ever_stunted     
15-18 months   ki1000109-ResPak           PAKISTAN                       1                           0       16     35  ever_stunted     
15-18 months   ki1000109-ResPak           PAKISTAN                       1                           1        0     35  ever_stunted     
15-18 months   ki1000109-ResPak           PAKISTAN                       2                           0        9     35  ever_stunted     
15-18 months   ki1000109-ResPak           PAKISTAN                       2                           1        1     35  ever_stunted     
15-18 months   ki1000109-ResPak           PAKISTAN                       3                           0        8     35  ever_stunted     
15-18 months   ki1000109-ResPak           PAKISTAN                       3                           1        0     35  ever_stunted     
15-18 months   ki1000109-ResPak           PAKISTAN                       4                           0        1     35  ever_stunted     
15-18 months   ki1000109-ResPak           PAKISTAN                       4                           1        0     35  ever_stunted     
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       46    292  ever_stunted     
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1        8    292  ever_stunted     
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       71    292  ever_stunted     
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1        8    292  ever_stunted     
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0       74    292  ever_stunted     
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        5    292  ever_stunted     
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       77    292  ever_stunted     
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        3    292  ever_stunted     
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      107    730  ever_stunted     
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       19    730  ever_stunted     
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0       90    730  ever_stunted     
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       16    730  ever_stunted     
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      156    730  ever_stunted     
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       19    730  ever_stunted     
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      301    730  ever_stunted     
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       22    730  ever_stunted     
15-18 months   ki1101329-Keneba           GAMBIA                         1                           0       91    358  ever_stunted     
15-18 months   ki1101329-Keneba           GAMBIA                         1                           1       16    358  ever_stunted     
15-18 months   ki1101329-Keneba           GAMBIA                         2                           0       83    358  ever_stunted     
15-18 months   ki1101329-Keneba           GAMBIA                         2                           1       13    358  ever_stunted     
15-18 months   ki1101329-Keneba           GAMBIA                         3                           0       82    358  ever_stunted     
15-18 months   ki1101329-Keneba           GAMBIA                         3                           1        6    358  ever_stunted     
15-18 months   ki1101329-Keneba           GAMBIA                         4                           0       64    358  ever_stunted     
15-18 months   ki1101329-Keneba           GAMBIA                         4                           1        3    358  ever_stunted     
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           0        0     23  ever_stunted     
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           1        2     23  ever_stunted     
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           0        3     23  ever_stunted     
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           1        0     23  ever_stunted     
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           0        4     23  ever_stunted     
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           1        0     23  ever_stunted     
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           0       12     23  ever_stunted     
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           1        2     23  ever_stunted     
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        1      3  ever_stunted     
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      3  ever_stunted     
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        1      3  ever_stunted     
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        0      3  ever_stunted     
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        0      3  ever_stunted     
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      3  ever_stunted     
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      3  ever_stunted     
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        1      3  ever_stunted     
15-18 months   ki1114097-CMIN             BANGLADESH                     1                           0        7     69  ever_stunted     
15-18 months   ki1114097-CMIN             BANGLADESH                     1                           1        8     69  ever_stunted     
15-18 months   ki1114097-CMIN             BANGLADESH                     2                           0       17     69  ever_stunted     
15-18 months   ki1114097-CMIN             BANGLADESH                     2                           1        6     69  ever_stunted     
15-18 months   ki1114097-CMIN             BANGLADESH                     3                           0       17     69  ever_stunted     
15-18 months   ki1114097-CMIN             BANGLADESH                     3                           1        4     69  ever_stunted     
15-18 months   ki1114097-CMIN             BANGLADESH                     4                           0        9     69  ever_stunted     
15-18 months   ki1114097-CMIN             BANGLADESH                     4                           1        1     69  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0       10    103  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        0    103  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       39    103  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        6    103  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       35    103  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1        6    103  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0        7    103  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        0    103  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       11    137  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    137  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       40    137  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        0    137  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       55    137  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        1    137  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       30    137  ever_stunted     
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        0    137  ever_stunted     
18-21 months   ki0047075b-MAL-ED          INDIA                          1                           0       26    104  ever_stunted     
18-21 months   ki0047075b-MAL-ED          INDIA                          1                           1        2    104  ever_stunted     
18-21 months   ki0047075b-MAL-ED          INDIA                          2                           0       43    104  ever_stunted     
18-21 months   ki0047075b-MAL-ED          INDIA                          2                           1        5    104  ever_stunted     
18-21 months   ki0047075b-MAL-ED          INDIA                          3                           0       22    104  ever_stunted     
18-21 months   ki0047075b-MAL-ED          INDIA                          3                           1        2    104  ever_stunted     
18-21 months   ki0047075b-MAL-ED          INDIA                          4                           0        4    104  ever_stunted     
18-21 months   ki0047075b-MAL-ED          INDIA                          4                           1        0    104  ever_stunted     
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                           0       27    169  ever_stunted     
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                           1        6    169  ever_stunted     
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                           0       47    169  ever_stunted     
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                           1        6    169  ever_stunted     
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                           0       46    169  ever_stunted     
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                           1        3    169  ever_stunted     
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                           0       33    169  ever_stunted     
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                           1        1    169  ever_stunted     
18-21 months   ki0047075b-MAL-ED          PERU                           1                           0        4     79  ever_stunted     
18-21 months   ki0047075b-MAL-ED          PERU                           1                           1        1     79  ever_stunted     
18-21 months   ki0047075b-MAL-ED          PERU                           2                           0       11     79  ever_stunted     
18-21 months   ki0047075b-MAL-ED          PERU                           2                           1        3     79  ever_stunted     
18-21 months   ki0047075b-MAL-ED          PERU                           3                           0       24     79  ever_stunted     
18-21 months   ki0047075b-MAL-ED          PERU                           3                           1        7     79  ever_stunted     
18-21 months   ki0047075b-MAL-ED          PERU                           4                           0       26     79  ever_stunted     
18-21 months   ki0047075b-MAL-ED          PERU                           4                           1        3     79  ever_stunted     
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0        7    109  ever_stunted     
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    109  ever_stunted     
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       11    109  ever_stunted     
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        1    109  ever_stunted     
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       27    109  ever_stunted     
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        2    109  ever_stunted     
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       51    109  ever_stunted     
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        9    109  ever_stunted     
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        2     49  ever_stunted     
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        1     49  ever_stunted     
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0        5     49  ever_stunted     
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        4     49  ever_stunted     
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0        6     49  ever_stunted     
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        6     49  ever_stunted     
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       20     49  ever_stunted     
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1        5     49  ever_stunted     
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        3     20  ever_stunted     
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        1     20  ever_stunted     
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        5     20  ever_stunted     
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        2     20  ever_stunted     
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        4     20  ever_stunted     
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        3     20  ever_stunted     
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        1     20  ever_stunted     
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     20  ever_stunted     
18-21 months   ki1000108-IRC              INDIA                          1                           0        4      4  ever_stunted     
18-21 months   ki1000108-IRC              INDIA                          1                           1        0      4  ever_stunted     
18-21 months   ki1000108-IRC              INDIA                          2                           0        0      4  ever_stunted     
18-21 months   ki1000108-IRC              INDIA                          2                           1        0      4  ever_stunted     
18-21 months   ki1000108-IRC              INDIA                          3                           0        0      4  ever_stunted     
18-21 months   ki1000108-IRC              INDIA                          3                           1        0      4  ever_stunted     
18-21 months   ki1000108-IRC              INDIA                          4                           0        0      4  ever_stunted     
18-21 months   ki1000108-IRC              INDIA                          4                           1        0      4  ever_stunted     
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       47    253  ever_stunted     
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1        9    253  ever_stunted     
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       52    253  ever_stunted     
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1        8    253  ever_stunted     
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0       59    253  ever_stunted     
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        0    253  ever_stunted     
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       76    253  ever_stunted     
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        2    253  ever_stunted     
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0       83    546  ever_stunted     
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        9    546  ever_stunted     
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0       84    546  ever_stunted     
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1        4    546  ever_stunted     
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      120    546  ever_stunted     
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1        7    546  ever_stunted     
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      228    546  ever_stunted     
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       11    546  ever_stunted     
18-21 months   ki1101329-Keneba           GAMBIA                         1                           0       79    354  ever_stunted     
18-21 months   ki1101329-Keneba           GAMBIA                         1                           1       12    354  ever_stunted     
18-21 months   ki1101329-Keneba           GAMBIA                         2                           0       91    354  ever_stunted     
18-21 months   ki1101329-Keneba           GAMBIA                         2                           1       12    354  ever_stunted     
18-21 months   ki1101329-Keneba           GAMBIA                         3                           0       73    354  ever_stunted     
18-21 months   ki1101329-Keneba           GAMBIA                         3                           1        9    354  ever_stunted     
18-21 months   ki1101329-Keneba           GAMBIA                         4                           0       74    354  ever_stunted     
18-21 months   ki1101329-Keneba           GAMBIA                         4                           1        4    354  ever_stunted     
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        1      4  ever_stunted     
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      4  ever_stunted     
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        1      4  ever_stunted     
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        1      4  ever_stunted     
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        0      4  ever_stunted     
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      4  ever_stunted     
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        1      4  ever_stunted     
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        0      4  ever_stunted     
18-21 months   ki1114097-CMIN             BANGLADESH                     1                           0        8     55  ever_stunted     
18-21 months   ki1114097-CMIN             BANGLADESH                     1                           1        3     55  ever_stunted     
18-21 months   ki1114097-CMIN             BANGLADESH                     2                           0       11     55  ever_stunted     
18-21 months   ki1114097-CMIN             BANGLADESH                     2                           1        6     55  ever_stunted     
18-21 months   ki1114097-CMIN             BANGLADESH                     3                           0        9     55  ever_stunted     
18-21 months   ki1114097-CMIN             BANGLADESH                     3                           1        6     55  ever_stunted     
18-21 months   ki1114097-CMIN             BANGLADESH                     4                           0        8     55  ever_stunted     
18-21 months   ki1114097-CMIN             BANGLADESH                     4                           1        4     55  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0       10     93  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        0     93  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       35     93  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        8     93  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       33     93  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1        3     93  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0        4     93  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        0     93  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       12    130  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    130  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       28    130  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        0    130  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       58    130  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        0    130  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       31    130  ever_stunted     
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        1    130  ever_stunted     
21-24 months   ki0047075b-MAL-ED          INDIA                          1                           0       26     94  ever_stunted     
21-24 months   ki0047075b-MAL-ED          INDIA                          1                           1        3     94  ever_stunted     
21-24 months   ki0047075b-MAL-ED          INDIA                          2                           0       34     94  ever_stunted     
21-24 months   ki0047075b-MAL-ED          INDIA                          2                           1        5     94  ever_stunted     
21-24 months   ki0047075b-MAL-ED          INDIA                          3                           0       19     94  ever_stunted     
21-24 months   ki0047075b-MAL-ED          INDIA                          3                           1        1     94  ever_stunted     
21-24 months   ki0047075b-MAL-ED          INDIA                          4                           0        6     94  ever_stunted     
21-24 months   ki0047075b-MAL-ED          INDIA                          4                           1        0     94  ever_stunted     
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                           0       25    159  ever_stunted     
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                           1        2    159  ever_stunted     
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                           0       47    159  ever_stunted     
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                           1        4    159  ever_stunted     
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                           0       43    159  ever_stunted     
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                           1        3    159  ever_stunted     
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                           0       33    159  ever_stunted     
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                           1        2    159  ever_stunted     
21-24 months   ki0047075b-MAL-ED          PERU                           1                           0        3     65  ever_stunted     
21-24 months   ki0047075b-MAL-ED          PERU                           1                           1        3     65  ever_stunted     
21-24 months   ki0047075b-MAL-ED          PERU                           2                           0       11     65  ever_stunted     
21-24 months   ki0047075b-MAL-ED          PERU                           2                           1        0     65  ever_stunted     
21-24 months   ki0047075b-MAL-ED          PERU                           3                           0       23     65  ever_stunted     
21-24 months   ki0047075b-MAL-ED          PERU                           3                           1        0     65  ever_stunted     
21-24 months   ki0047075b-MAL-ED          PERU                           4                           0       24     65  ever_stunted     
21-24 months   ki0047075b-MAL-ED          PERU                           4                           1        1     65  ever_stunted     
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0        5    101  ever_stunted     
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    101  ever_stunted     
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       12    101  ever_stunted     
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        1    101  ever_stunted     
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       19    101  ever_stunted     
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        1    101  ever_stunted     
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       55    101  ever_stunted     
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        7    101  ever_stunted     
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        0     38  ever_stunted     
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        5     38  ever_stunted     
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0        4     38  ever_stunted     
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        3     38  ever_stunted     
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0        8     38  ever_stunted     
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        0     38  ever_stunted     
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       16     38  ever_stunted     
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1        2     38  ever_stunted     
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        2     15  ever_stunted     
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        2     15  ever_stunted     
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        1     15  ever_stunted     
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        5     15  ever_stunted     
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        3     15  ever_stunted     
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        1     15  ever_stunted     
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        0     15  ever_stunted     
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     15  ever_stunted     
21-24 months   ki1000108-IRC              INDIA                          1                           0        1      4  ever_stunted     
21-24 months   ki1000108-IRC              INDIA                          1                           1        3      4  ever_stunted     
21-24 months   ki1000108-IRC              INDIA                          2                           0        0      4  ever_stunted     
21-24 months   ki1000108-IRC              INDIA                          2                           1        0      4  ever_stunted     
21-24 months   ki1000108-IRC              INDIA                          3                           0        0      4  ever_stunted     
21-24 months   ki1000108-IRC              INDIA                          3                           1        0      4  ever_stunted     
21-24 months   ki1000108-IRC              INDIA                          4                           0        0      4  ever_stunted     
21-24 months   ki1000108-IRC              INDIA                          4                           1        0      4  ever_stunted     
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       47    226  ever_stunted     
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1        6    226  ever_stunted     
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       52    226  ever_stunted     
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1        2    226  ever_stunted     
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0       55    226  ever_stunted     
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        3    226  ever_stunted     
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       58    226  ever_stunted     
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        3    226  ever_stunted     
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0        1      1  ever_stunted     
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        0      1  ever_stunted     
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0        0      1  ever_stunted     
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1        0      1  ever_stunted     
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0        0      1  ever_stunted     
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1        0      1  ever_stunted     
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0        0      1  ever_stunted     
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1        0      1  ever_stunted     
21-24 months   ki1101329-Keneba           GAMBIA                         1                           0       69    315  ever_stunted     
21-24 months   ki1101329-Keneba           GAMBIA                         1                           1       12    315  ever_stunted     
21-24 months   ki1101329-Keneba           GAMBIA                         2                           0       80    315  ever_stunted     
21-24 months   ki1101329-Keneba           GAMBIA                         2                           1        9    315  ever_stunted     
21-24 months   ki1101329-Keneba           GAMBIA                         3                           0       75    315  ever_stunted     
21-24 months   ki1101329-Keneba           GAMBIA                         3                           1        9    315  ever_stunted     
21-24 months   ki1101329-Keneba           GAMBIA                         4                           0       55    315  ever_stunted     
21-24 months   ki1101329-Keneba           GAMBIA                         4                           1        6    315  ever_stunted     
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        1      4  ever_stunted     
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      4  ever_stunted     
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        1      4  ever_stunted     
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        0      4  ever_stunted     
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        2      4  ever_stunted     
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      4  ever_stunted     
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      4  ever_stunted     
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        0      4  ever_stunted     
21-24 months   ki1114097-CMIN             BANGLADESH                     1                           0        8     42  ever_stunted     
21-24 months   ki1114097-CMIN             BANGLADESH                     1                           1        0     42  ever_stunted     
21-24 months   ki1114097-CMIN             BANGLADESH                     2                           0        6     42  ever_stunted     
21-24 months   ki1114097-CMIN             BANGLADESH                     2                           1        4     42  ever_stunted     
21-24 months   ki1114097-CMIN             BANGLADESH                     3                           0        9     42  ever_stunted     
21-24 months   ki1114097-CMIN             BANGLADESH                     3                           1        3     42  ever_stunted     
21-24 months   ki1114097-CMIN             BANGLADESH                     4                           0       11     42  ever_stunted     
21-24 months   ki1114097-CMIN             BANGLADESH                     4                           1        1     42  ever_stunted     


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/ce2eb627-8791-4267-bfbe-c0b810352f51/e028e3bd-2f43-4a4b-974c-0117171ed337/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ce2eb627-8791-4267-bfbe-c0b810352f51/e028e3bd-2f43-4a4b-974c-0117171ed337/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ce2eb627-8791-4267-bfbe-c0b810352f51/e028e3bd-2f43-4a4b-974c-0117171ed337/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ce2eb627-8791-4267-bfbe-c0b810352f51/e028e3bd-2f43-4a4b-974c-0117171ed337/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2941176   0.0770162   0.5112191
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2105263   0.1044435   0.3166091
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1756757   0.0887697   0.2625816
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3283582   0.2156473   0.4410691
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                0.2463768   0.1444392   0.3483144
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    NA                0.2941176   0.1405608   0.4476745
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    NA                0.3589744   0.2080292   0.5099195
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    NA                0.7200000   0.5952208   0.8447792
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1633663   0.1123358   0.2143968
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1307190   0.0772551   0.1841828
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1654135   0.1022084   0.2286186
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.2272727   0.1033311   0.3512143
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1148936   0.0860567   0.1437306
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1093394   0.0801406   0.1385382
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1178862   0.0893849   0.1463874
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1497797   0.1229713   0.1765881
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.1940299   0.1393199   0.2487399
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.1312500   0.0788890   0.1836110
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                0.1647727   0.1099249   0.2196206
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                0.2058824   0.1378754   0.2738893
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1724138   0.0345317   0.3102959
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.1428571   0.0265898   0.2591245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.1090909   0.0264597   0.1917221
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.1132075   0.0276566   0.1987585
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3500000   0.1403145   0.5596855
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3055556   0.1546152   0.4564959
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2352941   0.1185163   0.3520719
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2727273   0.1546614   0.3907931
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1435294   0.1101860   0.1768728
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1389728   0.1016962   0.1762495
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1105991   0.0810831   0.1401151
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0858896   0.0610472   0.1107319
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
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1272085   0.0883723   0.1660447
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1014493   0.0658158   0.1370827
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1059603   0.0712336   0.1406869
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0655738   0.0420861   0.0890615
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.4000000   0.2071376   0.5928624
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.2758621   0.1124931   0.4392311
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.3928571   0.2111819   0.5745324
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.1428571   0.0264296   0.2592846
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5454545   0.2495721   0.8413369
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2941176   0.0763217   0.5119136
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.4000000   0.2237243   0.5762757
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3636364   0.1986010   0.5286717
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1169591   0.0687657   0.1651524
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0869565   0.0462217   0.1276914
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0769231   0.0406910   0.1131552
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0471204   0.0258601   0.0683807
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1344538   0.0730873   0.1958203
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0857143   0.0321042   0.1393243
12-15 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.0825688   0.0308373   0.1343003
12-15 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.0864198   0.0251550   0.1476845
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1507937   0.0882679   0.2133194
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1509434   0.0827459   0.2191409
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1085714   0.0624473   0.1546955
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0681115   0.0406175   0.0956054
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
3-6 months     ki1000109-ResPak           PAKISTAN                       2                    1                 1.1937716   0.6132140   2.3239698
3-6 months     ki1000109-ResPak           PAKISTAN                       3                    1                 1.4570136   0.8077320   2.6282091
3-6 months     ki1000109-ResPak           PAKISTAN                       4                    1                 2.9223529   1.8660289   4.5766423
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8001584   0.4782675   1.3386935
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                 1.0125313   0.6181143   1.6586249
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    1                 1.3911846   0.7420688   2.6081065
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9516578   0.6596592   1.3729099
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0260464   0.7241331   1.4538365
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.3036384   0.9578044   1.7743426
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 0.6764423   0.4150170   1.1025433
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                 0.8492133   0.5489832   1.3136345
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                 1.0610860   0.6872845   1.6381913
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.8285714   0.2647220   2.5934019
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.6327273   0.2103030   1.9036520
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.6566038   0.2185019   1.9731107
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8730159   0.4016007   1.8977972
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6722689   0.3087974   1.4635661
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.7792208   0.3720960   1.6317969
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9682532   0.6790183   1.3806907
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7705673   0.5409385   1.0976739
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5984109   0.4129385   0.8671889
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
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7975040   0.5007503   1.2701194
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8329654   0.5322387   1.3036094
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5154827   0.3219712   0.8252988
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 0.6896552   0.3213474   1.4800937
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.9821429   0.5035368   1.9156586
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.3571429   0.1385457   0.9206423
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.5392157   0.2153322   1.3502560
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7333333   0.3645636   1.4751274
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.6666667   0.3286589   1.3522969
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7434783   0.3983988   1.3874539
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6576923   0.3517503   1.2297337
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4028796   0.2186789   0.7422387
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.6375000   0.2939117   1.3827494
12-15 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.6141055   0.2828801   1.3331638
12-15 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.6427469   0.2766113   1.4935169
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0009930   0.5421324   1.8482333
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7200000   0.3976657   1.3036075
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4516865   0.2532323   0.8056661
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.6825843   0.3032128   1.5366147
21-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.7232143   0.3217723   1.6254938
21-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.6639344   0.2636919   1.6716819


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0522572   -0.2595515    0.1550372
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1546649    0.0666099    0.2427198
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0035919   -0.0435637    0.0363799
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0109469   -0.0147278    0.0366216
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0201814   -0.0651959    0.0248331
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0445068   -0.1674153    0.0784016
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0722222   -0.2668974    0.1224530
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0261977   -0.0542339    0.0018386
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0058159   -0.0479217    0.0362898
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0284314   -0.0744838    0.1313465
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0102564   -0.2352658    0.2147530
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0309352   -0.0641791    0.0023087
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.1094017   -0.2771131    0.0583097
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1608392   -0.4373962    0.1157179
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0428850   -0.0848510   -0.0009190
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0354200   -0.0847238    0.0138838
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0466841   -0.1019234    0.0085553
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0338624   -0.0983193    0.0305944


### Parameter: PAF


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2160633   -1.4599407    0.3988432
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.3856578    0.1243179    0.5690031
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0224811   -0.3058903    0.1994216
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0869904   -0.1414096    0.2696868
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.1160862   -0.4070424    0.1147043
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.3479624   -1.7377099    0.3363057
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2600000   -1.1973531    0.2774944
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2232786   -0.4856843   -0.0072197
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0537975   -0.5247863    0.2717084
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.1003460   -0.3468351    0.3990524
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0317460   -1.0264390    0.4746943
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3213268   -0.7120348   -0.0197833
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.3764706   -1.0953514    0.0957740
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4181818   -1.3652926    0.1496868
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5789474   -1.2442543   -0.1108700
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3576553   -0.9479841    0.0537768
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4484127   -1.0809735   -0.0081336
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.2962963   -0.9952909    0.1578250

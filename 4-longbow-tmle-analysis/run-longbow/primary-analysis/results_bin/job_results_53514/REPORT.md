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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        anywast06    ever_stunted   n_cell      n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  -----
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       75    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       93    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       28    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       21    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      158    202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       30    202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       12    202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        2    202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       58    210
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       84    210
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0       41    210
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1       27    210
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      128    211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       44    211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       28    211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1       11    211
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0      112    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      146    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0        3    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1        5    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      119    275
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      124    275
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       19    275
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1       13    275
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       39    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      170    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        9    219
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       19    292
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1      120    292
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        8    292
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1      145    292
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0       52    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1      100    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0       95    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1      113    360
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       30    213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1      105    213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0       11    213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1       67    213
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                       0       56    202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                       1       71    202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                       0       41    202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                       1       34    202
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      306    633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1      168    633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0       89    633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       70    633
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1358   2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      558   2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      209   2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1      110   2235
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0      823   2234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      755   2234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      284   2234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      372   2234
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                       0      137    223
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                       1       82    223
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    223
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                       1        3    223
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0      162    576
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1      179    576
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0       90    576
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      145    576
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                       0       32    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                       1      105    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                       0        9    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                       1       22    168
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                       0      148    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                       1       45    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                       0        4    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                       1        0    197
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      130    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       38    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       40    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        9    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      167    202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       21    202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       14    202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0    202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      109    210
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       33    210
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       55    210
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1       13    210
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      161    211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       11    211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       36    211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        3    211
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      168    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       90    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0        6    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1        2    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      172    275
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       71    275
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       26    275
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        6    275
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      147    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       62    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        6    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        4    219
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       87    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1       52    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       93    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       60    292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0       92    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1       60    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0      144    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1       64    360
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0       58    213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1       77    213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       37    213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       41    213
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                       0       64    202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                       1       63    202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                       0       50    202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                       1       25    202
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      406    633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       68    633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      126    633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       33    633
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1656   2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      260   2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      273   2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       46   2235
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0     1225   2234
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1      353   2234
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0      470   2234
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      186   2234
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                       0      200    223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                       1       19    223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                       0        2    223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                       1        2    223
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0      292    576
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       49    576
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      184    576
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       51    576
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                       0      101    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                       1       36    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                       0       19    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                       1       12    168
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                       0      163    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                       1       30    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                       0        4    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                       1        0    197
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       66    158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       55    158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       25    158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       12    158
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      140    163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        9    163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       12    163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        2    163
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       51    154
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       51    154
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0       38    154
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1       14    154
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      127    194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       33    194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       26    194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        8    194
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       87    149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       56    149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0        3    149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1        3    149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       85    158
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       53    158
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       13    158
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        7    158
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       30    144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      108    144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1    144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        5    144
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       19    180
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1       68    180
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        8    180
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       85    180
6-24 months                  ki1000108-IRC              INDIA                          0                       0       52    236
6-24 months                  ki1000108-IRC              INDIA                          0                       1       40    236
6-24 months                  ki1000108-IRC              INDIA                          1                       0       95    236
6-24 months                  ki1000108-IRC              INDIA                          1                       1       49    236
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       28     93
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       28     93
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0       11     93
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       26     93
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                       0       42     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                       1        8     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                       0       36     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                       1        9     95
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0      249    456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1      100    456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0       70    456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1       37    456
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1067   1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      298   1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      173   1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       64   1602
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0      721   1567
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1      402   1567
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      258   1567
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      186   1567
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                       0      110    175
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                       1       63    175
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    175
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                       1        1    175
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0      103    397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1      130    397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0       70    397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1       94    397
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                       0       26    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                       1       69    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                       0        6    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                       1       10    111
6-24 months                  ki1114097-CONTENT          PERU                           0                       0      148    167
6-24 months                  ki1114097-CONTENT          PERU                           0                       1       15    167
6-24 months                  ki1114097-CONTENT          PERU                           1                       0        4    167
6-24 months                  ki1114097-CONTENT          PERU                           1                       1        0    167


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/ca8a9d1a-d3c6-40c3-ae0c-c73ef2fa8ae3/f8996702-91ce-45dd-b7a0-f594ba65b946/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ca8a9d1a-d3c6-40c3-ae0c-c73ef2fa8ae3/f8996702-91ce-45dd-b7a0-f594ba65b946/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ca8a9d1a-d3c6-40c3-ae0c-c73ef2fa8ae3/f8996702-91ce-45dd-b7a0-f594ba65b946/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ca8a9d1a-d3c6-40c3-ae0c-c73ef2fa8ae3/f8996702-91ce-45dd-b7a0-f594ba65b946/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5563122   0.4807505   0.6318739
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4217782   0.2771057   0.5664507
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5920901   0.5107619   0.6734184
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3631626   0.2426606   0.4836647
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2562650   0.1908927   0.3216373
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2714367   0.1303042   0.4125692
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.5090756   0.4459645   0.5721868
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3991127   0.2153118   0.5829136
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8633094   0.8061038   0.9205149
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9477124   0.9123791   0.9830458
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.6542988   0.5788378   0.7297598
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.5418040   0.4738493   0.6097587
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                0.7787505   0.7082004   0.8493006
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    NA                0.8589193   0.7799190   0.9379197
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5623592   0.4752108   0.6495076
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.4484357   0.3341857   0.5626857
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3520296   0.3089272   0.3951321
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4476060   0.3691307   0.5260813
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2912056   0.2708557   0.3115554
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3457320   0.2934448   0.3980192
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                0.4829001   0.4582780   0.5075222
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                0.5560966   0.5182986   0.5938946
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5242131   0.4707785   0.5776476
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6145904   0.5531768   0.6760040
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7664234   0.6953620   0.8374847
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7096774   0.5494139   0.8699409
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2261905   0.1627815   0.2895994
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1836735   0.0750038   0.2923431
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2349862   0.1647578   0.3052146
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1832885   0.0914568   0.2751203
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2921811   0.2348984   0.3494637
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1875000   0.0520196   0.3229804
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3741119   0.2930236   0.4552003
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3934621   0.3156524   0.4712718
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.3916795   0.3135902   0.4697689
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3047041   0.2416571   0.3677512
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.5689078   0.4848140   0.6530015
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.5298306   0.4173323   0.6423289
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4971249   0.4093572   0.5848926
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3353025   0.2268677   0.4437373
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1430061   0.1114649   0.1745473
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2093817   0.1447278   0.2740356
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1356184   0.1202828   0.1509540
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1446122   0.1059148   0.1833095
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                0.2242697   0.2036827   0.2448566
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                0.2820745   0.2475221   0.3166269
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1441814   0.1068688   0.1814941
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2201046   0.1672578   0.2729515
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.2640338   0.1893412   0.3387264
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.3692172   0.2006717   0.5377627
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4580912   0.3688336   0.5473488
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3377153   0.1845376   0.4908930
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                0.4948919   0.3967502   0.5930337
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    NA                0.2549644   0.1321122   0.3778166
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2062500   0.1433937   0.2691063
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2352941   0.0923443   0.3782439
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3840580   0.3026521   0.4654638
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3500000   0.1402980   0.5597020
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7816092   0.6945509   0.8686675
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9139785   0.8568322   0.9711248
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.4297013   0.3274536   0.5319491
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3403523   0.2621920   0.4185126
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                0.5209484   0.3879742   0.6539227
6-24 months                  ki1000109-EE               PAKISTAN                       1                    NA                0.7230608   0.5730270   0.8730946
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    NA                0.1600000   0.0578448   0.2621552
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    NA                0.2000000   0.0825103   0.3174897
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2806189   0.2336704   0.3275673
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3521235   0.2623506   0.4418963
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2181491   0.1962200   0.2400781
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2712509   0.2143065   0.3281952
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                0.3603824   0.3323797   0.3883851
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                0.4135704   0.3677696   0.4593711
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5536718   0.4896504   0.6176933
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5612699   0.4852758   0.6372641
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    NA                0.7263158   0.6362543   0.8163773
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    NA                0.6250000   0.3867083   0.8632917


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5253456   0.4587520   0.5919392
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5285714   0.4608954   0.5962474
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2606635   0.2012891   0.3200380
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4981818   0.4389793   0.5573843
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9075342   0.8742512   0.9408173
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       NA                   NA                0.8075117   0.7544408   0.8605827
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5198020   0.4507336   0.5888704
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2988814   0.2798990   0.3178639
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5044763   0.4837388   0.5252138
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5625000   0.5219525   0.6030475
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7559524   0.6908084   0.8210964
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2165899   0.1616567   0.2715231
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2190476   0.1629743   0.2751210
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2800000   0.2268359   0.3331641
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.5539906   0.4870787   0.6209025
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4356436   0.3670959   0.5041912
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1369128   0.1226581   0.1511674
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2412713   0.2235253   0.2590172
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1736111   0.1426515   0.2045707
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2857143   0.2171983   0.3542303
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months                  ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3797468   0.3038314   0.4556622
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8500000   0.7976910   0.9023090
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months                  ki1000109-EE               PAKISTAN                       NA                   NA                0.5806452   0.4798127   0.6814776
6-24 months                  ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1789474   0.1014597   0.2564350
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2259675   0.2054816   0.2464534
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3752393   0.3512585   0.3992201
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months                  ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7117117   0.6270636   0.7963598


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7581681   0.5246933   1.0955331
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0                 0.6133570   0.4278179   0.8793620
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.0592032   0.5940673   1.8885257
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.7839949   0.4864376   1.2635702
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0977669   1.0173960   1.1844868
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 0.8280681   0.6986180   0.9815045
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0                 1.1029455   0.9690775   1.2553060
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0                 0.7974185   0.5918577   1.0743737
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2715009   1.0269953   1.5742181
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1872438   1.0050099   1.4025213
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0                 1.1515769   1.0582732   1.2531068
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1724057   1.0163835   1.3523784
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    0                 0.9259601   0.7253921   1.1819842
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.8120301   0.4219291   1.5628047
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.7799972   0.4341804   1.4012508
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.6417254   0.3035278   1.3567502
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0517231   0.7837921   1.4112433
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 0.7779425   0.5832874   1.0375582
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 0.9313119   0.7186784   1.2068568
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    0                 0.6744833   0.4666646   0.9748495
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4641452   1.0014662   2.1405827
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0663166   0.7974664   1.4258045
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0                 1.2577472   1.0794321   1.4655189
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.5265809   1.0720007   2.1739251
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    0                 1.3983707   0.8171106   2.3931162
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7372228   0.4499214   1.2079830
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0                 0.5151921   0.3056795   0.8683044
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0                 1.1408200   0.5781380   2.2511409
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9113208   0.4826821   1.7206057
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1693548   1.0291360   1.3286784
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 0.7920671   0.5687981   1.1029754
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0                 1.3879700   0.9973156   1.9316460
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    0                 1.2500000   0.5249448   2.9765036
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2548104   0.9253554   1.7015614
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2434198   0.9851516   1.5693958
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0                 1.1475876   1.0028064   1.3132718
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0137230   0.8480479   1.2117646
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    0                 0.8605072   0.5762828   1.2849121


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0309666   -0.0672876    0.0053544
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0635187   -0.1114884   -0.0155491
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0043985   -0.0244735    0.0332705
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0108938   -0.0326022    0.0108146
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0442249    0.0086628    0.0797870
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0626322   -0.1214114   -0.0038529
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0287613   -0.0102873    0.0678098
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0425573   -0.0964859    0.0113714
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0239577    0.0015111    0.0464044
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0076759   -0.0003613    0.0157130
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0215762    0.0083344    0.0348179
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0382869    0.0045103    0.0720636
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0104710   -0.0429919    0.0220500
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0096006   -0.0381095    0.0189083
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0159386   -0.0548888    0.0230117
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0121811   -0.0297527    0.0053906
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0094497   -0.0495488    0.0684483
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.0472351   -0.1054778    0.0110077
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0149172   -0.0662949    0.0364605
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0614814   -0.1142968   -0.0086659
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0165516   -0.0013483    0.0344515
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012943   -0.0046309    0.0072195
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0170016    0.0051628    0.0288404
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0294297    0.0029049    0.0559545
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0216805   -0.0142730    0.0576340
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0340406   -0.0765863    0.0085051
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0728140   -0.1287293   -0.0168987
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0050902   -0.0223221    0.0325025
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0043111   -0.0328407    0.0242184
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0683908    0.0137202    0.1230614
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                -0.0525827   -0.1314367    0.0262713
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0596967   -0.0234917    0.1428851
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0189474   -0.0549112    0.0928059
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0198197   -0.0040690    0.0437085
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0078185   -0.0012128    0.0168497
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0148569   -0.0003281    0.0300419
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0105599   -0.0306737    0.0517935
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0146041   -0.0519211    0.0227130


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0589452   -0.1308920    0.0084244
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1201706   -0.2167815   -0.0312304
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0168743   -0.1003373    0.1216002
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0218672   -0.0664585    0.0208597
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0487308    0.0079831    0.0878048
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.1058572   -0.2108285   -0.0099862
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0356171   -0.0144079    0.0831752
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0818721   -0.1915183    0.0176843
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0637195    0.0019991    0.1216229
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0256819   -0.0015749    0.0521970
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0427695    0.0160945    0.0687212
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0680656    0.0056943    0.1265245
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0138514   -0.0578881    0.0283523
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0443262   -0.1843770    0.0791638
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0727629   -0.2659545    0.0909465
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0435038   -0.1080763    0.0173057
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0246368   -0.1420051    0.1669622
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.1371340   -0.3196106    0.0201096
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0269268   -0.1240702    0.0618214
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1411277   -0.2705584   -0.0248819
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1037340   -0.0146147    0.2082781
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0094537   -0.0347756    0.0517925
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0704667    0.0201979    0.1181565
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1695149    0.0041631    0.3074112
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0758816   -0.0587061    0.1933598
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0802748   -0.1861404    0.0161420
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1725132   -0.3155058   -0.0450635
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0240854   -0.1145458    0.1454731
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0113527   -0.0893501    0.0610601
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0804598    0.0119372    0.1442303
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                -0.1394328   -0.3693338    0.0518695
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.1028110   -0.0545681    0.2367036
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1058824   -0.4161708    0.4354873
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0659694   -0.0169064    0.1420909
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0345999   -0.0061544    0.0737035
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0395932   -0.0017435    0.0792242
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0187155   -0.0571789    0.0891616
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0205197   -0.0745638    0.0308064

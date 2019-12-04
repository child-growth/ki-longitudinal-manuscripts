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

**Intervention Variable:** pers_wast

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

agecat                       studyid                    country                        pers_wast    ever_stunted   n_cell      n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  -----
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       97    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1      113    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0        6    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        1    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      169    202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       32    202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0        1    202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0    202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       85    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1      104    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0       12    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        7    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      152    211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       54    211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0        4    211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        1    211
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0      115    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      151    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0        0    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1        0    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      125    265
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      137    265
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3    265
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    265
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       39    218
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      179    218
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0    218
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    218
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       24    292
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1      228    292
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        3    292
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       37    292
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0      114    359
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1      181    359
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0       32    359
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1       32    359
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       41    213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1      157    213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0        0    213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1       15    213
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                       0       70    182
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                       1       95    182
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                       0       12    182
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                       1        5    182
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      379    633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1      229    633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0       16    633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1        9    633
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1396   2090
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      641   2090
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0       33   2090
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       20   2090
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0      839   1905
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1     1008   1905
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0       17   1905
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1       41   1905
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                       0      131    217
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                       1       82    217
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    217
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                       1        3    217
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0      161    492
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1      275    492
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0       12    492
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1       44    492
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                       0       37    166
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                       1      123    166
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                       0        2    166
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                       1        4    166
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                       0      152    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                       1       45    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                       0        0    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                       1        0    197
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      163    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       47    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0        7    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        0    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      180    202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       21    202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0        1    202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0    202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      148    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       41    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       14    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        5    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      192    211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       14    211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0        5    211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        0    211
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      174    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       92    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0        0    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1        0    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      185    265
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       77    265
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3    265
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    265
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      152    218
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       66    218
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0    218
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    218
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0      152    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1      100    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       28    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       12    292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0      186    359
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1      109    359
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0       49    359
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1       15    359
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0       90    213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1      108    213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0        5    213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       10    213
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                       0       85    182
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                       1       80    182
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                       0       13    182
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                       1        4    182
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      513    633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       95    633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0       19    633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1        6    633
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1744   2090
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      293   2090
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0       44   2090
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        9   2090
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0     1344   1905
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1      503   1905
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0       38   1905
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1       20   1905
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                       0      194    217
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                       1       19    217
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                       0        2    217
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                       1        2    217
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0      350    492
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       86    492
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0       43    492
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       13    492
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                       0      115    166
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                       1       45    166
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                       0        3    166
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                       1        3    166
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                       0      167    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                       1       30    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                       0        0    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                       1        0    197
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       86    158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       66    158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0        5    158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1        1    158
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      151    163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1       11    163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0        1    163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        0    163
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       78    154
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       63    154
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0       11    154
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        2    154
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      150    194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       40    194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0        3    194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        1    194
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       90    149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       59    149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0        0    149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1        0    149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       96    158
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       60    158
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        2    158
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    158
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       31    144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      113    144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0    144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    144
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       24    180
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1      128    180
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        3    180
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       25    180
6-24 months                  ki1000108-IRC              INDIA                          0                       0      114    235
6-24 months                  ki1000108-IRC              INDIA                          0                       1       72    235
6-24 months                  ki1000108-IRC              INDIA                          1                       0       32    235
6-24 months                  ki1000108-IRC              INDIA                          1                       1       17    235
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       39     93
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       49     93
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0        0     93
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1        5     93
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                       0       65     92
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                       1       15     92
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                       0       11     92
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                       1        1     92
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0      316    456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1      134    456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0        3    456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1        3    456
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1195   1583
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      348   1583
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0       29   1583
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       11   1583
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0      811   1352
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1      505   1352
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0       15   1352
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1       21   1352
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                       0      107    172
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                       1       63    172
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    172
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                       1        1    172
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0      155    387
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1      189    387
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0       12    387
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1       31    387
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                       0       31    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                       1       78    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                       0        1    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                       1        1    111
6-24 months                  ki1114097-CONTENT          PERU                           0                       0      152    167
6-24 months                  ki1114097-CONTENT          PERU                           0                       1       15    167
6-24 months                  ki1114097-CONTENT          PERU                           1                       0        0    167
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/8ec7acbe-e692-4e30-a31f-edc485a2dfaf/2fbf35c3-2629-4114-9ff0-168bf366e11d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8ec7acbe-e692-4e30-a31f-edc485a2dfaf/2fbf35c3-2629-4114-9ff0-168bf366e11d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8ec7acbe-e692-4e30-a31f-edc485a2dfaf/2fbf35c3-2629-4114-9ff0-168bf366e11d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8ec7acbe-e692-4e30-a31f-edc485a2dfaf/2fbf35c3-2629-4114-9ff0-168bf366e11d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5502646   0.4791714   0.6213577
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3684211   0.1509989   0.5858432
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.6150528   0.5594717   0.6706339
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.5181477   0.3942624   0.6420331
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5757576   0.5001388   0.6513763
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2941176   0.0769242   0.5113111
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3766447   0.3380993   0.4151902
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3600000   0.1716947   0.5483053
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3145994   0.2944205   0.3347783
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3341491   0.2036035   0.4646947
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                0.5464141   0.5235970   0.5692312
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                0.7173834   0.6194599   0.8153069
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6298686   0.5844839   0.6752534
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7743706   0.6648945   0.8838466
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2169312   0.1580299   0.2758325
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.2631579   0.0646795   0.4616363
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3980279   0.3372505   0.4588052
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2898375   0.1445109   0.4351641
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.3706975   0.3154744   0.4259206
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.2529055   0.1501151   0.3556959
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.5454545   0.4759353   0.6149738
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.6666667   0.4275455   0.9057879
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1562500   0.1273661   0.1851339
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2400000   0.0724541   0.4075459
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1438390   0.1285959   0.1590821
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1698113   0.0687033   0.2709194
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                0.2728452   0.2525163   0.2931741
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                0.3300466   0.2055693   0.4545239
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1971222   0.1596822   0.2345622
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2235351   0.1081875   0.3388827
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.3856149   0.3154014   0.4558283
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3626863   0.2286017   0.4967709
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2255469   0.2046284   0.2464655
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2958179   0.1656922   0.4259436
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                0.3839916   0.3576685   0.4103148
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                0.6018818   0.4431793   0.7605843
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5490980   0.4964266   0.6017694
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7177410   0.5832781   0.8522038


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5336538   0.4656949   0.6016128
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5933148   0.5424311   0.6441984
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5494505   0.4769662   0.6219349
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3162679   0.2963268   0.3362091
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5506562   0.5283130   0.5729993
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6483740   0.6061401   0.6906078
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2211538   0.1646164   0.2776913
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3454039   0.2961482   0.3946596
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.5539906   0.4870787   0.6209025
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1444976   0.1294204   0.1595748
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2745407   0.2544948   0.2945865
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2012195   0.1657581   0.2366809
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3787234   0.3165730   0.4408738
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2267846   0.2061497   0.2474195
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3890533   0.3630561   0.4150505
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5684755   0.5190657   0.6178852


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0                 0.6695344   0.3659365   1.225011
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 0.8424443   0.6524783   1.087718
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0                 0.5108359   0.2412906   1.081490
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9558079   0.5609149   1.628712
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0621414   0.7148921   1.578063
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0                 1.3128934   1.1383967   1.514137
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.2294160   1.0491866   1.440605
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0                 1.2130937   0.5442049   2.704122
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.7281839   0.4308603   1.230682
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 0.6822421   0.4430639   1.050535
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 1.2222222   0.8352851   1.788404
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.5360000   0.7460322   3.162459
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1805654   0.6448240   2.161419
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0                 1.2096477   0.8236390   1.776564
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1339923   0.6540725   1.966049
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 0.9405403   0.6220909   1.422005
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3115582   0.8366396   2.056064
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0                 1.5674347   1.1934847   2.058553
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.3071273   1.0597663   1.612225


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0166107   -0.0386913    0.0054699
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0217380   -0.0465663    0.0030902
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0263070   -0.0508839   -0.0017301
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0006574   -0.0082528    0.0069381
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0016685   -0.0017128    0.0050499
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0042421    0.0004444    0.0080398
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0185054    0.0044811    0.0325297
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0042226   -0.0147759    0.0232212
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0144662   -0.0364048    0.0074724
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.0252936   -0.0468802   -0.0037071
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0085361   -0.0094907    0.0265629
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0033077   -0.0035265    0.0101418
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0006586   -0.0019402    0.0032575
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0016955   -0.0021042    0.0054951
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0040973   -0.0093109    0.0175055
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                -0.0068914   -0.0387892    0.0250063
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012377   -0.0023397    0.0048151
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0050616    0.0003387    0.0097846
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0193774    0.0026415    0.0361134


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0311264   -0.0736120    0.0096780
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0366383   -0.0796137    0.0046264
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0478788   -0.0942959   -0.0034305
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0017484   -0.0221549    0.0182507
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0052756   -0.0054740    0.0159103
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0077037    0.0007629    0.0145962
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0285412    0.0064605    0.0501312
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0190936   -0.0706200    0.1012896
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0377155   -0.0965807    0.0179897
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.0732291   -0.1376861   -0.0124241
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0154083   -0.0177547    0.0474908
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0207302   -0.0229464    0.0625419
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0045581   -0.0135867    0.0223780
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0061757   -0.0077596    0.0199183
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0203623   -0.0485510    0.0847463
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                -0.0181965   -0.1060193    0.0626528
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0054575   -0.0104473    0.0211119
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0130101    0.0007828    0.0250878
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0340867    0.0039432    0.0633180

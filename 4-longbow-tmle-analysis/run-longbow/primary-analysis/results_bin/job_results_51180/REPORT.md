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
* W_mage
* meducyrs
* month
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_month
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        anywast06    ever_stunted   n_cell      n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  -----
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       76    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       92    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       28    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       21    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      167    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       27    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       12    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        2    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       62    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       82    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0       39    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1       26    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      132    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       45    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       25    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1       10    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0      112    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      146    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0        3    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1        5    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      124    280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      127    280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       19    280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1       10    280
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       40    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      170    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        8    219
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       19    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1      118    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        8    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1      148    293
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0       46    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1       92    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0      101    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1      121    360
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       25    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1      152    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0        8    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1       64    249
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                       0       56    202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                       1       71    202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                       0       41    202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                       1       34    202
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      307    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1      168    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0       89    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       70    634
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1358   2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      558   2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      209   2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1      110   2235
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0      962   2234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      905   2234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      145   2234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      222   2234
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                       0      137    223
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                       1       82    223
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    223
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                       1        3    223
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0      143    535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1      228    535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0       53    535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      111    535
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                       0       32    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                       1      105    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                       0        9    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                       1       22    168
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                       0      424    658
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                       1      190    658
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                       0       21    658
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                       1       23    658
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                       0      148    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                       1       45    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                       0        4    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                       1        0    197
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      130    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       38    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       41    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        8    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      174    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       20    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       14    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      112    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       32    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       53    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1       12    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      165    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       33    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        2    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      168    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       90    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0        6    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1        2    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      176    280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       75    280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       25    280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        4    280
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      149    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       61    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        5    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        4    219
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       86    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1       51    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       94    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       61    292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0       82    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1       56    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0      154    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1       68    360
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0       70    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1      107    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       29    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       43    249
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                       0       64    202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                       1       63    202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                       0       50    202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                       1       25    202
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      407    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       68    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      126    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       33    634
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1656   2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      260   2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      273   2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       46   2235
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0     1448   2234
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1      419   2234
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0      247   2234
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      120   2234
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                       0      200    223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                       1       19    223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                       0        2    223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                       1        2    223
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0      298    535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       73    535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      137    535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       27    535
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                       0      101    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                       1       36    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                       0       19    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                       1       12    168
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                       0      577    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                       1       37    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                       0       32    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                       1       12    658
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                       0      163    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                       1       30    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                       0        4    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                       1        0    197
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       67    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       54    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       25    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       13    159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      147    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        7    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       12    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        2    168
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       54    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       50    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0       37    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1       14    155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      131    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       33    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       23    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        8    195
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       87    149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       56    149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0        3    149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1        3    149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       88    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       52    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       13    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        6    159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       31    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      109    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        4    145
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       19    181
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1       67    181
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        8    181
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       87    181
6-24 months                  ki1000108-IRC              INDIA                          0                       0       46    236
6-24 months                  ki1000108-IRC              INDIA                          0                       1       36    236
6-24 months                  ki1000108-IRC              INDIA                          1                       0      101    236
6-24 months                  ki1000108-IRC              INDIA                          1                       1       53    236
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       23     97
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       45     97
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0        8     97
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       21     97
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                       0       42     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                       1        8     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                       0       36     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                       1        9     95
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0      250    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1      100    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0       70    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1       37    457
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1067   1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      298   1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      173   1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       64   1602
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0      851   1567
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1      486   1567
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      128   1567
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      102   1567
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                       0      110    175
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                       1       63    175
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    175
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                       1        1    175
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0      135    426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1      155    426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0       52    426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1       84    426
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                       0       26    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                       1       69    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                       0        6    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                       1       10    111
6-24 months                  ki1114097-CMIN             PERU                           0                       0      383    567
6-24 months                  ki1114097-CMIN             PERU                           0                       1      153    567
6-24 months                  ki1114097-CMIN             PERU                           1                       0       20    567
6-24 months                  ki1114097-CMIN             PERU                           1                       1       11    567
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
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/9a3f4a08-fb74-4c9f-bb4a-0cd2b4965fa3/e6f58c10-3269-4804-a563-a84397ca9893/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9a3f4a08-fb74-4c9f-bb4a-0cd2b4965fa3/e6f58c10-3269-4804-a563-a84397ca9893/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9a3f4a08-fb74-4c9f-bb4a-0cd2b4965fa3/e6f58c10-3269-4804-a563-a84397ca9893/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9a3f4a08-fb74-4c9f-bb4a-0cd2b4965fa3/e6f58c10-3269-4804-a563-a84397ca9893/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5480873   0.4726903   0.6234844
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4223343   0.2779883   0.5666803
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5719006   0.4902713   0.6535300
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3916405   0.2679690   0.5153121
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2537807   0.1893896   0.3181717
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2718096   0.1192774   0.4243419
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.5064620   0.4443719   0.5685521
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3474947   0.1745993   0.5203902
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8613139   0.8033406   0.9192871
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9487179   0.9140459   0.9833900
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.6649533   0.5867053   0.7432012
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.5446599   0.4787929   0.6105269
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                0.8587571   0.8073463   0.9101678
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    NA                0.8888889   0.8161514   0.9616264
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5590551   0.4724899   0.6456203
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.4533333   0.3403888   0.5662779
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3538045   0.3106869   0.3969220
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4406488   0.3630104   0.5182872
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2911319   0.2707718   0.3114921
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3454489   0.2930047   0.3978930
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                0.4859073   0.4632736   0.5085409
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                0.5918209   0.5415460   0.6420959
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6141936   0.5645246   0.6638626
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6741184   0.6032359   0.7450009
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7664234   0.6953620   0.8374847
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7096774   0.5494139   0.8699409
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                0.3094463   0.2728543   0.3460382
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    NA                0.5227273   0.3750299   0.6704247
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2261905   0.1627815   0.2895994
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1632653   0.0595378   0.2669928
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2229535   0.1548959   0.2910112
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1922147   0.0963911   0.2880383
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3861516   0.3044035   0.4678998
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4014061   0.3244903   0.4783219
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.4062159   0.3236199   0.4888118
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3058705   0.2449348   0.3668061
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.6024490   0.5295816   0.6753164
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.5993120   0.4833967   0.7152273
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4960630   0.4088903   0.5832357
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3333333   0.2263813   0.4402853
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1443341   0.1126461   0.1760221
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2058905   0.1412238   0.2705573
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1357212   0.1203798   0.1510626
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1444298   0.1055067   0.1833530
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                0.2248108   0.2058769   0.2437447
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                0.3212793   0.2734200   0.3691386
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1974449   0.1568665   0.2380233
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1628588   0.1059067   0.2198109
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.2627737   0.1888514   0.3366960
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.3870968   0.2151202   0.5590734
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                0.0602606   0.0414235   0.0790977
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    NA                0.2727273   0.1410336   0.4044210
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4496235   0.3609922   0.5382548
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3376385   0.1861949   0.4890821
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                0.4734921   0.3760412   0.5709429
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    NA                0.2660257   0.1405516   0.3914997
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2012195   0.1397030   0.2627360
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2580645   0.1036348   0.4124942
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3714286   0.2911372   0.4517200
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3157895   0.1061201   0.5254589
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7790698   0.6911437   0.8669958
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9157895   0.8597918   0.9717872
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.4326949   0.3238257   0.5415640
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3485360   0.2723388   0.4247332
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                0.6617647   0.5487317   0.7747977
6-24 months                  ki1000109-EE               PAKISTAN                       1                    NA                0.7241379   0.5606235   0.8876523
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    NA                0.1600000   0.0578448   0.2621552
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    NA                0.2000000   0.0825103   0.3174897
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2855885   0.2381245   0.3330524
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3444124   0.2527973   0.4360274
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2182147   0.1962943   0.2401351
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2715632   0.2147839   0.3283425
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                0.3649276   0.3391753   0.3906800
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                0.4434750   0.3785410   0.5084090
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5342797   0.4765513   0.5920080
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6236588   0.5416755   0.7056421
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    NA                0.7263158   0.6362543   0.8163773
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    NA                0.6250000   0.3867083   0.8632917
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                0.2854478   0.2471803   0.3237152
6-24 months                  ki1114097-CMIN             PERU                           1                    NA                0.3548387   0.1862610   0.5234164


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5207373   0.4541154   0.5873593
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5167464   0.4488350   0.5846578
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2594340   0.2002911   0.3185768
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4892857   0.4306292   0.5479422
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9078498   0.8746748   0.9410249
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       NA                   NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5198020   0.4507336   0.5888704
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2988814   0.2798990   0.3178639
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5044763   0.4837388   0.5252138
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6336449   0.5927799   0.6745099
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           NA                   NA                0.3237082   0.2879308   0.3594857
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2119816   0.1574763   0.2664868
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4356436   0.3670959   0.5041912
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1369128   0.1226581   0.1511674
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2412713   0.2235253   0.2590172
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1869159   0.1538509   0.2199809
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           NA                   NA                0.0744681   0.0543935   0.0945427
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3647799   0.2897219   0.4398379
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8508287   0.7987841   0.9028733
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months                  ki1000109-EE               PAKISTAN                       NA                   NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1789474   0.1014597   0.2564350
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2259675   0.2054816   0.2464534
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3752393   0.3512585   0.3992201
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135
6-24 months                  ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7117117   0.6270636   0.7963598
6-24 months                  ki1114097-CMIN             PERU                           NA                   NA                0.2892416   0.2518881   0.3265951


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7705602   0.5340566   1.1117980
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0                 0.6848052   0.4836439   0.9696353
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.0710416   0.5778549   1.9851524
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.6861220   0.4110592   1.1452447
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1014776   1.0202655   1.1891541
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 0.8190950   0.6924394   0.9689174
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0                 1.0350877   0.9352845   1.1455409
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0                 0.8108920   0.6047382   1.0873233
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2454587   1.0051481   1.5432226
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1865715   1.0039108   1.4024671
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0                 1.2179710   1.1058104   1.3415078
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0975667   0.9614379   1.2529698
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    0                 0.9259601   0.7253921   1.1819842
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    0                 1.6892344   1.2435591   2.2946340
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7218045   0.3604397   1.4454618
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.8621289   0.4799914   1.5484992
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0395038   0.7802563   1.3848885
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 0.7529752   0.5664147   1.0009833
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 0.9947929   0.7918706   1.2497154
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    0                 0.6719577   0.4660852   0.9687651
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4264861   0.9717991   2.0939129
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0641659   0.7944691   1.4254163
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0                 1.4291099   1.2045609   1.6955184
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8248316   0.5498833   1.2372572
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    0                 1.4731183   0.8706918   2.4923601
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    0                 4.5257985   2.5461126   8.0447552
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7509361   0.4583173   1.2303811
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0                 0.5618377   0.3353092   0.9414044
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0                 1.2825024   0.6549659   2.5112951
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8502024   0.4229346   1.7091157
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1754910   1.0338870   1.3364894
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 0.8055007   0.5769499   1.1245887
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0                 1.0942529   0.8244339   1.4523776
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    0                 1.2500000   0.5249448   2.9765036
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2059744   0.8806966   1.6513906
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2444773   0.9868042   1.5694336
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0                 1.2152409   1.0332107   1.4293411
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1672890   0.9847205   1.3837060
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    0                 0.8605072   0.5762828   1.2849121
6-24 months                  ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             PERU                           1                    0                 1.2430951   0.7587893   2.0365144


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0273500   -0.0639276    0.0092276
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0551542   -0.1019799   -0.0083285
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0056533   -0.0217135    0.0330201
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0171763   -0.0373719    0.0030193
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0465360    0.0102244    0.0828475
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0732866   -0.1363581   -0.0102151
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0087128   -0.0170990    0.0345246
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0392531   -0.0925580    0.0140518
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0215899   -0.0008444    0.0440241
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0077495   -0.0002914    0.0157904
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0185690    0.0094328    0.0277053
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0194513   -0.0073569    0.0462594
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0104710   -0.0429919    0.0220500
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0142620    0.0033017    0.0252222
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0142089   -0.0418843    0.0134665
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0124272   -0.0488562    0.0240018
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0025900   -0.0633365    0.0581565
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.0617714   -0.1253859    0.0018431
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0000394   -0.0396309    0.0395522
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0604194   -0.1127891   -0.0080498
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0149719   -0.0029832    0.0329271
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0011916   -0.0047380    0.0071212
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0164605    0.0078613    0.0250596
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0105290   -0.0319628    0.0109048
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0229406   -0.0123666    0.0582477
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.0142075    0.0044296    0.0239854
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0282398   -0.0716583    0.0151786
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0605888   -0.1154441   -0.0057336
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0090369   -0.0175510    0.0356248
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0066487   -0.0336250    0.0203276
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0717590    0.0161437    0.1273742
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                -0.0555762   -0.1432731    0.0321207
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0186477   -0.0410552    0.0783506
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0189474   -0.0549112    0.0928059
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0141927   -0.0099530    0.0383384
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0077528   -0.0012660    0.0167717
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0103117    0.0000782    0.0205451
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0267532   -0.0054908    0.0589972
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0146041   -0.0519211    0.0227130
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                 0.0037939   -0.0057463    0.0133341


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0525216   -0.1256378    0.0158452
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1067336   -0.2026690   -0.0184509
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0217909   -0.0895517    0.1217552
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0351049   -0.0774249    0.0055529
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0512595    0.0096051    0.0911621
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.1238646   -0.2370644   -0.0210235
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0100439   -0.0202124    0.0394030
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0755156   -0.1838274    0.0228865
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0575125   -0.0042382    0.1154661
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0259283   -0.0013439    0.0524578
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0368085    0.0184675    0.0548068
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0306974   -0.0126696    0.0722073
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0138514   -0.0578881    0.0283523
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0440581    0.0096237    0.0772952
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0670290   -0.2053590    0.0554259
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0590293   -0.2467612    0.1004348
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0067525   -0.1782896    0.1398119
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.1793364   -0.3796253   -0.0081246
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0000653   -0.0679948    0.0635435
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1386901   -0.2671363   -0.0232641
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0939822   -0.0250167    0.1991659
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0087032   -0.0355595    0.0510740
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0682239    0.0320447    0.1030509
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0563302   -0.1772033    0.0521318
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0802920   -0.0515156    0.1955775
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.1907864    0.0588445    0.3042312
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0670169   -0.1759078    0.0317905
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1467386   -0.2892096   -0.0200121
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0429804   -0.0919047    0.1612028
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0182266   -0.0949479    0.0531189
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0843401    0.0145466    0.1491905
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                -0.1473706   -0.4058219    0.0635660
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0274064   -0.0646948    0.1115404
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1058824   -0.4161708    0.4354873
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0473436   -0.0366510    0.1245326
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0343095   -0.0063853    0.0733588
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0274802   -0.0001745    0.0543703
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0476856   -0.0117983    0.1036725
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0205197   -0.0745638    0.0308064
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                 0.0131166   -0.0204154    0.0455467

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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        exclfeed36    ever_stunted   n_cell      n
---------------------------  -------------------------  -----------------------------  -----------  -------------  -------  -----
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       12    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        1       17    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        0       85    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        1       95    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        0       11    195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        1        1    195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        0      153    195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        1       30    195
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        0        4    201
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        1        5    201
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        0       88    201
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        1      104    201
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        0        4    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        1        1    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        0      150    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        1       53    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        0        4    251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        1        4    251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        0       97    251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        1      146    251
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        3    244
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0    244
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      108    244
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1      133    244
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2    210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1    210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       32    210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      175    210
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        1      6
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        5      6
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0      6
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0      6
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                        0        0      3
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                        1        0      3
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                        0        1      3
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                        1        2      3
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        0        0      6
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        1        2      6
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        0        2      6
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        1        2      6
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       25     95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       70     95
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                        0       86    576
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                        1       64    576
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                        0      253    576
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                        1      173    576
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                        0      285   1798
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                        1      286   1798
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                        0      544   1798
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                        1      683   1798
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        0      132    443
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        1      225    443
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        0       22    443
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        1       64    443
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        0       18    175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        1       12    175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        0       83    175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        1       62    175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     4970   8764
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1     1853   8764
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1441   8764
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      500   8764
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1495   3285
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1     1083   3285
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      396   3285
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1      311   3285
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       21    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        1        8    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        0      143    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        1       37    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        0       12    195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        1        0    195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        0      163    195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        1       20    195
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        0        9    201
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        1        0    201
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        0      147    201
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        1       45    201
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        0        5    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        1        0    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        0      190    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        1       13    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        0        6    251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        1        2    251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        0      154    251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        1       89    251
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        3    244
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0    244
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      167    244
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       74    244
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2    210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1    210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      144    210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1       63    210
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        4      6
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        2      6
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0      6
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0      6
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                        0        0      3
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                        1        0      3
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                        0        3      3
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                        1        0      3
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        0        0      6
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        1        2      6
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        0        3      6
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        1        1      6
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       95     95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0     95
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                        0      123    576
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                        1       27    576
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                        0      353    576
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                        1       73    576
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                        0      431   1798
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                        1      140   1798
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                        0      890   1798
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                        1      337   1798
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        0      294    443
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        1       63    443
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        0       60    443
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        1       26    443
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        0       30    175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        1        0    175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        0      145    175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        1        0    175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0     5874   8761
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1      947   8761
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1693   8761
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1      247   8761
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     2338   3257
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1      229   3257
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      618   3257
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1       72   3257
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        0       11    158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        1        9    158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        0       80    158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        1       58    158
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        0        8    163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        1        1    163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        0      144    163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        1       10    163
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        0        3    153
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        1        5    153
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        0       86    153
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        1       59    153
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        0        3    193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        1        1    193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        0      149    193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        1       40    193
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        0        2    149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        1        2    149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        0       88    149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        1       57    149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        1    157
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0    157
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0       97    157
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       59    157
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2    143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0    143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       29    143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      112    143
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        1      4
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        3      4
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0      4
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0      4
6-24 months                  ki1000108-IRC              INDIA                          1                        0        0      3
6-24 months                  ki1000108-IRC              INDIA                          1                        1        0      3
6-24 months                  ki1000108-IRC              INDIA                          0                        0        1      3
6-24 months                  ki1000108-IRC              INDIA                          0                        1        2      3
6-24 months                  ki1000109-EE               PAKISTAN                       1                        0        0      3
6-24 months                  ki1000109-EE               PAKISTAN                       1                        1        0      3
6-24 months                  ki1000109-EE               PAKISTAN                       0                        0        2      3
6-24 months                  ki1000109-EE               PAKISTAN                       0                        1        1      3
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       20     91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       71     91
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                        0       78    455
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                        1       37    455
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                        0      240    455
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                        1      100    455
6-24 months                  ki1101329-Keneba           GAMBIA                         1                        0      253   1269
6-24 months                  ki1101329-Keneba           GAMBIA                         1                        1      146   1269
6-24 months                  ki1101329-Keneba           GAMBIA                         0                        0      524   1269
6-24 months                  ki1101329-Keneba           GAMBIA                         0                        1      346   1269
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        0      131    353
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        1      162    353
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        0       22    353
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        1       38    353
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        0       16    162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        1       12    162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        0       72    162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        1       62    162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        0     3216   5370
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        1      914   5370
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        0      986   5370
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        1      254   5370
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1490   2982
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        1      856   2982
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        0      393   2982
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        1      243   2982


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
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

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
![](/tmp/8a08281f-7266-430b-94a7-ba2bfd33b9d4/f6391fbd-066d-425e-b512-2b3a08ccb567/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8a08281f-7266-430b-94a7-ba2bfd33b9d4/f6391fbd-066d-425e-b512-2b3a08ccb567/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8a08281f-7266-430b-94a7-ba2bfd33b9d4/f6391fbd-066d-425e-b512-2b3a08ccb567/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8a08281f-7266-430b-94a7-ba2bfd33b9d4/f6391fbd-066d-425e-b512-2b3a08ccb567/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5862069   0.4065236   0.7658902
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.5277778   0.4546719   0.6008836
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.4266667   0.3474480   0.5058854
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.4061033   0.3594272   0.4527794
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    NA                0.5008757   0.4598533   0.5418980
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    NA                0.5566422   0.5288379   0.5844465
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6302521   0.5801201   0.6803841
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7441860   0.6518668   0.8365053
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.4000000   0.2241925   0.5758075
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4275862   0.3468301   0.5083423
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2715814   0.2590190   0.2841438
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2575992   0.2368836   0.2783148
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4200931   0.3974666   0.4427196
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4398868   0.3985570   0.4812167
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2758621   0.1128022   0.4389220
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2055556   0.1463790   0.2647321
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1800000   0.1184649   0.2415351
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1713615   0.1355469   0.2071761
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    NA                0.2451839   0.2098885   0.2804792
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    NA                0.2746536   0.2496725   0.2996348
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1764706   0.1368811   0.2160601
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3023256   0.2051508   0.3995003
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1388359   0.1295002   0.1481717
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1273196   0.1120194   0.1426197
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0892092   0.0753189   0.1030995
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1043478   0.0803043   0.1283913
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4500000   0.2312745   0.6687255
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4202899   0.3376733   0.5029064
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3217391   0.2362665   0.4072118
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2941176   0.2456320   0.3426033
6-24 months                  ki1101329-Keneba      GAMBIA       1                    NA                0.3659148   0.3186327   0.4131969
6-24 months                  ki1101329-Keneba      GAMBIA       0                    NA                0.3977011   0.3651667   0.4302356
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5529010   0.4958904   0.6099117
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6333333   0.5112264   0.7554403
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4285714   0.2447034   0.6124395
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4626866   0.3780033   0.5473698
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2213075   0.2067390   0.2358760
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2048387   0.1759567   0.2337207
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3648764   0.3423705   0.3873823
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3820755   0.3369965   0.4271545


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.5358852   0.4681109   0.6036595
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.4114583   0.3712361   0.4516805
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       NA                   NA                0.5389321   0.5158847   0.5619796
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6523702   0.6079743   0.6967661
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2684847   0.2575491   0.2794203
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4243531   0.4041458   0.4445604
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2153110   0.1594513   0.2711707
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1736111   0.1426515   0.2045707
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       NA                   NA                0.2652948   0.2448823   0.2857072
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2009029   0.1635496   0.2382563
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1362858   0.1283472   0.1442245
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0924163   0.0803439   0.1044888
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.3010989   0.2589018   0.3432960
6-24 months                  ki1101329-Keneba      GAMBIA       NA                   NA                0.3877069   0.3608893   0.4145245
6-24 months                  ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5665722   0.5148041   0.6183404
6-24 months                  ki1148112-LCNI-5      MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2175047   0.2040809   0.2309284
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3685446   0.3480535   0.3890357


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9003268   0.6431605   1.260320
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9518046   0.7650909   1.184084
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    1                 1.1113381   1.0096801   1.223232
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1807752   1.0189841   1.368255
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    1                 1.0689655   0.6625309   1.724730
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9485155   0.8654984   1.039495
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0471175   0.9415644   1.164504
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7451389   0.3861012   1.438048
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9520083   0.6377117   1.421206
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    1                 1.1201944   0.9448028   1.328145
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.7131783   1.1576337   2.535327
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9170506   0.7977268   1.054223
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1696981   0.8856843   1.544787
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9339775   0.5528860   1.577746
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9141494   0.6687055   1.249682
6-24 months                  ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba      GAMBIA       0                    1                 1.0868682   0.9327346   1.266472
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1454733   0.9205136   1.425410
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    1                 1.0796020   0.6771639   1.721209
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9255841   0.7956054   1.076798
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0471367   0.9186481   1.193597


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0503217   -0.2174135   0.1167701
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0152083   -0.0832148   0.0527982
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0380565    0.0042162   0.0718968
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0221181    0.0012959   0.0429403
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0228571   -0.1374523   0.1831666
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0030967   -0.0083942   0.0022008
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0042600   -0.0056561   0.0141762
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0605511   -0.2099840   0.0888819
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0063889   -0.0590472   0.0462694
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0201109   -0.0094049   0.0496267
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0244323    0.0035403   0.0453244
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0025501   -0.0065725   0.0014722
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0032071   -0.0026679   0.0090822
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0259494   -0.2301676   0.1782688
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0206402   -0.0940789   0.0527985
6-24 months                  ki1101329-Keneba      GAMBIA       1                    NA                 0.0217921   -0.0175646   0.0611487
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0136712   -0.0094506   0.0367930
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0282187   -0.1392369   0.1956743
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0038029   -0.0110310   0.0034253
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0036682   -0.0068772   0.0142136


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0939039   -0.4551473   0.1776600
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0369620   -0.2161653   0.1158354
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0706146    0.0055624   0.1314114
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0339042    0.0012277   0.0655116
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0540541   -0.4123446   0.3664338
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0115340   -0.0314223   0.0079708
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0100389   -0.0136183   0.0331439
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2812261   -1.2003633   0.2539685
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0368000   -0.3890865   0.2261431
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0758058   -0.0423672   0.1805816
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1216127    0.0127700   0.2184554
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0187117   -0.0485381   0.0102663
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0347032   -0.0316111   0.0967546
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0611940   -0.6707647   0.3259776
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0685497   -0.3425136   0.1495070
6-24 months                  ki1101329-Keneba      GAMBIA       1                    NA                 0.0562076   -0.0509801   0.1524634
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0241297   -0.0176419   0.0641867
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0617761   -0.3868765   0.3652901
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0174840   -0.0513986   0.0153366
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0099532   -0.0190509   0.0381319

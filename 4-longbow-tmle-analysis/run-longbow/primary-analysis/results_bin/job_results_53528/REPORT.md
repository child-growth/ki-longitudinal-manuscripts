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

* arm
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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




# Results Detail

## Results Plots
![](/tmp/cf4be4a9-baaa-459c-93ea-89786db30cb7/5a89662f-6c9a-454d-893e-c616b3cdf827/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cf4be4a9-baaa-459c-93ea-89786db30cb7/5a89662f-6c9a-454d-893e-c616b3cdf827/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cf4be4a9-baaa-459c-93ea-89786db30cb7/5a89662f-6c9a-454d-893e-c616b3cdf827/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cf4be4a9-baaa-459c-93ea-89786db30cb7/5a89662f-6c9a-454d-893e-c616b3cdf827/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5531761   0.3755710   0.7307813
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.5322413   0.4593323   0.6051503
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.4060913   0.3309948   0.4811877
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.4174482   0.3716381   0.4632582
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    NA                0.5018835   0.4624099   0.5413571
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    NA                0.5562130   0.5289157   0.5835102
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6308341   0.5810554   0.6806129
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7386518   0.6503219   0.8269816
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.3937346   0.2128178   0.5746514
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4282597   0.3474391   0.5090804
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2715200   0.2592212   0.2838189
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2580083   0.2382821   0.2777345
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4173753   0.3948752   0.4398755
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4527493   0.4114265   0.4940721
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2758621   0.1128022   0.4389220
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2055556   0.1463790   0.2647321
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1790458   0.1176119   0.2404798
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1741088   0.1383657   0.2098520
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    NA                0.2411470   0.2065253   0.2757688
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    NA                0.2768911   0.2522725   0.3015097
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1791661   0.1395878   0.2187444
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3121221   0.2132623   0.4109818
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1376558   0.1285075   0.1468041
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1310345   0.1167711   0.1452979
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0874480   0.0737199   0.1011762
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1121602   0.0873423   0.1369782
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4500000   0.2312745   0.6687255
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4202899   0.3376733   0.5029064
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3015826   0.2188497   0.3843155
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.3026157   0.2543565   0.3508749
6-24 months                  ki1101329-Keneba      GAMBIA       1                    NA                0.3684331   0.3223268   0.4145394
6-24 months                  ki1101329-Keneba      GAMBIA       0                    NA                0.3964806   0.3642792   0.4286820
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5555694   0.4986631   0.6124756
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6323171   0.5143270   0.7503073
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4462272   0.2536278   0.6388266
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4635344   0.3787413   0.5483275
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2205704   0.2062195   0.2349214
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2072298   0.1792498   0.2352098
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3635109   0.3410603   0.3859615
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3929316   0.3475327   0.4383305


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
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9621552   0.6812490   1.358890
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.0279663   0.8347308   1.265935
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    1                 1.1082512   1.0127292   1.212783
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1709128   1.0179197   1.346901
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    1                 1.0876863   0.6615716   1.788259
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9502367   0.8729616   1.034352
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0847534   0.9790247   1.201900
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7451389   0.3861012   1.438048
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9724259   0.6525703   1.449058
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    1                 1.1482251   0.9727874   1.355302
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.7420820   1.1852083   2.560605
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9518993   0.8403885   1.078207
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2825930   0.9805768   1.677630
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9339775   0.5528860   1.577746
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.0034255   0.7343509   1.371092
6-24 months                  ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba      GAMBIA       0                    1                 1.0761266   0.9292967   1.246156
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1381426   0.9227036   1.403884
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    1                 1.0387856   0.6493748   1.661714
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9395175   0.8146286   1.083553
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0809348   0.9510516   1.228556


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0172910   -0.1816334   0.1470515
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0053671   -0.0579293   0.0686634
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0370486    0.0051252   0.0689721
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0215361    0.0020769   0.0409952
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0291226   -0.1358707   0.1941158
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0030353   -0.0079580   0.0018874
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0069778   -0.0027798   0.0167354
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0605511   -0.2099840   0.0888819
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0054347   -0.0579877   0.0471183
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0241477   -0.0043167   0.0526122
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0217368    0.0007971   0.0426766
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0013700   -0.0050378   0.0022979
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0049683   -0.0006923   0.0106289
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0259494   -0.2301676   0.1782688
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0004837   -0.0708786   0.0699111
6-24 months                  ki1101329-Keneba      GAMBIA       1                    NA                 0.0192738   -0.0187024   0.0572500
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0110029   -0.0107715   0.0327772
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0105629   -0.1651495   0.1862754
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0030658   -0.0099117   0.0037801
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0050337   -0.0054209   0.0154883


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0322662   -0.3894139   0.2330770
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0130440   -0.1534375   0.1554964
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0687445    0.0074910   0.1262178
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0330120    0.0024605   0.0626278
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0688709   -0.4161613   0.3877806
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0113054   -0.0297811   0.0068388
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0164434   -0.0068407   0.0391889
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2812261   -1.2003633   0.2539685
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0313041   -0.3830641   0.2309915
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0910222   -0.0229263   0.1922775
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1081956   -0.0006753   0.2052217
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0100523   -0.0372589   0.0164407
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0537600   -0.0105249   0.1139553
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0611940   -0.6707647   0.3259776
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0016066   -0.2649333   0.2069023
6-24 months                  ki1101329-Keneba      GAMBIA       1                    NA                 0.0497123   -0.0534651   0.1427843
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0194201   -0.0198862   0.0572114
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0231242   -0.4483746   0.3411330
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0140952   -0.0461787   0.0170044
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0136583   -0.0150855   0.0415881
